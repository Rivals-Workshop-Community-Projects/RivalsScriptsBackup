//url, team name, sprite, anim speed, team charNum, teammate 1, teammate 2 
// sprite_get("ruk")

team1 = 120
team2 = 120
url = 0
speed = .1
opacity = .6

placement[0] = [get_marker_x(5), get_marker_y(5)]
placement[1] = [get_marker_x(6), get_marker_y(6)]
placement[2] = [get_marker_x(7), get_marker_y(7)]
placement[3] = [get_marker_x(8), get_marker_y(8)]

charNum = 0
teamNum = 0
//Rated R 1 
charData[0 + charNum] = [2241098230, "Rated R", sprite_get("idle" + string(charNum + 1)), 0.15, teamNum, 1 + charNum, 2 + charNum] //Ryken
charData[1 + charNum] = [2514778120, "Rated R", sprite_get("idle" + string(charNum + 2)), 0.18, teamNum, 0 + charNum, 2 + charNum] //Ram
charData[2 + charNum] = [2482681616, "Rated R", sprite_get("idle" + string(charNum + 3)), 0.13, teamNum, 0 + charNum, 1 + charNum] //Regi
charNum += 3
teamNum += 1
//Sevsant Venture 2
charData[0 + charNum] = [2391875424, "Sevsant Venture", sprite_get("idle" + string(charNum + 1)), 0.095, teamNum, 1 + charNum, 2 + charNum] //Cardinal
charData[1 + charNum] = [2391877533, "Sevsant Venture", sprite_get("idle" + string(charNum + 2)), 0.105, teamNum, 0 + charNum, 2 + charNum] //Banana
charData[2 + charNum] = [2391884007, "Sevsant Venture", sprite_get("idle" + string(charNum + 3)), 0.13, teamNum, 0 + charNum, 1 + charNum] //Saphrey
charNum += 3
teamNum += 1
//FFXIV 3
charData[0 + charNum] = [2396061657, "FFXIV", sprite_get("idle" + string(charNum + 1)), .15, teamNum, 1 + charNum, 2 + charNum] //callie
charData[1 + charNum] = [2396720475, "FFXIV", sprite_get("idle" + string(charNum + 2)), .092, teamNum, 0 + charNum, 2 + charNum] //tomo
charData[2 + charNum] = [1943759600, "FFXIV", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //Olympia
charNum += 3
teamNum += 1
//Mario 4
charData[0 + charNum] = [2089998666, "Mario", sprite_get("idle" + string(charNum + 1)), .12, teamNum, 1 + charNum, 2 + charNum] //by
charData[1 + charNum] = [2310580951, "Mario", sprite_get("idle" + string(charNum + 2)), .16, teamNum, 0 + charNum, 2 + charNum] //64
charData[2 + charNum] = [2489599400, "Mario", sprite_get("idle" + string(charNum + 3)), .16, teamNum, 0 + charNum, 1 + charNum] //tape
charNum += 3
teamNum += 1
//I Love My Wife, Got Dang It! 5
charData[0 + charNum] = [1867608473, "I Love My Wife", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //kris
charData[1 + charNum] = [2229355277, "I Love My Wife", sprite_get("idle" + string(charNum + 2)), .15, teamNum, 0 + charNum, 2 + charNum] //saff
charData[2 + charNum] = [2558870474, "I Love My Wife", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //Eirlys
charNum += 3
teamNum += 1
//Turn Based Gaming 6
charData[0 + charNum] = [2318304706, "Turn Based Gaming", sprite_get("idle" + string(charNum + 1)), .12, teamNum, 1 + charNum, 2 + charNum] //Geno
charData[1 + charNum] = [2456124960, "Turn Based Gaming", sprite_get("idle" + string(charNum + 2)), .14, teamNum, 0 + charNum, 2 + charNum] //Scott the Woz
charData[2 + charNum] = [2606466824, "Turn Based Gaming", sprite_get("idle" + string(charNum + 3)), .11, teamNum, 0 + charNum, 1 + charNum] //Incine
charNum += 3
teamNum += 1
//NeRVe 7
charData[0 + charNum] = [1941825892, "NeRVe", sprite_get("idle" + string(charNum + 1)), .125, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2006251771, "NeRVe", sprite_get("idle" + string(charNum + 2)), .125, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2136440419, "NeRVe", sprite_get("idle" + string(charNum + 3)), .16, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Maelstrom Pack 8
charData[0 + charNum] = [1913010030, "Maelstrom Pack", sprite_get("idle" + string(charNum + 1)), .15, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2167624888, "Maelstrom Pack", sprite_get("idle" + string(charNum + 2)), .25, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2396735388, "Maelstrom Pack", sprite_get("idle" + string(charNum + 3)), 1/6, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Sanguine Sango Mambo Samba de Amigos 9
charData[0 + charNum] = [2149325219, "Sanguine Amigos", sprite_get("idle" + string(charNum + 1)), .2, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2195482758, "Sanguine Amigos", sprite_get("idle" + string(charNum + 2)), .15, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2400092760, "Sanguine Amigos", sprite_get("idle" + string(charNum + 3)), speed, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Machiavellian dark dodecahedron 10
charData[0 + charNum] = [1995944345, "Machiavellian", sprite_get("idle" + string(charNum + 1)), .13, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2430633441, "Machiavellian", sprite_get("idle" + string(charNum + 2)), .16666666666, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2199519462, "Machiavellian", sprite_get("idle" + string(charNum + 3)), .15, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Warp Speed 11
charData[0 + charNum] = [2097500977, "Warp Speed", sprite_get("idle" + string(charNum + 1)), .08, teamNum, 1 + charNum, 2 + charNum] //Scaryami
charData[1 + charNum] = [2396053263, "Warp Speed", sprite_get("idle" + string(charNum + 2)), .18, teamNum, 0 + charNum, 2 + charNum] //Heartbrake
charData[2 + charNum] = [2504113755, "Warp Speed", sprite_get("idle" + string(charNum + 3)), speed, teamNum, 0 + charNum, 1 + charNum] //Nova
charNum += 3
teamNum += 1
//Team Sire 12
charData[0 + charNum] = [2322316995, "Team Sire", sprite_get("idle" + string(charNum + 1)), .125, teamNum, 1 + charNum, 2 + charNum] //Doom
charData[1 + charNum] = [2261930847, "Team Sire", sprite_get("idle" + string(charNum + 2)), .1, teamNum, 0 + charNum, 2 + charNum] //Quag
charData[2 + charNum] = [2602295071, "Team Sire", sprite_get("idle" + string(charNum + 3)), .15, teamNum, 0 + charNum, 1 + charNum] //Adam
charNum += 3
teamNum += 1
//GIGANUGGIES 13
charData[0 + charNum] = [2397086842, "GIGANUGGIES", sprite_get("idle" + string(charNum + 1)), .13, teamNum, 1 + charNum, 2 + charNum] //BatBat
charData[1 + charNum] = [2606490200, "GIGANUGGIES", sprite_get("idle" + string(charNum + 2)), .13, teamNum, 0 + charNum, 2 + charNum] //Giga
charData[2 + charNum] = [2438249735, "GIGANUGGIES", sprite_get("idle" + string(charNum + 3)), .2, teamNum, 0 + charNum, 1 + charNum] //Ceae
charNum += 3
teamNum += 1
//Team Ruber 14
charData[0 + charNum] = [1894361290, "Team Ruber", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Goose
charData[1 + charNum] = [2198210310, "Team Ruber", sprite_get("idle" + string(charNum + 2)), .1, teamNum, 0 + charNum, 2 + charNum] //Wall-E 
charData[2 + charNum] = [2490060793, "Team Ruber", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //Barr
charNum += 3
teamNum += 1
//Team Cuber 15
charData[0 + charNum] = [2063121680, "Team Cuber", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Speed link
charData[1 + charNum] = [2396920173, "Team Cuber", sprite_get("idle" + string(charNum + 2)), .08, teamNum, 0 + charNum, 2 + charNum] //Chess
charData[2 + charNum] = [2606512532, "Team Cuber", sprite_get("idle" + string(charNum + 3)), .125, teamNum, 0 + charNum, 1 + charNum] //Dark pit
charNum += 3
teamNum += 1
//The Melon Patch 16
charData[0 + charNum] = [2396911824, "The Melon Patch", sprite_get("idle" + string(charNum + 1)), speed, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2552501300, "The Melon Patch", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2605158956, "The Melon Patch", sprite_get("idle" + string(charNum + 3)), .25, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//The Breakfast Club 17
charData[0 + charNum] = [2415048308, "The Breakfast Club", sprite_get("idle" + string(charNum + 1)), .15, teamNum, 1 + charNum, 2 + charNum] //Dummy
charData[1 + charNum] = [2558467885, "The Breakfast Club", sprite_get("idle" + string(charNum + 2)), .125, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2375014666, "The Breakfast Club", sprite_get("idle" + string(charNum + 3)), .2, teamNum, 0 + charNum, 1 + charNum] //Crash
charNum += 3
teamNum += 1
//The Waffle House 18
charData[0 + charNum] = [2100204665, "The Waffle House", sprite_get("idle" + string(charNum + 1)), speed, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2216878244, "The Waffle House", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2495375306, "The Waffle House", sprite_get("idle" + string(charNum + 3)), .12, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Team 2hu 19
charData[0 + charNum] = [2406439382, "Team 2hu", sprite_get("idle" + string(charNum + 1)), 9 / 60, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2064167290, "Team 2hu", sprite_get("idle" + string(charNum + 2)), 8 / 60, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2350985664, "Team 2hu", sprite_get("idle" + string(charNum + 3)), .18, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Horseradish and the Twin Attrocities 20
charData[0 + charNum] = [2284823424, "Twin Attrocities", sprite_get("idle" + string(charNum + 1)), .13, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2283888504, "Twin Attrocities", sprite_get("idle" + string(charNum + 2)), .13, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2283888145, "Twin Attrocities", sprite_get("idle" + string(charNum + 3)), .13, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Cheese Esports 21
charData[0 + charNum] = [2185834832, "Cheese Esports", sprite_get("idle" + string(charNum + 1)), .14, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2606483115, "Cheese Esports", sprite_get("idle" + string(charNum + 2)), .14, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2606478015, "Cheese Esports", sprite_get("idle" + string(charNum + 3)), speed, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Touhou is My Favorite Anime 22
charData[0 + charNum] = [2263955842, "Touhou Fav Anime", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Reimu
charData[1 + charNum] = [2570853715, "Touhou Fav Anime", sprite_get("idle" + string(charNum + 2)), .15, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2520533233, "Touhou Fav Anime", sprite_get("idle" + string(charNum + 3)), .2, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Going 2 Bed 23
charData[0 + charNum] = [2235244825, "Going 2 Bed", sprite_get("idle" + string(charNum + 1)), .15, teamNum, 1 + charNum, 2 + charNum] //Ducky
charData[1 + charNum] = [2497580275, "Going 2 Bed", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum] //Carco
charData[2 + charNum] = [2534202008, "Going 2 Bed", sprite_get("idle" + string(charNum + 3)), .08, teamNum, 0 + charNum, 1 + charNum] //Kino
charNum += 3
teamNum += 1
//Boiling Starlight 24
charData[0 + charNum] = [2469588541, "Boiling Starlight", sprite_get("idle" + string(charNum + 1)), .2, teamNum, 1 + charNum, 2 + charNum] //Luka
charData[1 + charNum] = [2396961482, "Boiling Starlight", sprite_get("idle" + string(charNum + 2)), .2, teamNum, 0 + charNum, 2 + charNum] //Anglara
charData[2 + charNum] = [2448990688, "Boiling Starlight", sprite_get("idle" + string(charNum + 3)), .15, teamNum, 0 + charNum, 1 + charNum] //Scoville
charNum += 3
teamNum += 1
//Danielthree 25
charData[0 + charNum] = [2144710708, "Danielthree", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Fancy Pants
charData[1 + charNum] = [1906134855, "Danielthree", sprite_get("idle" + string(charNum + 2)), .1, teamNum, 0 + charNum, 2 + charNum] //Owen
charData[2 + charNum] = [2436515556, "Danielthree", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //Game
charNum += 3
teamNum += 1
//Resident Sleepers 26
charData[0 + charNum] = [1917856427, "Resident Sleepers", sprite_get("idle" + string(charNum + 1)), .16, teamNum, 1 + charNum, 2 + charNum]
charData[1 + charNum] = [2322322191, "Resident Sleepers", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2386395909, "Resident Sleepers", sprite_get("idle" + string(charNum + 3)), .13, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Spiders Den 27
charData[0 + charNum] = [2201608216, "Spiders Den", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Blake
charData[1 + charNum] = [2456542384, "Spiders Den", sprite_get("idle" + string(charNum + 2)), .15, teamNum, 0 + charNum, 2 + charNum] //Drosera
charData[2 + charNum] = [2501860697, "Spiders Den", sprite_get("idle" + string(charNum + 3)), .135, teamNum, 0 + charNum, 1 + charNum] //Z
charNum += 3
teamNum += 1
//Genosai 28
charData[0 + charNum] = [2300438860, "Genosai", sprite_get("idle" + string(charNum + 1)), .2, teamNum, 1 + charNum, 2 + charNum] //Chara
charData[1 + charNum] = [2154720280, "Genosai", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum] //Nolan
charData[2 + charNum] = [2397078941, "Genosai", sprite_get("idle" + string(charNum + 3)), .2, teamNum, 0 + charNum, 1 + charNum] //Nullan
charNum += 3
teamNum += 1
//Chairman 29
charData[0 + charNum] = [2397076037, "Chairman", sprite_get("idle" + string(charNum + 1)), speed, teamNum, 1 + charNum, 2 + charNum] //Char Guy
charData[1 + charNum] = [2432114154, "Chairman", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum] //Sai
charData[2 + charNum] = [2294523795, "Chairman", sprite_get("idle" + string(charNum + 3)), speed, teamNum, 0 + charNum, 1 + charNum] //Kazuki
charNum += 3
teamNum += 1
//Anime Girls 30
charData[0 + charNum] = [2504123533, "Anime Girls", sprite_get("idle" + string(charNum + 1)), (11 / 100), teamNum, 1 + charNum, 2 + charNum] //Viss
charData[1 + charNum] = [2605377553, "Anime Girls", sprite_get("idle" + string(charNum + 2)), (6 / 200), teamNum, 0 + charNum, 2 + charNum] //Mal
charData[2 + charNum] = [2254931693, "Anime Girls", sprite_get("idle" + string(charNum + 3)), 0.18, teamNum, 0 + charNum, 1 + charNum] //Bonby
charNum += 3
teamNum += 1
//I'm Blue, da be dee da ba di 31
charData[0 + charNum] = [2605468032, "I'm Blue, da be dee", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Gura
charData[1 + charNum] = [2357967710, "I'm Blue, da be dee", sprite_get("idle" + string(charNum + 2)), .15, teamNum, 0 + charNum, 2 + charNum] //Phoenix
charData[2 + charNum] = [2605304929, "I'm Blue, da be dee", sprite_get("idle" + string(charNum + 3)), .2, teamNum, 0 + charNum, 1 + charNum] //Daora
charNum += 3
teamNum += 1
//Purple Posse 32
charData[0 + charNum] = [2396618743, "Purple Posse", sprite_get("idle" + string(charNum + 1)), .14, teamNum, 1 + charNum, 2 + charNum] //Terra
charData[1 + charNum] = [2606508459, "Purple Posse", sprite_get("idle" + string(charNum + 2)), .2, teamNum, 0 + charNum, 2 + charNum] //Fernet
charData[2 + charNum] = [1913517643, "Purple Posse", sprite_get("idle" + string(charNum + 3)), .13, teamNum, 0 + charNum, 1 + charNum] //Pomme
charNum += 3
teamNum += 1
//Dawn and Dusk 33
charData[0 + charNum] = [2108895293, "Dawn and Dusk", sprite_get("idle" + string(charNum + 1)), .09, teamNum, 1 + charNum, 2 + charNum] //9 yr old
charData[1 + charNum] = [2229832619, "Dawn and Dusk", sprite_get("idle" + string(charNum + 2)), .09, teamNum, 0 + charNum, 2 + charNum] //N/A
charData[2 + charNum] = [2343479756, "Dawn and Dusk", sprite_get("idle" + string(charNum + 3)), .12, teamNum, 0 + charNum, 1 + charNum] //Natsumi
charNum += 3
teamNum += 1
//Weenie Hut Jr. 34
charData[0 + charNum] = [1954852855, "Weenie Hut Jr.", sprite_get("idle" + string(charNum + 1)), speed, teamNum, 1 + charNum, 2 + charNum] //bfbb
charData[1 + charNum] = [2166057791, "Weenie Hut Jr.", sprite_get("idle" + string(charNum + 2)), speed, teamNum, 0 + charNum, 2 + charNum] //chad
charData[2 + charNum] = [2555199085, "Weenie Hut Jr.", sprite_get("idle" + string(charNum + 3)), speed, teamNum, 0 + charNum, 1 + charNum] //Dave
charNum += 3
teamNum += 1
//Negative Mage 35
charData[0 + charNum] = [1997619532, "Negative Mage", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //No clue
charData[1 + charNum] = [2485539286, "Negative Mage", sprite_get("idle" + string(charNum + 2)), .14, teamNum, 0 + charNum, 2 + charNum] //Lynk
charData[2 + charNum] = [2047413648, "Negative Mage", sprite_get("idle" + string(charNum + 3)), .15, teamNum, 0 + charNum, 1 + charNum] //Uza
charNum += 3
teamNum += 1
//The Bat, the Ape, and the Bunny 36
charData[0 + charNum] = [2468725612, "Bat, Ape and Bunny", sprite_get("idle" + string(charNum + 1)), 0.075, teamNum, 1 + charNum, 2 + charNum] //Buffy
charData[1 + charNum] = [2546990424, "Bat, Ape and Bunny", sprite_get("idle" + string(charNum + 2)), .2, teamNum, 0 + charNum, 2 + charNum]
charData[2 + charNum] = [2626351533, "Bat, Ape and Bunny", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //Marcillo
charNum += 3
teamNum += 1
//Terminal Velocity 37
charData[0 + charNum] = [1868240517, "Terminal Velocity", sprite_get("idle" + string(charNum + 1)), .14, teamNum, 1 + charNum, 2 + charNum] //r00
charData[1 + charNum] = [1892030667, "Terminal Velocity", sprite_get("idle" + string(charNum + 2)), .1, teamNum, 0 + charNum, 2 + charNum] //gustav
charData[2 + charNum] = [2108176600, "Terminal Velocity", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //moji
charNum += 3
teamNum += 1
//Bonus Cheese. 38
charData[0 + charNum] = [2262715898, "Bonus Cheese.", sprite_get("idle" + string(charNum + 1)), .08, teamNum, 1 + charNum, 2 + charNum] //cheese
charData[1 + charNum] = [2620579353, "Bonus Cheese.", sprite_get("idle" + string(charNum + 2)), .08, teamNum, 0 + charNum, 2 + charNum] //abyss cheese
charData[2 + charNum] = [2606476308, "Bonus Cheese.", sprite_get("idle" + string(charNum + 3)), .15, teamNum, 0 + charNum, 1 + charNum]
charNum += 3
teamNum += 1
//Bajo Rendimiento 39
charData[0 + charNum] = [1870530402, "Bajo Rendimiento", sprite_get("idle" + string(charNum + 1)), .1, teamNum, 1 + charNum, 2 + charNum] //Travis
charData[1 + charNum] = [2273636433, "Bajo Rendimiento", sprite_get("idle" + string(charNum + 2)), .1, teamNum, 0 + charNum, 2 + charNum] //Doc
charData[2 + charNum] = [2628951201, "Bajo Rendimiento", sprite_get("idle" + string(charNum + 3)), .1, teamNum, 0 + charNum, 1 + charNum] //JD
charNum += 3
teamNum += 1
//ricE Gaming 40
charData[0 + charNum] = [2311095319 , "ricE Gaming", sprite_get("idle" + string(charNum + 1)), .18, teamNum, 1 + charNum, 2 + charNum] //Mario
charData[1 + charNum] = [2580068632, "ricE Gaming", sprite_get("idle" + string(charNum + 2)), .1, teamNum, 0 + charNum, 2 + charNum] //Meta Knight
charData[2 + charNum] = [2605733292, "ricE Gaming", sprite_get("idle" + string(charNum + 3)), .14, teamNum, 0 + charNum, 1 + charNum] //Sleep Kirby
charNum += 3
teamNum += 1
charData[120] = [url, "Other", sprite_get("empty"),  1, 40, 120, 120] //Sleep Kirby

