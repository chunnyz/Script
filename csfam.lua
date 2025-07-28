-- Update config : 29/7/2025
setfpscap(3)
task.wait(5)
getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,
	
	["Low Cpu"] = true,
	
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 280,

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

			-- locked fruit for zen event
			["Tomato"] = 1, ["Strawberry"] = 1, ["Blueberry"] = 1,
			["Orange Tulip"] = 1, ["Corn"] = 1, ["Daffodil"] = 1,
			["Bamboo"] = 1, ["Apple"] = 1, ["Coconut"] = 1,
			["Pumpkin"] = 1, ["Watermelon"] = 1, ["Cactus"] = 1,
			["Dragon Fruit"] = 1, ["Mango"] = 1, ["Grape"] = 1,
			["Mushroom"] = 1, ["Pepper"] = 1, ["Cacao"] = 1
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
				"Tranquil Bloom",
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
				Max_Restocks_Price = 10_000_000_000,
				Minimum_Money = 5_000_000,
				Minimum_Chi = 30
			},
			["Doing"] = {
				Minimum_Money = 100_000, -- minimum money to start play this event
				First_Upgrade_Tree = 7,
				Maximum_Chi = 400,
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
			--"Ancient Seed Pack",
			--"Honeysuckle",
			"Small Treat",
			"Small Toy",
			"Lightning Rod"
		},
		Shop = {
			"Zen Egg",
			--"Zen Seed Pack",
			--"Spiked Mango",
			--"Pet Shard Tranquil",
			--"Pet Shard Corrupted",
			--"Koi",
			--"Soft Sunshine",
			--"Sakura Bush",
			--"Raiju",
		},
		Start_Do_Honey = 2_000_000 -- start trade fruit for honey at money
	},

	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			--"Lightning Rod",
			"Medium Toy",
			"Medium Treat",
			"Level Up Lollipop",
			"Tanning Mirror"
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
			"Primal Egg",
			"Anti Bee Egg",
			"Corrupted Zen Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
			"Rare Summer Egg",
			"Mythical Egg",
			"Common Egg",
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
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 8, 75, 1 },
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Tarantula Hawk"] = { 2, 101, 1 },
				["Blood Kiwi"] = { 4, 101, 2 },
				["Rooster"] = { 2, 101, 3 },
				["Starfish"] = { 8, 75, 4 },
			},
		},
		Locked_Pet_Age = 50, -- pet that age > 60 will lock
		Locked = {
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
