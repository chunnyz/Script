-- Update config : 3/8/2025
setfpscap(3)
task.wait(5)
getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,

	Collect_Cooldown = 60, -- cooldown to collect fruit
	JustFuckingCollectAll = false, -- Collect all (fruit not wait mutation)

	["Low Cpu"] = true,
	["Auto Rejoin"] = true,

	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 250,
		["Destroy Untill"] = 230,

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
				"Bamboo",
				"Pumpkin",
				"Daffodil",
				"Orange Tulip",
				"Watermelon",
				"Mushroom",
				"Avocado",
				"Feijoa",
				"Cauliflower",
				"Loquat",
				"Green Apple",
				"Nightshade",
				"Firefly Fern",
				"Soft Sunshine",
				"Zen Rocks",
				"Hinomai",
				"Beanstalk",
				"Ember Lily",
				"Sunflower",
				"Sugar Apple",
				"Burning Bud",
				"Giant Pinecone",
				"Spiked Mango",
			}
		},
		Place = {
			Mode = "Lock", -- Select , Lock
			Select = {
				"Carrot",
				"Tomato",
				"Blueberry",
				"Corn",
				"Bamboo",
				"Starwberry",
				"Apple",
				"Pumpkin",
				"OrangeTulip",
				"Pepper",
				"Cactus",
				"Watermelon",
				"Mushroom",
				"GiantPinecone",
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
			Minimum_Money = 1_000_000, -- minimum money to start play this event
		},
		["Zen Event"] = {
			["Restocking"] = { -- Minimumthing to restock
				Max_Restocks_Price = 3_000_000_000_000,
				Minimum_Money = 1_000_000,
				Minimum_Chi = 20
			},
			["Doing"] = {
				Minimum_Money = 1_000_000, -- minimum money to start play this event
				First_Upgrade_Tree = 7,
				Maximum_Chi = 150,

				-- // thing to skip doing
				Skip_Fox = false, -- Skip The Middle Fox Trade (Corrupted Kitsune)
				Skip_Corrupted_OldMan = false, -- Skip The OldMan Trade (Kodama)
				-- If u need to skip Tranquill OldMan Set "First Upgrade Tree" To 0 and Max Chi To 99999
			}
		},

		["Traveling Shop"] = {
			"Bald Eagle",
			"Star Caller",
			"Bee Egg"
		},
		Craft = {
			"Anti Bee Egg",
			"Primal Egg",
			"Ancient Seed Pack",
			"Small Treat",
			"Small Toy",
			"Lightning Rod"
		},
		Shop = {
			"Zen Egg",
			"Raiju",
		},
		Start_Do_Honey = 1_000_000 -- start trade fruit for honey at money
	},

	Gear = {
		Buy = { 
			"Watering Can",
			"Trowel",
			"Recall Wrench",
			"Magnifying Glass",
			"Tanning Mirror",
			"Cleaning Spray",
			"Favorite Tool",
			"Harvest Tool",
			"Friendship Pot",
			"Master Sprinkler",
			"Basic Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Medium Toy",
			"Medium Treat",
			"Levelup Lollipop",
			"Lightning Rod",
		},
		Lock = {
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
		},
	},

	Eggs = {
		Place = {
			"Gourmet Egg",
			"Zen Egg",
			--"Primal Egg",
			"Anti Bee Egg",
			--"Dinosaur Egg",
			"Oasis Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Common Summer Egg",
			--"Bee Egg",
			--"Rare Summer Egg",
			--"Mythical Egg",
			--"Common Egg",
		},
		Buy = {
			"Anti Bee Egg",
			"Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Mythical Egg",
			"Rare Egg",
			"Rare Summer Egg",
			"Common Summer Egg",
			"Common Egg",
		}
	},

	Pets = {
		["Start Delete Pet At"] = 50,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Kodama"] = { 8, 100, 1 },
				["Starfish"] = { 8, 100, 1 },
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Tanchozuru"] = { 5, 100, 1 },
				["Ostrich"] = { 3, 100, 2 },
			},
		},
		Favorite_LockedPet = false,
		Locked_Pet_Age = 50, -- pet that age > 60 will lock
		Locked = {
			"French Fry Ferret",
			"Spaghetti Sloth",
			"Corrupted Kitsune",
			"Kitsune",
			"Kappa",
			"Tanchozuru",
			"Disco Bee",
			"Butterfly",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Red Fox",
			"Mimic Octopus",
			"Hyacinth Macaw",
			"Brontosaurus",
			"Dilophosaurus",
			"Ankylosaurus",
			"Spinosaurus",
			"T-Rex",
			"Mizuchi",
			"Raiju",
			"Corrupted Kodama",
			"Moth",
			["Mochi Mouse"] = 3,
			["Tarantula Hawk"] = 2,
			["Bald Eagle"] = 5,
			["Moon Cat"] = 10,
			["Chicken"] = 2,
			["Rooster"] = 2,
			["Blood Kiwi"] = 5,
			["Ostrich"] = 5,
			["Kappa"] = 5,
			["Capybara"] = 5,
			["Praying Mantis"] = 5,
			["Starfish"] = 10,
			["Nihonzaru"] = 5,
			["Triceratops"] = 5,
			["Bee"] = 3,
		},
		LockPet_Weight = 5, -- if Weight >= 10 they will locked,
		--Instant_Sell = {		
			--"Bunny",
			--"Shiba Inu",
			--"Dog",
			--"Golden Lab",
		--}
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
				"Kitsune",
				"French Fry Ferret",
				"Spaghetti Sloth",
			},
			Pet_Weight_Noti = true,
		}
	},
}

License = "287MIU1KAqEbt6zgPcB9hUvDHbJPDz48"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
