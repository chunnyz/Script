-- Update config : 26/7/2025 time : 07:26:42
setfpscap(3)
task.wait(10)
getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,
	
	["Low Cpu"] = true,
	["Auto Rejoin"] = true,
	
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 250,
		["Destroy Untill"] = 200,

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
			}
		}
	},

	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		["Zen Event"] = {
			["Restocking"] = { -- Minimumthing to restock
				Max_Restocks_Price = 3_000_000_000_000,
				Minimum_Money = 1,
				Minimum_Chi = 30
			},
			["Doing"] = {
				Minimum_Money = 1, -- minimum money to start play this event
				First_Upgrade_Tree = 1,
				Maximum_Chi = 50,
			}
		},
		["Traveling Shop"] = {
			"Bee Egg",
		},
		Craft = {
			"Primal Egg",
			"Anti Bee Egg",
			"Small Toy",
			"Small Treat",
			"Ancient Seed Pack",
		},
		Shop = {
			"Zen Egg",
		},
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
			"Zen Egg",
			--"Primal Egg",
			--"Night Egg",
			--"Bug Egg",
			--"Anti Bee Egg",
			--"Dinosaur Egg",
			--"Oasis Egg",
			--"Paradise Egg",
			"Common Summer Egg",
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
				["Starfish"] = { 8, 100, 1 },
			},
			["Limit Upgrade"] = 8,
			["Equip When Done"] = {
				["Tanchozuru"] = { 5, 100, 1 },
				["Ostrich"] = { 3, 100, 2 },
			},
		},
		Locked_Pet_Age = 50, -- pet that age > 60 will lock
		Locked = {
			"Kitsune",
			"Kappa",
			"Tanchozuru",
			"Tanuki",
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
			["Seagull"] = 5,
			["Shiba Inu"] = 5,
			["Nihonzaru"] = 5,
			["Stegosaurus"] = 5,
			["Peacock"] = 5,
			["Triceratops"] = 5,
			["Pterodactyl"] = 2,
			["Toucan"] = 5,
			["Capybara"] = 5,
			["Bunny"] = 5,
			["Golden Lab"] = 5,
			["Bee"] = 3,
			["Bunny"] = 5,
			["Golden Lab"] = 5,
		},
		LockPet_Weight = 5, -- if Weight >= 10 they will locked,
		Instant_Sell = {		
			--"Bunny",
			"Shiba Inu",
			--"Dog",
			--"Golden Lab",
		}
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
				"Bone Blossom",
				"Dragon Sapling",
                "Maple Apple",
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
