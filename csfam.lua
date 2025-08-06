-- Update config : 6/8/2025
setfpscap(5)
getgenv().ConfigsKaitun = {
	Beta_Fix_Data_Sync = true,
	
	["Block Pet Gift"] = true,

	Collect_Cooldown = 60, -- cooldown to collect fruit
	JustFuckingCollectAll = false, -- Collect all (fruit not wait mutation)
	
	["Low Cpu"] = false,
	["Auto Rejoin"] = true,
	
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 250,

		["Safe Tree"] = {
			"Maple Apple",
			"Sunflower",
			"Dragon Pepper",
			"Elephant Ears",
			"Moon Melon",
			"Easter Egg",
			"Moon Mango",
			"Bone Blossom",
			"Fossilight",
			"Tranquil Bloom",
			"Grand Tomato",
		}
	},

	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = {
				"Carrot",
			}
		},
		Place = {
			Mode = "Lock", -- Select , Lock
			Select = {
				"Carrot"
			},
			Lock = {
				"Maple Apple",
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
				"Moon Melon",
				"Easter Egg",
				"Moon Mango",
				"Bone Blossom",
				"Fossilight",
				"Tranquil Bloom",
				"Grand Tomato",
			}
		}
	},

	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		["Cook Event"] = {
			Minimum_Money = 30_000_000, -- minimum money to start play this event
		},
		["Traveling Shop"] = {
			"Bald Eagle",
			"Star Caller",
			"Bee Egg"
		},
		Craft = {
			"Anti Bee Egg",
		},
		Shop = {
			"Zen Egg",
			"Raiju",
		},
		Start_Do_Honey = 1_000_000 -- start trade fruit for honey at money
	},

	Gear = {
		Buy = { 
			"Grandmaster Sprinkler",
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
			"Level Up Lollipop",
			"Medium Treat",
			"Medium Toy",
		},
		Lock = {

		},
	},

	Eggs = {
		Place = {
			"Gourmet Egg",
			"Zen Egg",
			"Anti Bee Egg",
			"Bug Egg",
			"Paradise Egg",
			"Common Summer Egg",
		},
		Buy = {
			"Bee Egg",
			"Oasis Egg",
			"Paradise Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Rare Summer Egg",
			"Bug Egg",
			"Mythical Egg",
			"Common Summer Egg",
		}
	},

	Pets = {
		["Start Delete Pet At"] = 50,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 7, 100, 1, true },

			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Ostrich"] = { 5, 100, 1 },
				["Capybara"] = { 3, 100, 2 },

			},
		},
		Favorite_LockedPet = false,
		Locked_Pet_Age = 99, -- pet that age > 60 will lock
		Locked = {
			"French Fry Ferret",
			"Spaghetti Sloth",
			"Mizuchi",
			"Tsuchinoko",
			"Football",
			"Corrupted Kitsune",
			"Corrupted Kodama",
			"Scarlet Macaw",
			"Koi",
			"Tanchozuru",
			"Kitsune",
			"Capybara",
			"Disco Bee",
			"Butterfly",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Fennec Fox",
			"Mimic Octopus",
			"Red Fox",
			"Blood Owl",
			"Moth",
			["Sushi Bear"] = 5,
			["Mochi Mouse"] = 5,
			["Bald Eagle"] = 5,
			["Moon Cat"] = 10,
			["Ostrich"] = 3,
			["Kappa"] = 2,
			["Starfish"] = 10,
			["Triceratops"] = 2,
			["Bee"] = 3,
		},
		LockPet_Weight = 5, -- if Weight >= 10 they will locked,
		Instant_Sell = {		
			"Shiba Inu",
			"Seagull",
			"Crab",
			"Tanuki",
			"Nihonzaru",
			"Snail",
			"Caterpillar",
			"Giant Ant",
			"Bagel Bunny",
			"Pancake Mole",
			"Peacock",
			"Flamingo",
			"Brown Mouse",
			"Kodama",
		}
	},

	Webhook = {
		UrlPet = "https://discord.com/api/webhooks/1395480283029176542/dOwBT0fIYYEcUViB-KzgdFECrAJa3W_XBxIpyg1UdX3pdKrpfveuWpz1_8wE9qTYSuOx",
		UrlSeed = "",
		PcName = "CS FAM",

		Noti = {
			Seeds = {
				"Idk"
			},
			SeedPack = {
				"Idk"
			},
			Pets = {
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Queen Bee",
				"Dragonfly",
				"Raccoon",
				"Fennec Fox",
				"Kitsune",
				"French Fry Ferret",
			},
			Pet_Weight_Noti = true,
		}
	},
}

License = "287MIU1KAqEbt6zgPcB9hUvDHbJPDz48"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
