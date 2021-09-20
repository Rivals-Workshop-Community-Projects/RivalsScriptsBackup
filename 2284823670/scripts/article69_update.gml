if get_gameplay_time() == 10{
	
	// detect player chars
	
	with oPlayer {
		
		other.select[player - 1] = get_char_info(player, INFO_CHARSELECT)
		other.icon[player - 1] =   get_char_info(player, INFO_ICON)
		other.name[player - 1] =   get_char_info(player, INFO_STR_NAME)
		other.author[player - 1] = get_char_info(player, INFO_STR_AUTHOR)
	
		if "url" not in self || real(url) < 100{
			other.select[player - 1] = asset_get("empty_sprite")
			other.icon[player - 1] = asset_get("empty_sprite")
			other.team[player - 1] = "Team Base Cast"
			other.team1[player - 1] = 24
		}
	
		else switch real(url){
			case 2110996330: //Chef
				other.team[player - 1] = "Team Nova"
				other.team1[player - 1] = 0
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1917713379: //Valk
				other.team[player - 1] = "Team Nova"
				other.team1[player - 1] = 0
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1868756032: //Kirby
				other.team[player - 1] = "Team Nova"
				other.team1[player - 1] = 0
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1882960192: //Bluey
				other.team[player - 1] = "Team SB"
				other.team1[player - 1] = 1
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2089998666: //Big Yoshi
				other.team[player - 1] = "Team SB"
				other.team1[player - 1] = 1
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2007375819: //Blueybot
				other.team[player - 1] = "Team SB"
				other.team1[player - 1] = 1
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2136440419: //Hodan
				other.team[player - 1] = "Team NeRVe"
				other.team1[player - 1] = 2
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1941825892: //Fox
				other.team[player - 1] = "Team NeRVe"
				other.team1[player - 1] = 2
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2006251771: //Falco
				other.team[player - 1] = "Team NeRVe"
				other.team1[player - 1] = 2
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1962084547: //Bird Guy
				other.team[player - 1] = "Bird Team"
				other.team1[player - 1] = 3
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1926836320: //Archen
				other.team[player - 1] = "Bird Team"
				other.team1[player - 1] = 3
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2094681709: //Bird Guy in a Car
				other.team[player - 1] = "Bird Team"
				other.team1[player - 1] = 3
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2262715898: //Cheese Wheel
				other.team[player - 1] = "Team Gesture"
				other.team1[player - 1] = 4
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2096971862: //Monkeese
				other.team[player - 1] = "Team Gesture"
				other.team1[player - 1] = 4
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2185834832: //Torga
				other.team[player - 1] = "Team Gesture"
				other.team1[player - 1] = 4
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1899673724:
				other.team[player - 1] = "ricE Gaming"
				other.team1[player - 1] = 5
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 230768772:
				other.team[player - 1] = "ricE Gaming"
				other.team1[player - 1] = 5
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2074191621:
				other.team[player - 1] = "ricE Gaming"
				other.team1[player - 1] = 5
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1917856427:
				other.team[player - 1] = "SuperSleepySaka"
				other.team1[player - 1] = 6
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2226876875:
				other.team[player - 1] = "SuperSleepySaka"
				other.team1[player - 1] = 6
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1905208125:
				other.team[player - 1] = "SuperSleepySaka"
				other.team1[player - 1] = 6
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2035357584:
				other.team[player - 1] = "Team Headcase"
				other.team1[player - 1] = 7
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2195482758:
				other.team[player - 1] = "Team Headcase"
				other.team1[player - 1] = 7
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1996010699:
				other.team[player - 1] = "Team Headcase"
				other.team1[player - 1] = 7
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1913869515:
				other.team[player - 1] = "Table Salt"
				other.team1[player - 1] = 8
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1997619532:
				other.team[player - 1] = "Table Salt"
				other.team1[player - 1] = 8
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2105839293:
				other.team[player - 1] = "Table Salt"
				other.team1[player - 1] = 8
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2108895293:
				other.team[player - 1] = "Candles & Rainclouds"
				other.team1[player - 1] = 9
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2229832619:
				other.team[player - 1] = "Candles & Rainclouds"
				other.team1[player - 1] = 9
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1894194148:
				other.team[player - 1] = "Candles & Rainclouds"
				other.team1[player - 1] = 9
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1943759600:
				other.team[player - 1] = "Team Classics"
				other.team1[player - 1] = 10
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1867608473:
				other.team[player - 1] = "Team Classics"
				other.team1[player - 1] = 10
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1891309722:
				other.team[player - 1] = "Team Classics"
				other.team1[player - 1] = 10
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2012934808:
				other.team[player - 1] = "Team MawRain"
				other.team1[player - 1] = 11
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2249417003:
				other.team[player - 1] = "Team MawRain"
				other.team1[player - 1] = 11
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1917014385:
				other.team[player - 1] = "Team MawRain"
				other.team1[player - 1] = 11
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2167302754:
				other.team[player - 1] = "Team Army"
				other.team1[player - 1] = 12
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1895275607:
				other.team[player - 1] = "Team Army"
				other.team1[player - 1] = 12
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2241098230:
				other.team[player - 1] = "Team Army"
				other.team1[player - 1] = 12
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1913517643:
				other.team[player - 1] = "Pink Posse"
				other.team1[player - 1] = 13
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2112112255:
				other.team[player - 1] = "Pink Posse"
				other.team1[player - 1] = 13
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2157918622:
				other.team[player - 1] = "Pink Posse"
				other.team1[player - 1] = 13
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2273636433:
				other.team[player - 1] = "RenTeam19"
				other.team1[player - 1] = 14
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2112112255:
				other.team[player - 1] = "RenTeam19"
				other.team1[player - 1] = 14
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2157918622:
				other.team[player - 1] = "RenTeam19"
				other.team1[player - 1] = 14
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2063121680:
				other.team[player - 1] = "RuberCrew"
				other.team1[player - 1] = 15
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2142662749:
				other.team[player - 1] = "RuberCrew"
				other.team1[player - 1] = 15
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2198210310:
				other.team[player - 1] = "RuberCrew"
				other.team1[player - 1] = 15
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2166057791:
				other.team[player - 1] = "Team TKS Soup"
				other.team1[player - 1] = 16
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2201608216:
				other.team[player - 1] = "Team TKS Soup"
				other.team1[player - 1] = 16
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2263955842:
				other.team[player - 1] = "Team TKS Soup"
				other.team1[player - 1] = 16
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2105527362:
				other.team[player - 1] = "Team Disjoint"
				other.team1[player - 1] = 17
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2144710708:
				other.team[player - 1] = "Team Disjoint"
				other.team1[player - 1] = 17
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1906134855:
				other.team[player - 1] = "Team Disjoint"
				other.team1[player - 1] = 17
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1966516921:
				other.team[player - 1] = "Team Blaboa"
				other.team1[player - 1] = 18
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2064444531:
				other.team[player - 1] = "Team Blaboa"
				other.team1[player - 1] = 18
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1978869652:
				other.team[player - 1] = "Team Blaboa"
				other.team1[player - 1] = 18
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2202646888:
				other.team[player - 1] = "Team Eggdog"
				other.team1[player - 1] = 19
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1932454633:
				other.team[player - 1] = "Team Eggdog"
				other.team1[player - 1] = 19
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1892960445:
				other.team[player - 1] = "Team Eggdog"
				other.team1[player - 1] = 19
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1871989159:
				other.team[player - 1] = "Bug Gang"
				other.team1[player - 1] = 20
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 1995944345:
				other.team[player - 1] = "Bug Gang"
				other.team1[player - 1] = 20
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2199519462:
				other.team[player - 1] = "Bug Gang"
				other.team1[player - 1] = 20
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 1904437331:
				other.team[player - 1] = "A2Z"
				other.team1[player - 1] = 21
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2108764588:
				other.team[player - 1] = "A2Z"
				other.team1[player - 1] = 21
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2229887722:
				other.team[player - 1] = "A2Z"
				other.team1[player - 1] = 21
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2167624888:
				other.team[player - 1] = "Seeds of Aether"
				other.team1[player - 1] = 22
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2149325219:
				other.team[player - 1] = "Seeds of Aether"
				other.team1[player - 1] = 22
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2109083580:
				other.team[player - 1] = "Seeds of Aether"
				other.team1[player - 1] = 22
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
		
			case 2282173822:
				other.team[player - 1] = "woag"
				other.team1[player - 1] = 23
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 2
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2283888145:
				other.team[player - 1] = "woag"
				other.team1[player - 1] = 23
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 3
				break;
			case 2284823424:
				other.team[player - 1] = "woag"
				other.team1[player - 1] = 23
				other.actor[player * 2 - 2] = other.team1[player - 1] * 3 + 1
				other.actor[player * 2 - 1] = other.team1[player - 1] * 3 + 2
				break;
			default: 
				other.select[player - 1] = asset_get("empty_sprite")
				other.icon[player - 1] = asset_get("empty_sprite")
				other.team[player - 1] = "Team Workshop"
				other.team1[player - 1] = 24
				break;
		}
	}
	
	
	
	// set up bg chars
	
	for (var cur = 0; cur < array_length(bg_chars); cur++) with bg_chars[cur]{
		var me = self;
		var article = other;
		switch other.actor[cur] {

		    case -4: // Lonely
		        with article me.sprite_index = asset_get("empty_sprite")
		    break;
		
		    case 1: // Chef
		        with article me.sprite_index = sprite_get("idle01")
		        animSpeed = .1
		    break;
		    case 2: //Valk
		        with article me.sprite_index = sprite_get("idle02")
		        animSpeed = .1
		    break;
		    case 3: //
		        with article me.sprite_index = sprite_get("idle03")
		        animSpeed = .05
		    break;
		
		    case 4: //Bluey
		        with article me.sprite_index = sprite_get("idle04")
		        animSpeed = .14
		    break;
		    case 5: //Big Yoshi
		        with article me.sprite_index = sprite_get("idle05")
		        animSpeed = .12
		    break;
		    case 6: //BlueyBot
		        with article me.sprite_index = sprite_get("idle06")
		        animSpeed = .2
		    break;
		
		    case 7: //Hodan
		        with article me.sprite_index = sprite_get("idle07")
		        animSpeed = .16
		    break;
		    case 8: //Fox
		        with article me.sprite_index = sprite_get("idle08")
		        animSpeed = .125
		    break;
		    case 9: //Falco
		        with article me.sprite_index = sprite_get("idle09")
		        animSpeed = .125
		    break;
		
		    case 10: //Bird Guy
		        with article me.sprite_index = sprite_get("idle10")
		        animSpeed = .2
		    break;
		    case 11: //Archen
		        with article me.sprite_index = sprite_get("idle11")
		        animSpeed = .2
		    break;
		    case 12: //Bird Guy in a Car
		        with article me.sprite_index = sprite_get("idle12")
		        animSpeed = .2
		    break;
		
		    case 13: //
		        with article me.sprite_index = sprite_get("idle13")
		        animSpeed = .08
		    break;
		    case 14: //
		        with article me.sprite_index = sprite_get("idle14")
		        animSpeed = .15
		    break;
		    case 15: //
		        with article me.sprite_index = sprite_get("idle15")
		        animSpeed = .14
		    break;
		
		    case 16:
		        with article me.sprite_index = sprite_get("idle16")
		        animSpeed = .18
		    break;
		    case 17:
		        with article me.sprite_index = sprite_get("idle17")
		        animSpeed = .12
		    break;
		    case 18:
		        with article me.sprite_index = sprite_get("idle18")
		        animSpeed = .21
		    break;
		
		    case 19:
		        with article me.sprite_index = sprite_get("idle19")
		        animSpeed = .160
		    break;
		    case 20:
		        with article me.sprite_index = sprite_get("idle20")
		        animSpeed = .1
		    break;
		    case 21:
		        with article me.sprite_index = sprite_get("idle21")
		        animSpeed = .160
		    break;
		
		    case 22:
		        with article me.sprite_index = sprite_get("idle22")
		        animSpeed = .1
		    break;
		    case 23:
		        with article me.sprite_index = sprite_get("idle23")
		        animSpeed = .15
		    break;
		    case 24:
		        with article me.sprite_index = sprite_get("idle24")
		        animSpeed = .1
		    break;
		
		    case 25:
		        with article me.sprite_index = sprite_get("idle25")
		        animSpeed = .23
		    break;
		    case 26:
		        with article me.sprite_index = sprite_get("idle26")
		        animSpeed = .15
		    break;
		    case 27:
		        with article me.sprite_index = sprite_get("idle27")
		        animSpeed = .1
		    break;
		
		    case 28:
		        with article me.sprite_index = sprite_get("idle28")
		        animSpeed = .09
		    break;
		    case 29:
		        with article me.sprite_index = sprite_get("idle29")
		        animSpeed = .09
		    break;
		    case 30:
		        with article me.sprite_index = sprite_get("idle30")
		        animSpeed = .09
		    break;
		
		    case 31:
		        with article me.sprite_index = sprite_get("idle31")
		        animSpeed = .1
		    break;
		    case 32:
		        with article me.sprite_index = sprite_get("idle32")
		        animSpeed = .1
		    break;
		    case 33:
		        with article me.sprite_index = sprite_get("idle33")
		        animSpeed = .1
		    break;
		
		    case 34:
		        with article me.sprite_index = sprite_get("idle34")
		        animSpeed = .025
		    break;
		    case 35:
		        with article me.sprite_index = sprite_get("idle35")
		        animSpeed = .15
		    break;
		    case 36:
		        with article me.sprite_index = sprite_get("idle36")
		        animSpeed = .7
		    break;
		
		    case 37:
		        with article me.sprite_index = sprite_get("idle37")
		        animSpeed = .1
		    break;
		    case 38:
		        with article me.sprite_index = sprite_get("idle38")
		        animSpeed = .1
		    break;
		    case 39:
		        with article me.sprite_index = sprite_get("idle39")
		        animSpeed = .15
		    break;
		
		    case 40:
		        with article me.sprite_index = sprite_get("idle40")
		        animSpeed = .13
		    break;
		    case 41:
		        with article me.sprite_index = sprite_get("idle41")
		        animSpeed = .172
		    break;
		    case 42:
		        with article me.sprite_index = sprite_get("idle42")
		        animSpeed = .15
		    break;
		
		    case 43:
		        with article me.sprite_index = sprite_get("idle43")
		        animSpeed = .1
		    break;
		    case 44:
		        with article me.sprite_index = sprite_get("idle44")
		        animSpeed = .08
		    break;
		    case 45:
		        with article me.sprite_index = sprite_get("idle45")
		        animSpeed = .125
		    break;
		
		    case 46:
		        with article me.sprite_index = sprite_get("idle46")
		        animSpeed = .1
		    break;
		    case 47:
		        with article me.sprite_index = sprite_get("idle47")
		        animSpeed = .15
		    break;
		    case 48:
		        with article me.sprite_index = sprite_get("idle48")
		        animSpeed = .1
		    break;
		
		    case 49:
		        with article me.sprite_index = sprite_get("idle49")
		        animSpeed = .1
		    break;
		    case 50:
		        with article me.sprite_index = sprite_get("idle50")
		        animSpeed = .1
		    break;
		    case 51:
		        with article me.sprite_index = sprite_get("idle51")
		        animSpeed = .1
		    break;
		
		    case 52:
		        with article me.sprite_index = sprite_get("idle52")
		        animSpeed = .2
		    break;
		    case 53:
		        with article me.sprite_index = sprite_get("idle53")
		        animSpeed = .15
		    break;
		    case 54:
		        with article me.sprite_index = sprite_get("idle54")
		        animSpeed = .15
		    break;
		
		    case 55:
		        with article me.sprite_index = sprite_get("idle55")
		        animSpeed = .1
		    break;
		    case 56:
		        with article me.sprite_index = sprite_get("idle56")
		        animSpeed = .085
		    break;
		    case 57:
		        with article me.sprite_index = sprite_get("idle57")
		        animSpeed = .08
		    break;
		
		    case 58:
		        with article me.sprite_index = sprite_get("idle58")
		        animSpeed = .15
		    break;
		    case 59:
		        with article me.sprite_index = sprite_get("idle59")
		        animSpeed = .15
		    break;
		    case 60:
		        with article me.sprite_index = sprite_get("idle60")
		        animSpeed = .15
		    break;
		
		    case 61:
		        with article me.sprite_index = sprite_get("idle61")
		        animSpeed = .18
		    break;
		    case 62:
		        with article me.sprite_index = sprite_get("idle62")
		        animSpeed = .13
		    break;
		    case 63:
		        with article me.sprite_index = sprite_get("idle63")
		        animSpeed = .15
		    break;
		
		    case 64:
		        with article me.sprite_index = sprite_get("idle64")
		        animSpeed = .15
		    break;
		    case 65:
		        with article me.sprite_index = sprite_get("idle65")
		        animSpeed = .15
		    break;
		    case 66:
		        with article me.sprite_index = sprite_get("idle66")
		        animSpeed = .25
		    break;
		
		    case 67:
		        with article me.sprite_index = sprite_get("idle67")
		        animSpeed = .25
		    break;
		    case 68:
		        with article me.sprite_index = sprite_get("idle68")
		        animSpeed = .2
		    break;
		    case 69:
		        with article me.sprite_index = sprite_get("idle69")
		        animSpeed = .21
		    break;
		
		    case 70:
		        with article me.sprite_index = sprite_get("idle70")
		        animSpeed = .13
		    break;
		    case 71:
		        with article me.sprite_index = sprite_get("idle71")
		        animSpeed = .13
		    break;
		    case 72:
		        with article me.sprite_index = sprite_get("idle72")
		        animSpeed = .13
		    break;
		
		}
	}
	
	
	
	loaded = 1;
}



for (var cur = 0; cur < array_length(bg_chars); cur++) with bg_chars[cur]{
	image_index += animSpeed;
}