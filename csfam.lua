setfpscap(3)
getgenv().ConfigsKaitun = {
	Beta_Fix_Data_Sync = true,

	NoDeletePlayer = false,

	["Block Pet Gift"] = true,

	Collect_Cooldown = 120, -- cooldown to collect fruit

	["Low Cpu"] = true,
	["Auto Rejoin"] = false,

	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 500,
		["Destroy Until"] = 0,

		["Safe Tree"] = {
			["Tomato"] = 500,
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
			"King Cabbage",
		}
	},

	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = { -- any fruit u need to place
				"Carrot",
			}
		},
		Place = {
			Mode = "Select", -- Select , Lock
			Select = {
				"Tomato",
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
				"King Cabbage",
			}
		}
	},

	["Seed Pack"] = {
		Locked = {
			"Zen Seed Pack",
		}
	},

	Events = {
		["Cook Event"] = {
			Minimum_Money = 30_000_000, -- minimum money to start play this event
			Rewards_Item = { -- The top is the most top mean prefered.
				"Gourmet Egg",
				"Culinarian Chest",
				"Gorilla Chef",
				"Cooking Cauldron",
				"Gourmet Seed Pack",
				-- u can add it more as u want, if it not in list.
			}
		},
		["Traveling Shop"] = {
			"Pineapple",
			"Banana",
			"Bee Egg",
		},
		Craft = {
			"Anti Bee Egg",
			"Primal Egg",
			"Dinosaur Egg",
		},
		Shop = {
			"Zen Egg",
			--"Raiju",
			--"Junkbot",
			--"Zen Seed Pack",
			--"Spiked Mango",
			--"Pet Shard Tranquil",
			--"Pet Shard Corrupted",
		},
		Start_Do_Honey = 2_000_000 -- start trade fruit for honey at money
	},


	Gear = {
		Buy = { 
			"Grandmaster Sprinkler",
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
			"Trading Ticket",
			"Levelup Lollipop",
			"Medium Treat",
			"Medium Toy",
		},
		Lock = {
			"Trading Ticket",
			"Grandmaster Sprinkler",
			"Lightning Rod",
		},
	},

	Eggs = {
		Place = {
			"Zen Egg",
			"Gourmet Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Bug Egg",
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
			"Common Egg",
		}
	},

	Pets = {
		["Start Delete Pet At"] = 50,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 7, 100, 1, true },
			},
			["Limit Upgrade"] = 5, -- max is 5 (more than or lower than 1 will do nothing)
			["Equip When Done"] = {
				["Gorilla Chef"] = { 8, 101, 1 },
				["Bacon Pig"] = { 4, 101, 2 },
				["Spaghetti Sloth"] = { 4, 101, 3 },
			},
		},
		Favorite_LockedPet = false,
		Locked_Pet_Age = 45, -- pet that age > 60 will lock
		Locked = {
			"Lobster Thermidor",
			"French Fry Ferret",
			"Corrupted Kitsune",
			"Raiju",
			"Koi",
			"Kitsune",
			"Dilophosaurus",
			"Spinosaurus",
			"Bear Bee",
			"T-Rex",
			"Brontosaurus",
			"Disco Bee",
			"Butterfly",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Fennec Fox",
			"Mimic Octopus",
			"Red Fox",
			"Junkbot",
			"Moth",
			["Nihonzaru"] = 2,
			["Sushi Bear"] = 2,
			["Mochi Mouse"] = 2,
			["Bald Eagle"] = 5,
			["Moon Cat"] = 5,
			["Ostrich"] = 3,
			["Kappa"] = 1,
			["Starfish"] = 7,
			["Blood Kiwi"] = 2,
			["Capybara"] = 5,
			["Chicken"] = 2,
			["Rooster"] = 2,
			["Tanchozuru"] = 4,
			["Sunny-Side Chicken"] = 1,
			["Hotdog Daschund"] = 4,
			["Spaghetti Sloth"] = 4,
			["Bacon Pig"] = 4,
			["Gorilla Chef"] = 8,
		},
		LockPet_Weight = 5.5, -- if Weight >= 10 they will locked
	},

	Webhook = {
		UrlPet = "https://discord.com/api/webhooks/1395480283029176542/dOwBT0fIYYEcUViB-KzgdFECrAJa3W_XBxIpyg1UdX3pdKrpfveuWpz1_8wE9qTYSuOx",
		UrlSeed = "",
		PcName = "CS FAM",

		Noti = {
			Seeds = {
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
			},
			SeedPack = {
				"Idk"
			},
			Pets = {
				"Kitsune",
			},
			Pet_Weight_Noti = true,
		}
	},
}

License = "287MIU1KAqEbt6zgPcB9hUvDHbJPDz48"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
