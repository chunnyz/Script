setfpscap(5)
getgenv().ConfigsKaitun = {
	Beta_Fix_Data_Sync = true,

	NoDeletePlayer = false,

	["Block Pet Gift"] = true,

	Collect_Cooldown = 300, -- cooldown to collect fruit

	["Low Cpu"] = true,
	["Auto Rejoin"] = false,

	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 400,
		["Destroy Until"] = 400,

		["Safe Tree"] = {
			"Moon Blossom",
			"Bone Blossom",
			"Moon Melon",
			"Maple Apple",
			"Moon Mango",
			"Dragon Pepper",
			"Elephant Ears",
			"Fossilight",
			"Princess Thorn",
			-- for the event
			Bamboo = 4,
			Coconut = 15,
			Mushroom = 4,
			Glowthorn = 4,
			Tomato = 15,
			Pumpkin = 4,
			Pepper = 4,
			Cacao = 15,
			Apple = 15,
			Romanesco = 4,
			["Elder Strawberry"] = 4,
			["Burning Bud"] = 4,
			["Giant Pinecone"] = 4,
			Corn = 4,
			["Sugar Apple"] = 4,
			["Ember Lily"] = 4,
			["Dragon Fruit"] = 15,
			Sunbulb = 8,
			["Orange Tulip"] = 4,
			Blueberry = 15,
			Watermelon = 4,
			Mango = 15,
			Cactus = 4,
			Strawberry = 15,
			Beanstalk = 4,
			Lightshoot = 4,
			Grape = 4,
			Daffodil = 4,
		}
	},

	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = { -- any seed u need to buy
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
			}
		}
	},

	["Seed Pack"] = {
		Locked = {
			["Enchanted Seed Packs"] = 10,
		}
	},

	Events = {
		["Fall Event"] = {
			Minimum_Money = 10_000_000, -- minimum money to start play this event
		},
		["Fairy Event"] = {
			Minimum_Money = 10_000_000, -- minimum money to start play this event
			Rewards_Item = { -- top mean select first
				"Enchanted Seed Pack",
				"Pet Shard Glimmering",
				"Enchanted Egg",
				"Mutation Spray Glimmering",
				"FairyPoints",
				"Fairy Targeter",
			},
			Upgrade = {
				Mode = "Order", -- Order (mean will up on order), Chepest, Highest
				Order = { -- top upgrade first, not put mean not upgrade
					"Fairy Spawn Amount",
					"Loose Fairy Spawn Amount",
					"Glimmer Multiplier",
					"Fairy Event Duration",
				},
				Limit = {
					["Glimmer Multiplier"] = 5, -- max 10
					["Loose Fairy Spawn Amount"] = 10, -- max 10
					["Fairy Event Duration"] = 10, -- max 10
					["Fairy Spawn Amount"] = 9, -- max 9
				}
			},
			
			Minimum_Fairy_Point_Restock = 10000, -- if fairy point more then this will restock
			Catch_Fairy_Before_Restock = 51, -- fr it 50 but to be sure i put 51
		},
		MaxMoney_Restocks = 10_000_000,
		
		Shop = { -- un comment to buy
			"Fall Egg",
			"Skyroot Chest",
			"Enchanted Chest",
			"Enchanted Egg",
			"Enchanted Seed Pack",
			"Luminous Sprite",
			"Sprout Seed Pack",
			"Sprout Egg",
			--"Drake",
			--"Pixie Faern",
			--"Untold Bell",
			--"Mutation Spray Luminous",
			--"Pet Shard Glimmering",
			--"Luminous Wand",
		},
		["Traveling Shop"] = {
			"Bee Egg",
			"Paradise Egg", 
			"Rare Summer Egg", 
			"Common Summer Egg"
		},
		Craft = {
			"Enchanted Chest",
			"Fairy Net",
			"Enchanted Egg",
			"Enchanted Seed Pack",
			"Anti Bee Egg",
			"Sprout Egg",
		},
		Start_Do_Honey = 100_000
	},
	
	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
			"Medium Toy",
			"Medium Treat",
			"Level Up Lollipop",
			"LevelUp Lollipop",
			"Tanning Mirror",
			"Grandmaster Sprinkler",
		},
		Lock = {

		},
	},

	Eggs = {
		Place = {
			"Fall Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Enchanted Egg",
			"Bug Egg",
			"Sprout Egg",
			--"Gourmet Egg",
			--"Zen Egg",
			--"Primal Egg",
			--"Night Egg",
			--"Dinosaur Egg",
			--"Oasis Egg",
			--"Mythical Egg",
			--"Legendary Egg",
			"Common Summer Egg",
			--"Rare Egg",
			--"Uncommon Egg",
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
			"Uncommon Egg",
			"Common Egg",
		}
	},
	
	Pets = {
		["Auto Feed"] = true,

		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				--["Bacon Pig"] = { 8, 75, 1 },
				["Glimmering Sprite"] = { 8, 101, 1 },
				["Starfish"] = { 8, 75, 2 },
				["Chicken"] = { 8 , 75, 3 },
				["Rooster"] = { 8, 75, 3 },
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Glimmering Sprite"] = { 8, 101, 1 },
				["Tarantula Hawk"] = { 2, 101, 2 },
				--["Gorilla Chef"] = { 8, 101, 1 },
				--["Bacon Pig"] = { 8, 101, 2 },
				--["Tanchozuru"] = { 8, 101, 3 },
				--["Kappa"] = { 8, 101, 4 },
				--["Spaghetti Sloth"] = { 8, 101, 5 },
				--["Corrupted Kodama"] = { 8, 101, 6 },
				--["Kodama"] = { 8, 101, 7 },
				["Blood Kiwi"] = { 8, 101, 3 },
				["Rooster"] = { 8, 101, 4 },
				["Sunny-Side Chicken"] = { 1, 101, 5 },
				["Chicken"] = { 8 , 101, 6 },
				["Starfish"] = { 8, 75, 7 },
			},
		},
		Unfavorite_AllPet = true,
		Favorite_LockedPet = false,
		Locked = {
			"Swan",
			"Phoenix",
			"Cockatrice",
			"Griffin",
			"Golden Goose",
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
			"Chicken Zombie",
			["Robin"] = 2,
			["Barn Owl"] = 2,
			["Grizzly Bear"] = 2,
			["Badger"] = 2,
			["Glimmering Sprite"] = 8,
			["Lemon Lion"] = 2,
			["Green Bean"] = 2,
			["Ostrich"] = 3,
			["Corrupted Kodama"] = 8,
			["Tarantula Hawk"] = 2,
			["Bald Eagle"] = 5,
			["Moon Cat"] = 10,
			["Chicken"] = 2,
			["Rooster"] = 2,
			["Blood Kiwi"] = 5,
			["Starfish"] = 8,
			["Golem"] = 2,
			["Nihonzaru"] = 2,
			["Kappa"] = 1,
			["Capybara"] = 5,
			["Tanchozuru"] = 2,
			["Hotdog Daschund"] = 2,
		},
		LockPet_Weight = 5, -- if Weight >= 7 they will locked,
		Instant_Sell = {
			"Grey Mouse",
			"Squirrel",
			"Snail",
			"Orangutan",
			"Brown Mouse",
			"Bunny",
			"Crab",
			"Caterpillar",
			"Shiba Inu",
			"Tanuki",
			"Manaki-Neko",
			"Seagull",
			"Bagel Bunny",
			"Bacon Pig",
			"Dairy Cow",
			"Pancake Mole",
			"Hotdog Daschund",
			"Gorilla Chef",
			"Seedling",
			"Sushi Bear",
			"Jackalope",
			"Black Bunny",
			"Deer",
			"Spotted Deer",
			"Pig",
			"Elk",
			"Monkey",
			"Mandrake",
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
