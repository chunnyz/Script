repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded')

local ok, newConfig = pcall(function()
    return loadstring(game:HttpGet("https://raw.csfam.xyz/scripts/configs/trade_config.lua"))()
end)

if ok and newConfig and type(newConfig.Main) == "table" then
    getgenv().MasterConfig = newConfig
    print("Config loaded successfully")
else
    print("Failed to load config or structure is incorrect")
    getgenv().MasterConfig = {
        ["Main"] = { 
            ["Default"] = {}
        }
    }
end

print('---------------- Executed ----------------')
-- trade_master_gag.lua
local player = game:GetService("Players")
local repicatestorage = game:GetService("ReplicatedStorage")
local dataservices = require(repicatestorage.Modules.DataService)
local httpservices = game:GetService("HttpService")
local username, target, last_target, toolequip, is_master, now_target_tradeing, teleport_ready
local webhook = 'https://discord.com/api/webhooks/1401234156368695398/DgufLJwB71CJHX0i6qiSiudfRsEMchqDlAqw9qLZpCPoMY7Dj3SArmqC5XHTKYb1-9ab'
local flexy = loadstring(game:HttpGet("https://raw.csfam.xyz/scripts/ui/flexy.lua"))()
local storage = {}

-- va
_G.is_tradeing = false
_G.is_executed = false
_G.is_active = false
_G.is_exit = false

local pos = {
    [1] = CFrame.new(142.350784, 2.99999976, -209.891357, -0.918801844, 2.80838641e-09, -0.394719094, 6.63504363e-09, 1, -8.32973068e-09, 0.394719094, -1.0272351e-08, -0.918801844),
    [2] = CFrame.new(-349.2341, 2.99999976, -207.525055, -0.993183851, 7.72061099e-08, 0.116558447, 8.1026073e-08, 1, 2.80346644e-08, -0.116558447, 3.72878475e-08, -0.993183851),
    [3] = CFrame.new(-348.235107, 2.99999976, 181.806229, 0.594302237, -1.44144474e-08, -0.804241776, 1.57756652e-08, 1, -6.26544772e-09, 0.804241776, -8.96387853e-09, 0.594302237),
    [4] = CFrame.new(141.202896, 2.99999976, 182.997772, -0.148947701, -2.43860523e-08, -0.98884505, -9.4704717e-08, 1, -1.03959676e-08, 0.98884505, 9.20998389e-08, -0.148947701),
}

local function interact(path)
    game:GetService("GuiService").SelectedObject = path
    task.wait()
    if game:GetService("GuiService").SelectedObject == path then
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return, false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Return, false, game)
        task.wait()
    end
    game:GetService("GuiService").SelectedObject = nil
end

function allpet(petName)
    local cnt = 0
    local PetsData = dataservices:GetData().PetsData
    local inventory = PetsData.PetInventory
    if inventory and inventory.Data then
        for _, petInfo in pairs(inventory.Data) do
            if petInfo.PetType == petName then
                cnt = cnt + 1
            end
        end
    end
    return petName, cnt
end

function cntpet()
    local cnt = {}
    local PetsData = dataservices:GetData().PetsData
    local inventory = PetsData.PetInventory
    if inventory and inventory.Data then
        for _, petInfo in pairs(inventory.Data) do
            if petInfo then
                table.insert(cnt, tostring(petInfo.PetType))
            end
        end
    end
    return #cnt
end

local function find_next_target()
    if not getgenv().MasterConfig or not getgenv().MasterConfig.Main then
        warn("MasterConfig or Main is not defined in getgenv()")
        return nil, nil
    end
    for petType, userList in pairs(getgenv().MasterConfig.Main) do
        local hasPet = false
        local data = dataservices:GetData().PetsData
        local inventory = data.PetInventory
        if inventory and inventory.Data then
            for _, petInfo in pairs(inventory.Data) do
                if petInfo.PetType == petType then
                    hasPet = true
                    break
                end
            end
        end
        if hasPet then
            for _, username in pairs(userList) do
                local api = request({
                    Url = "https://trade.csfam.xyz/get/"..tostring(username),
                    Method = "GET",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },  
                })
                local result = httpservices:JSONDecode(api.Body)
                if result and result.Username then
                    local _timeout = (os.time() - result.LastCall) > 10 or false
                    if result.PetCount < 60 and not _timeout and (result.Playing < 5 or (result.Playing >= 5 and game.Players:FindFirstChild(result.Username))) then
                        -- print("select target: ", result.Username, " pet count: ", result.PetCount, " playing: ", result.Playing, " type: ", petType)
                        return {result.Username}, petType
                    else
                        -- print("Skipping target: ", result.Username, " due to pet count or timeout")
                        task.wait(1)
                    end
                end
            end
        end
    end
    return nil, nil
end

local function embed(color, title, description)
    local embed = {{
		title = title,
		description = description,
		color = color, -- สีเขียวสวย
		timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
		footer = {
			text = "Grow a Garden Pet Trader System!"
		}
	}}

	local payload = {
		embeds = embed
	}
	local jsonData = httpservices:JSONEncode(payload)

	local response = request({
		Url = webhook,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Content-Length"] = tostring(#jsonData)
		},
		Body = jsonData
	})

    print("Status Code:", response.StatusCode)
    print("Response Body:", response.Body)
end
if getgenv().MasterConfig and type(getgenv().MasterConfig.Main) == "table" then
    for i, v in pairs(getgenv().MasterConfig.Main) do
        for _, id in ipairs(v) do
            if player.LocalPlayer.Name == id then
                table.insert(storage, id)
                break
            end
        end
    end
end

task.spawn(function()
    while true do task.wait()
        if (not username or not target) and (table.find(storage, player.LocalPlayer.Name) or false) then
            for i, v in pairs(getgenv().MasterConfig.Main) do
                for _, id in ipairs(v) do
                    if player.LocalPlayer.Name == id then
                        username = id 
                        target = i 
                        is_master = true
                        print(string.format("[MASTER-1] Username: %s, Target: %s", username, target))
                        break
                    end
                end
            end
        elseif (username and target) and (table.find(storage, player.LocalPlayer.Name) or false) then -- check if main player and username and target
            while true do task.wait(1)
                local player_server = #player:GetPlayers()
                local name, petCount = allpet(target)
                local counter = cntpet()
                local api = request({
                    Url = "https://trade.csfam.xyz/submit",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },  
                    Body = httpservices:JSONEncode({
                        ['Username'] = username,
                        ['Target'] = target,
                        ['JobId'] = game.JobId,
                        ['Playing'] = player_server,
                        ['PetCount'] = counter,
                        ['RealCount'] = petCount,
                        ['LastCall'] = os.time()
                    })
                })
                _G.is_active = true
                _G.is_tradeing = true
                flexy:refresh(
                    tostring(username),
                    string.format("%s x %d", name, petCount)
                )
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos[math.random(1, 4)]
                if game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification") then
                    interact(game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification").Holder.Frame.Accept)
                end
                print("Send Data!")
            end
        else
            local target_users, target_info = find_next_target() 
            local first_target_user = nil

            if target_users and target_info then -- if has last_target
                for _, username in ipairs(target_users) do
                    if username then
                        first_target_user = username
                        print("Checking:", target_info, "With:", first_target_user)
                        break
                    end
                end
                if first_target_user then
                    local api = request({
                        Url = "https://trade.csfam.xyz/get/"..tostring(first_target_user),
                        Method = "GET",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },  
                    })

                    local result = httpservices:JSONDecode(api.Body)
                    local _timeout = (os.time() - result.LastCall) > 10 or false

                    if result.JobId == game.JobId and not _timeout and game.Players:FindFirstChild(first_target_user) then -- check if player is in server (trade)
                        if not now_target_tradeing then now_target_tradeing = target_info end
                        _G.is_tradeing = true
                        _G.is_active = true 
                        print(first_target_user, "Stay same server, continue trade...")
                        for _, v in pairs(workspace.PetsPhysical:GetChildren()) do -- start move up pet
                            if v then
                                local owner = v:GetAttribute('OWNER') 
                                local uuid = v:GetAttribute("UUID")
                                if owner == player.LocalPlayer.Name then
                                    local scrollingFrame = game:GetService("Players").LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.PetDisplay.ScrollingFrame
                                    local petFrame = scrollingFrame:FindFirstChild(tostring(uuid))
                                    if petFrame and petFrame.Main:FindFirstChild("PET_TYPE") then
                                        local type_ = petFrame.Main.PET_TYPE
                                        if string.find(type_.Text, tostring(target_info)) then
                                            print(string.format('Keep Up -> pet: %s, uuid: %s', type_.Text, uuid))
                                            local args = {
                                                "UnequipPet",
                                                tostring(uuid)
                                            }
                                            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer(unpack(args))
                                        end
                                    end  
                                end
                            end
                        end -- end move up pet
                        task.wait(2.5)
                        for _, tool in pairs(player.LocalPlayer.Backpack:GetChildren()) do -- start check pet in backpack
                            if tool:GetAttribute("ItemType") == "Pet" then
                                local namepet = tool.Name:gsub("%s%[.*", "")
                                if string.find(namepet, tostring(target_info)) then
                                    if tool:GetAttribute("d") == true then
                                        local args = {
                                            tool
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Favorite_Item"):FireServer(unpack(args))
                                    end
                                    toolequip = tool.Name
                                end
                            end
                        end --- end check pet in backpack
                        for _, tool in pairs(player.LocalPlayer.Character:GetChildren()) do -- start check pet in character
                            if tool:GetAttribute("ItemType") == "Pet" then
                                local namepet = tool.Name:gsub("%s%[.*", "")
                                if string.find(namepet, tostring(target_info)) then
                                    if tool:GetAttribute("d") == true then
                                        local args = {
                                            tool
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Favorite_Item"):FireServer(unpack(args))
                                    end
                                    toolequip = tool.Name
                                end
                            end
                        end -- end check pet in character
                        print(toolequip)
                        if toolequip then
                            local chr = player.LocalPlayer.Character
                            local bp = player.LocalPlayer.Backpack
                            local tool
                            if bp:FindFirstChild(toolequip) then
                                tool = bp:FindFirstChild(toolequip)
                            elseif chr:FindFirstChild(toolequip) then
                                tool = chr:FindFirstChild(toolequip)
                            end 

                            if tool then
                                embed(0x1abc9c, "Trade Gag", 
                                string.format(
                                    "ผู้เล่น: %s\nรายละเอียด: %s",
                                    player.LocalPlayer.Name, tostring(tool)
                                    )
                                )

                                print("Equipping:", tool)
                                chr.Humanoid:EquipTool(tool)
                                
                                local args = {
                                    "GivePet",
                                    game:GetService("Players"):WaitForChild(first_target_user)
                                }
                                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetGiftingService"):FireServer(unpack(args))
                                task.wait(2)
                                print("Send Trade Request To: ", first_target_user)
                            else
                                warn("Tool not found in Backpack or Character!")
                            end       
                        end  
                    elseif not _timeout and not game.Players:FindFirstChild(first_target_user) and result.Playing < 5 then -- teleporting 
                        print("Teleporting:", first_target_user, "/ Target:", target_info)
                        local success, error = pcall(function()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, result.JobId, game.Players.LocalPlayer)
                        end)
                        _G.is_active = true -- set active
                        _G.is_tradeing = true -- set trading 
                        task.wait(15)
                    elseif _timeout or (not target_info) or ((target_info ~= now_target_tradeing) and game.Players:FindFirstChild(first_target_user)) then
                        print("timeout or target not match: ", first_target_user, " pet: ", y)
                        game:Shutdown()
                    else
                        print('timeout: ', _timeout, " or not found player: ", first_target_user) -- not found player or timeout
                        _G.is_active = false -- set active to false
                    end
                elseif not last_target and not _G.is_active then
                    print("not found target, continue farming...")
                    _G.is_active = false -- set active to false
                else
                    if y ~= name_trade then ame:Shutdown() end
                    print("time out or max pet count reached, continue farming...")
                    _G.is_active = false
                end
            elseif target_info ~= now_target_tradeing then
                print("trade success!")
                if not _G.is_exit then
                    embed(0xFF0000, "Trade Gag", 
                    string.format(
                        "ผู้เล่น: %s\nรายละเอียด: %s",
                        player.LocalPlayer.Name, "เทรดเสร็จสิ้น!"
                        )
                    )
                end
                _G.is_active = true
                _G.is_exit = true
                task.wait(5)
                game:Shutdown()
            else
                if first_target_user and game.Players:FindFirstChild(first_target_user) then
                    game:Shutdown()
                end
                _G.is_active = false
                print("not pet in target! - continue farm...")
                task.wait(10)
            end  -- end check target end      
            if not _G.is_active and not _G.is_executed then -- execute grow a garden script
                print("Scripts is executed!")
                local players = game:GetService("Players"):GetPlayers()
                for i,username in pairs(getgenv().MasterConfig.Main) do 
                    for _, userList in pairs(username) do
                        if userList and game.Players:FindFirstChild(userList) then
                            game:Shutdown()
                        end
                    end
                end
                for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    local itemName = v:GetAttribute("f")
                    if itemName and (string.find(itemName, "Honeysuckle") or string.find(itemName, "Candy Blossom") or string.find(itemName, "Bone Blossom")) then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.5865707, 2.99999976, 0.426788121, -0.00248292927, 2.20207159e-08, -0.999996901, -1.26616252e-11, 1, 2.20208154e-08, 0.999996901, 6.73377118e-11, -0.00248292927)
                        if v:GetAttribute("d") == true then
                            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Favorite_Item"):FireServer(v)
                        end
                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"):FireServer()
                        break
                    end
                end
                task.wait(5)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/chunnyz/Script/refs/heads/main/csfam.lua"))()
                _G.is_executed = true
                _G.is_tradeing = false                
            end
        end
    end
end)

task.spawn(function()
    while true do task.wait(15)
        local ok, newConfig = pcall(function()
            return loadstring(game:HttpGet("https://raw.csfam.xyz/scripts/configs/trade_config.lua"))()
        end)
        if ok and newConfig and type(newConfig.Main) == "table" then
            getgenv().MasterConfig = newConfig
        else
            print("Failed to load config or structure is incorrect")
            getgenv().MasterConfig = {
                ["Main"] = { 
                    ["Default"] = {}
                }
            }
        end
    end
end)
