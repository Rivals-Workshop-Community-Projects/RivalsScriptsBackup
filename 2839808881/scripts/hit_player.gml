// code for kamehameha

if(my_hitboxID.attack == AT_JAB){
	if(my_hitboxID.hbox_num == 6){
		window = 9;
		window_timer = 0;
		destroy_hitboxes();
	}
}

if(my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_COPY_FIRE){
	sound_play(asset_get("sfx_blow_heavy2"));
	sound_play(asset_get("sfx_burnapplied"));
}

if(my_hitboxID.attack == AT_USTRONG){
	if(my_hitboxID.hbox_num == 4){
		sound_play(asset_get("sfx_blow_medium3"));
		sound_play(sound_get("sfx_krdl_sword_blow1"));
	} else {
		sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.65, 1.3);
		sound_play(sound_get("sfx_krdl_sword_blow1"), false, noone, 0.65, 1.3);
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	sound_play(asset_get("sfx_blow_heavy2"));
	sound_play(asset_get("sfx_blow_medium3"));
	sound_play(sound_get("sfx_hit_kirby_hard"));
}

if(my_hitboxID.attack == AT_NSPECIAL){
	/*
    if(my_hitboxID.hbox_num == 1 && hit_player_obj.hitstun > 0 && state != PS_HITSTUN && !instance_exists(grabbedtarget)){
    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
    	window = 2;window_timer = 0;nspec_grabbed = true;sound_stop(nspec_sound);
        hit_player_obj.free = true;hit_player_obj.orig_knock = 0;grabbedtarget = hit_player_obj;
        hit_player_obj.y = y-10;hit_player_obj.x = x+(50*spr_dir);hit_player_obj.visible = false;
        hit_player_obj.should_make_shockwave = false;sound_play(grab_sfx);
        destroy_hitboxes();
    }
    if(hit_player_obj == grabbedtarget){
	    if(my_hitboxID.hbox_num == 2 && hit_player_obj.hitstun > 0){
	    	hit_player_obj.visible = true;
	        grabbedtarget2 = grabbedtarget;grabbedtarget = noone;
	    }
    }
    */
    //Nspecial Stuff I Guess :3
	if(my_hitboxID.hbox_num == 4 && hit_player_obj.hitstun > 0 && state != PS_HITSTUN){
		sound_play(sound_get("nspecial_down_ability"))
		
		var fx = spawn_hit_fx(x, y - 14, ability_get_fx);
		fx.depth = hit_player_obj.depth + 1;
		
		if variable_instance_exists(hit_player_obj, "is_TCG_Kirby") && variable_instance_exists(hit_player_obj, "TCG_Kirby_Copy"){//Checking to see if the other Kirby has a Copy Ability
			//print(hit_player_obj.TCG_Kirby_Copy);
			
			var stolenAbility = hit_player_obj.TCG_Kirby_Copy;
			
			TCG_Kirby_Copy = stolenAbility;
			
			hit_player_obj.abilityStolenTracker = 3;
		} else {
			//
		}
		if variable_instance_exists(hit_player_obj, "TCG_Kirby_Copy"){
			TCG_Kirby_Copy = hit_player_obj.TCG_Kirby_Copy;
		}else{
			switch(real(hit_player_obj.url)){
				default:
					if (real(hit_player_obj.url) > 20){
							//TCG_Kirby_Copy = 1 + random_func(1, 15, true);
							//sound_play(asset_get("mfx_star"), false, noone, 1.5, 1)
							TCG_Kirby_Copy = -1;
							mixCurrSelected = 1 + random_func(1, 15, true); //Random
							sound_stop(sound_get("nspecial_down_ability"))
					}
				break;
				case 694206969696: //Character has no URL
				case -1: //Mix
					//Grants Kirby Mix.
					case 1985996538: //Ditto
					case 1883576466: //Pokemon Ranger
					case 2664982578: //Egg?
					case 2656419045: //Qua Mario
					case 1996010699: //Suitcase
					case 2776798757: //Mega Man X
					case 1884573731: //Classic Mega Man
					case 1892516249: //Mega Man X
					case 1890261108: //Mega Man X (LEGACY)
					case 2043406919: //Sprite Megaman
					case 2408200095: //Mega Man.EXE
					case 2469742715: //Ben 10
					case 2819584604: //Balanced Mega Man
					case 1987236304: //NES Kirby
					case 1868756032: //Kirby (luna)
					case 2133564470: //Adeleine
					case 2426361313: //Nagito Komaeda
					case 2081164436: //Doc Robot
					case 2635326464: //Mario Kart (ft. Shy Guy)
					case 2652079640: //Shrek in a kart
					case 2094681709: //Bird Guy in a Car
					case 2686241533: //MonkeyCar
					case 2250055008: //Venom SST
					case 2443231956: //Waluigi
					case 1960787130: //Waluigi
					case 1895666616: //Division
					case 2001969960: //The Worst
					case 2615647984: //SSL Kirby
					case 2824279381: //SSL Mega Man
					case 2667789015: //Eevee [Super Smash Land]
					case 2855515151: //Dazz
					case 2848125153: //Mr Monopoly
					case 2846483965: //Blissey
					case 2859046287: //Tester the Template Man
					case 2839808881: //Kirby
					case 2868367722: //X parasite
					case 2868962262: //Charlie Brown
					case 2893413371: //Epala
					case 2893272211: //Person
					case 2890017650: //Scampton
					case 2885950817: //Mr Brown
					case 2876135889: //Doflamingo
					case 2874556373: //SSL Bad Ideas
					case 2871078296: //Mega Man (2022)
					case 2869759049: //Nonsense
					case 2904815192: //Mr. Monopoly
					case 2924885818: //Paimon
					case 2938398093: //Bort "The Lad" Yoshi
					case 2936638505: //Sara Chidouin
					case 2947499397: //John Dice
					case 2945796136: //Harold
					case 2949585003: //GameShow Harold
					case 2944933385: //Pac-Man
					case 3013370785: //TotK Link
					case 3006912885: //The Collector
					case 2997509357: //Bug Catcher Samurai
					case 2993620338: //Jetie
					case 2968712626: //Michiru Kagemori
					case 2967763760: //Squishball
					case 2965317447: //Scug
					case 3115336321: //Little Runmo
					case 3071513443: //Element Master (Element Wars)
					case 3061305907: //Elemental Robloxian
					case 3055856012: //Dice
					case 3042128211: //Irlandian Monke
					case 3029027358: //SSL Dice
					case 3023153445: //SSL Knightmare
					case 3114249856: //Literally Nothing
						TCG_Kirby_Copy = -1;
						mixCurrSelected = 1 + random_func(1, 15, true); //Random
					sound_stop(sound_get("nspecial_down_ability"))
				break;
				
				case CH_ZETTERBURN: //Zetterburn
				case CH_FORSBURN: //Forsburn
				case 2668282910: //Blaziken
				case 2558467885: //Dingodile
				case 2311095319: //Mario
				case 2078587302: //Mario
				case 1870580396: //Mario
				case 1875532630: //Mario & Luigi
				case 2227633571: //Neo Mario
				case 1987225905: //Re-balanced Mario
				case 1870768156: //Melee Mario
				case 2173774411: //Fire
				case 2306690997: //Fire 2
				case 2660260671: //Litwick
				case 2241629736: //Pyro
				case 2104611987: //Pyro (old, outdated version)
				case 2110996330: //Chef
				case 1899103481: //Targma
				case 2237553996: //Targma (pre-patch)
				case 2390129847: //Amber
				case 2669653036: //Litleo
				case 2382224292: //Scarlet
				case 2069283406: //Alex Ashikaga
				case 2329107619: //Flandre Scarlet
				case 1961215248: //Fidget
				case 2241098230: //Rykenburn
				case 2154720280: //Nolan Dolal
				case 2199519462: //Amarelle
				case 2813238060: //Kitara the Spirit Flame
				case 2229756767: //Blaze the Cat
				case 2184682009: //G.B.A.
				case 2168492612: //Colonel Sanders
				case 2089363375: //Miko Mitama
				case 1879898363: //Agunimon V1.2
				case 1895062336: //TerriFried
				case 2365597658: //Kyort
				case 1890040463: //Agumon
				case 2835381290: //Super (V2)
				case 1890239227: //Guilmon
				case 2207197597: //Bowser
				case 1883546583: //Ken
				case 2257020796: //Literal Sun
				case 2063827725: //Angry Sun
				case 2605468610: //Exetior
				case 2013306839: //Tahu
				case 1958584630: //Blanked Woomy
				case 1908827075: //Agni
				case 2646935795: //Chef Ethan Cat
				case 2599770065: //Toast
				case 2775288890: //Sol
				case 2179688851: //Peppino
				case 2191935537: //Peppino from Pizza Tower (Discontinued)
				case 1870511411: //Luigi
				case 2342251239: //Flamingtorpedo
				case 1890617624: //Ronald McDonald
				case 2068156676: //Balanced Ronald
				case 2037682193: //King Bowser (Version 1)
				case 2157946297: //Rorschach
				case 2497580275: //Carcossant
				case 2130407920: //Spike the Dragon
				case 1960200333: //Fry
				case 2628771284: //Neco Arc
				case 1886936983: //Squaggies's Grandma
				case 2700537645: //Gordon Ramsay
				case 2154830630: //Hyperball
				case 2242316629: //Infernape
				case 2007531004: //SoGGy
				case 1893494156: //The Stove
				case 2828986688: //Emoji
				case 1882640442: //Nii
				case 1908827075: //Agni
				case 2778789055: //Po & Gumbo
				case 2146092294: //(OLD) Cardinal
				case 2391875424: //Cardinal
				case 2174242407: //100% Accurate Luigi
				case 2007516296: //100% Accurate Fire
				case 2608971355: //SSL Cardinal
				case 2612623898: //SSL Rykenburn
				case 2611384650: //SSL Bowser
				case 2624077871: //SSL Funghee
				case 2811006507: //SSL G.B.A
				case 2262699993: //Super Smash Land Mario
				case 2824997069: //SSL Ronald Mcdonald
				case 2845587100: //Torchlight Zombie
				case 2860024078: //DreadBeak
				case 2860398151: //Kodiak [DE]
				case 2108895293: //Lyca
				case 2833804206: //R2-D2
				case 2801831547: //Rin Kaenbyou
				case 2448990688: //Scoville
				case 2882474181: //Lampent
				case 2885762133: //Brook
				case 2870524088: //Yonko Luffy
				case 2906514220: //Kyo Kusanagi
				case 2904498757: //Peppino
				case 2904400792: //LDR 100
				case 2912277205: //Cardinal [LEGACY]
				case 2929660722: //MeiMay
				case 2936487814: //100% Roy
				case 2933305929: //Hotdog
				case 2932865352: //Portemkin + R
				case 2945062156: //Mario
				case 2944933385: //Mario
				case 3001203317: //Reptar
				case 2993281658: //Papa Louie
				case 2987065763: //Masky
				case 2977263722: //Bully
				case 2968483364: //Fujiwara no Mokou
				case 2962798543: //Bowser
				case 2956179852: //Hotel Mario
				case 3115440130: //Rhyolis
				case 3084983341: //Voidburn
				case 3079674078: //Kuuga
				case 3038660221: //Sproinks
				case 3032623758: //Sailee
				case 3028992832: //K'
				case 3120109326: //100% accurate Pyra
				case 3122481848: //Bowsette
					TCG_Kirby_Copy = 1; //Fire
				break;
					
				case CH_ORI: // Ori
				case 1908278153: //Magicka Wizard
				case 2006384286: //Competitive Wizard
				case 2173232702: //Felicia
				case 2548133461: //Timmy Turner
				case 2108895293: //Lumina
				case 2396618743: //Terra
				case 2263955842: //Reimu Hakurei
				case 2019721304: //Reimu Hakurei - Touhou Challenger Pack 2
				case 2630469587: //Youmu Konpaku
				case 2588206158: //Danmakubert
				case 1901838044: //Suika
				case 2319829693: //Comp-tae
				case 2725198658: //Shantae
				case 2028755883: //Shantae
				case 2067634368: //Shantae
				case 1899630967: //Sailo Moon (90's)
				case 1874261698: //Rivals of Gensokyo - Reimu Hakurei
				case 1919298528: //Reisen Udongein Inaba
				case 2802423078: //Kaiero
				case 1942628561: //[OLD] Marisa Kirisame - Touhou Challenger Pack 1
				case 2202748748: //Patchouli Knowledge - Touhou Challenger Pack 3
				case 2778643721: //Magolor
				case 1876715794: //Simon (NES)
				case 2391877533: //Banana
				case 2663470126: //Gaia
				case 2626409326: //Revamped Yuuto Ichika
				case 2469588541: //Lukastar
				case 1883800657: //Magus
				case 2498050066: //Hit
				case 2189317686: //Soma Cruz
				case 2130813490: //Soma Cruz
				case 2746228945: //Aurae
				case 1898573785: //Okuu
				case 2406439382: //Seija Kijin
				case 2827402568: //Aegiomon
				case 2773863837: //Luz
				case 1897152603: //Lilac
				case 2697174282: //Lilac the Dragon Girl
				case 2500535242: //I. M. Meen
				case 1882960192: //Bluey
				case 2430670388: //Gim (Kirby Super Star Ultra)
				case 1904437331: //Astra
				case 2239606881: //Boss!Astra
				case 2471439958: //Jaunted REDUX
				case 2396918792: //Marcus
				case 2802254223: //Darc Sharc
				case 2741675272: //Fire Emblem Sage
				case 2187506252: //[OLD] Shirx
				case 2599438516: //Shyrx
				case 2668132409: //Braixen
				case 2059568292: //Mercedes
				case 2806844174: //Dutch the Angel Dragon
				case 2644734546: //Jevil
				case 2462380710: //Jevil (W/ Chair)
				case 2728350602: //Elijah
				case 2028755883: //Shantae
				case 2694422762: //Lucy
				case 2689022592: //Tengia
				case 2202748748: //Pachouli Knowledge
				case 2802424939: //Sakuya Izayoi
				case 2116677309: //Glyde (OLD)
				case 1910412302: //Glyde, the Mischeivous Mage
				case 1888116485: //Marisa Kirisame, the Ordinary Magician
				case 2494517317: //Marisa Kirisame
				case 2728346517: //God
				case 2209519554: //Wrys
				case 2801908639: //Marisa
				case 2589701676: //Brugalo
				case 2720972859: //Blaze
				case 2720972859: //Blaze (Legacy)
				case 2209317346: //Prince Fluff
				case 2201550635: //#starboard
				case 2001529199: //100% accurate kirbo
				case 2616801621: //SSL Lan
				case 2623861263: //SSL Yukari
				case 2677366809: //SSL Black Mage
				case 2642407746: //SSL Christopher Belmont
				case 2710807847: //SSL FE Mage
				case 2832180403: //SSL Junko
				case 2857841114: //Impmon
				case 2849134176: //Mima
				case 2859169439: //Calamity Anne
				case 2862617017: //Sanae Kochiya
				case 2864785679: //Miracle
				case 2892961686: //Frieza
				case 2892046709: //The Shepherd
				case 2879813992: //Aerith
				case 2876868838: //SSL Lorna
				case 2870523164: //Sengoku
				case 2899563373: //Palutena
				case 2917685449: //Mercy
				case 2932444130: //Emmanuel, Artificial Angel
				case 2931556217: //Remilia Scarlet
				case 2906927565: //Dispenser
				case 2912079281: //Chopper
				case 2611020513: //Saki
				case 2997533690: //Toru Hagakure
				case 2996814210: //Lina Inverse
				case 2972048421: //Sash Lilac (FP2)
				case 3108442138: //Fumo Marisa
				case 3025762664: //Limitless Sakuya
				case 3122192177: //Aerith Definitive Edition
					TCG_Kirby_Copy = 2; //Beam
				break;
				
				case CH_ELLIANA: //Elliana
				case 2802530261: //Samus Aran
				case 2804295068: //Peashooter
				case 2501310527: //Bullet Bill
				case 2318304706: //Geno
				case 1872745243: //Geno
				case 2012517731: //Old Sans
				case 1869814191: //Sans
				case 2058032269: //Cuphead
				case 2162809940: //Air Batter
				case 1941825892: //Fox
				case 2043423246: //100% Decrepit Fox
				case 2600420225: //Samus (Super Metroid)
				case 2065753090: //Jank Samus
				case 2048893131: //Spamus
				case 1870511879: //E-102 Gamma
				case 2249417003: //Ralsei (with gun)
				case 1886910961: //Diddy Kong
				case 1872583942: //King K. Rool
				case 2274954061: //Cosign
				case 1892030667: //Gustav
				case 2550930011: //Albus
				case 2534202008: //Kinunosu
				case 2522396755: //Sackboy
				case 1899601005: //Remilia Scarlet
				case 1889762220: //Protoman
				case 1905208125: //Hime Daisho
				case 2397086842: //Bat Bat
				case 2836831124: //Bat Bat Junpei
				case 2801845930: //Spamton Neo
				case 2429452990: //Duck
				case 2628100904: //Gangsta Mario
				case 2005122629: //Aigis (P4AU)
				case 1879724331: //Aigis Version 1.01
				case 2787919458: //Sanic
				case 2453146011: //Monarch
				case 2727275783: //Garrett
				case 2396911824: //Cubitt
				case 2396817161: //Klockwurth
				case 2807290565: //Flonne
				case 1875062006: //Clover
				case 2429871244: //Competitive Clover
				case 2142327683: //Competitive Clover
				case 2561479115: //Rokesha
				case 2652644223: //Future Ducky
				case 1965632965: //Bullet-Kin
				case 2010033560: //Literally (Base) Joker
				case 2670064066: //Master Chief
				case 2605449555: //Cann
				case 2557400455: //Fumo Reisen
				case 2097929078: //Leona
				case 2200150484: //Master Higgins
				case 2518983831: //Jacket
				case 2833488941: //Jacket "Wrong Number" (Legacy)
				case 2426856576: //Starter
				case 2113500915: //Engineer
				case 2085832560: //Katie Helga Vladimir
				case 2269841346: //Novice N
				case 2066970512: //Claire Redfield
				case 1871994735: //Gun
				case 2165685112: //Dr.Disrespect
				case 2229329794: //Gyoshi
				case 2387813926: //Airwing
				case 2193672919: //Jak and Daxter (Outdated)
				case 2805310809: //Jak and Daxter (UPDATED)
				case 2468725612: //Buffy
				case 1910573552: //Green Arrow
				case 2118432867: //The Invincible Iron Man
				case 2607332790: //A Wii with a Gun
				case 1885711901: //KOS-MOS v1.0
				case 2287107238: //Jett
				case 2596284015: //Setsuka Chiebukuro
				case 2819136539: //Nagisa Shingetsu
				case 2341451356: //Inkling(Fighter)
				case 2526316616: //CV Wakamoto
				case 1979057480: //Handmade Scout
				case 2144710708: //Owen
				case 2665316582: //Kakyoin Noriaki
				case 2248519164: //Angue
				case 2133495787: //Blamblam
				case 2219848760: //Finik
				case 2118432867: //The Invincible Iron Man
				case 1882891218: //Naoto S
				case 2205638306: //Sir Banana III
				case 2073574184: //Rebel Soldier from Metal Slug
				case 2332818521: //Genesect
				case 1871153050: //100% Accurate Fox
				case 2000855966: //100% Accurate Wolf
				case 2698629822: //SSL Mech
				case 2632744427: //SSL Samus
				case 2685568594: //SSL Gameboy with a gun
				case 2624794183: //SSL Bullet Kin
				case 2609094213: //SSL Cubitt
				case 2814563470: //SSL Future Ducky
				case 2616689091: //SSL Wii Play Tanks
				case 2825525670: //SSL Lily
				case 2822424888: //SSL Fox
				case 2828467031: //SSL Wolf
				case 2117584528: //Triple Deluxe Kirby
				case 2841776404: //Susie
				case 2851611940: //Rico
				case 2855638778: //Soldier
				case 2855135577: //SSL Geno
				case 2846120094: //Doraemon
				case 2860354024: //Hikari Kurogane
				case 2860421116: //Justin, a guy
				case 2894736308: //The Batter
				case 2888933786: //Kaptain K. Rool
				case 2877329670: //Finger
				case 2880168350: //SSL Battle Tonk
				case 2872760470: //Snaily Snail
				case 2871758528: //Jacket (Remix)
				case 2911048812: //Dalek
				case 2906916649: //Goggles
				case 2896434873: //Go-Lucky
				case 2915820228: //Mario With a Gun
				case 2921407044: //Klock DE
				case 2930825593: //Vaughn
				case 2928639593: //Chaos Gamma
				case 2940946477: //Emmett Graves
				case 2998979613: //Guardian Stalker
				case 2996544919: //Louis
				case 2995463890: //Hol Horse
				case 2985881920: //Balanced Bat
				case 2970233280: //75% Fox
				case 2970123570: //Lil kill3r
				case 3120902361: //Desperado
				case 3120854872: //Archarid, the Betrayer of Fate
					TCG_Kirby_Copy = 3; //Ranger
				break;
				
				case CH_OLYMPIA: //Olympia
				case 2035128973: //Lucario
				case 2606413637: //Goku
				case 1870393754: //DBS Goku
				case 2444765261: //Goku
				case 1956300176: //Goku
				case 1869351026: //Kid Goku
				case 2599985357: //Gohan
				case 2010815674: //Gohan (Future)
				case 2561615071: //Nappa
				case 2368498859: //Bodoque
				case 1906043536: //Krillin
				case 2601866973: //Gogeta
				case 2790121377: //Gogeta Blue
				case 2824667862: //SSJ4Gogeta
				case 2652404567: //Perfect Cell
				case 2438339912: //Neptendo e
				case 2195482758: //Tenru
				case 2729650316: //Bailey Rosworth
				case 1899673724: //Sonic
				case 1920630826: //Sonic the Hedgehog
				case 2157918622: //Cupcake
				case 2493767015: //Little Mac
				case 2815765061: //Scott Pilgrim
				case 2261859841: //Hong Meiling
				case 2665458747: //Croagunk
				case 2149361463: //Ryu
				case 1869652357: //Ash
				case 2238223347: //Ash (v1)
				case 2310503459: //Welltaro
				case 2022986094: //Captain Falcon
				case 2034474077: //Mii Brawler
				case 1879084193: //Renamon
				case 2354000869: //Sheftu
				case 2567895623: //Leon
				case 2711346420: //AiAi
				case 2310580951: //64 Mario
				case 2000423186: //Saiyanbert
				case 1899058858: //Sakura Haruno
				case 2005036466: //Penny 
				case 2160036641: //Penny (Lite)
				case 2575362733: //Marshadow
				case 2636462398: //Alex
				case 2802388684: //Naruto Uzumaki
				case 1890587914: //Naruto Uzumaki
				case 2661529812: //Naruto (Shippuden)
				case 2007569208: //Goemon
				case 2661529955: //Sasuke (Shippuden)
				case 1999927780: //Sasuke Uchiha
				case 2160644191: //Old Man
				case 2669553388: //Old Man DE
				case 2600720374: //Dexter
				case 2608092724: //Pawnchie
				case 2820380997: //RoeKoko
				case 2766251363: //Ristar, the Shooting Star
				case 2167302754: //Donkey Kong
				case 2216878244: //Hau
				case 1872745659: //Riki (River City Girls)
				case 1870630263: //Akuma
				case 2606490200: //Gigachad
				case 2235849086: //Cinder [Old]
				case 2459515691: //Cinder 2
				case 2347473979: //Tifa
				case 1873594602: //Jotaro Kujo
				case 1893691799: //Jotaro
				case 2606466824: //Incineroar
				case 2229901990: //Sol Badguy
				case 2239235956: //Olympia(Old Patch)
				case 1943759600: //Olympia
				case 2610451122: //Homer Simpson
				case 1878622774: //Flying Man
				case 2502476068: //Matt (Wii Sports)
				case 2679115879: //Ryu
				case 2416682940: //Kenshiro
				case 2137899246: //Terry
				case 2192353397: //Lopunny
				case 2304280005: //Chris Hayabusa
				case 2054353520: //Zangief
				case 2377045385: //Levi
				case 2787839979: //Z Broly
				case 2226876875: //Kitsuga
				case 2024548449: //Fightbert
				case 2396919125: //Kodiak
				case 2378803967: //Graff from: BROK the InvestiGator 1.1
				case 2370990358: //BROK from: BROK the InvestiGator 1.1
				case 1944570847: //Agent P
				case 2014785155: //Terra
				case 2496614768: //Mr.Red
				case 2801870442: //Mii Sportsman
				case 2552944536: //Kakashi Hatake
				case 2237215391: //Scourge the Hedgehog
				case 2073304908: //Guile
				case 2631396518: //El Chavo
				case 2666559124: //Foreman Spike
				case 2499294668: //The Incredible Hulk
				case 2630080257: //HAKU
				case 2441107153: //Rage Ironhead
				case 2138471810: //KO
				case 2025308804: //Rayman
				case 2834467988: //Maurice
				case 1895678450: //Dan Hibiki (NGPC)
				case 1910157188: //Iori Yagami (NGPC)
				case 1891386838: //Majin Android 21
				case 1885864228: //Scorpion
				case 1878949757: //Sonic the Hedgehog
				case 2606508459: //Fernet
				case 1900202421: //Sion
				case 2839335343: //Chris
				case 2432114154: //SAI - m
				case 1879057993: //Misako (Complete)
				case 1951304706: //Pocket Akuma (1.0)
				case 1878321844: //Davis-Little Fighter 2
				case 2213827096: //114% accurate Little Mac
				case 2615726792: //SSL Fernet
				case 2619902433: //SSL Machamp
				case 2606457329: //SSL Guile
				case 2817973017: //SSL Bardock
				case 2817994734: //SSL Gogeta SS4
				case 2634588230: //SSL Ryu
				case 2634590776: //SSL Ken
				case 2820949807: //SSL Lucas Ashikaga
				case 2606457201: //SSL Chad
				case 2643494087: //SSL TuQiu
				case 2621721367: //Venus T. (SSL)
				case 2811834417: //SSL Accelgor
				case 2813640023: //SSL Captain Falcon
				case 2618686624: //SSL Matt (Wii Sports)
				case 2838901578: //SSL Sakura
				case 2837684230: //SSL Hotaru
				case 2835728848: //SSL Kyanta
				case 2727225880: //Torren
				case 2857783701: //Hong Meiling
				case 2856260215: //Sandbert with a Tablet
				case 2856139552: //SSF1 Sonic
				case 2851873208: //Jiren
				case 2851873155: //Bardock
				case 2849673475: //Roark
				case 2848736520: //SSL Akuma
				case 2847959446: //Jiren
				case 2861786587: //Bonus Kun
				case 2869345298: //SSL Charlie
				case 2890757258: //Shantae
				case 2880790506: //The Explorer
				case 2885336444: //SSL Brenda
				case 2870520031: //Franky
				case 2910426637: //Father John
				case 2905773757: //Mama-Sony
				case 2919253815: //Manh
				case 2930066171: //Chad DE
				case 2933259400: //Onizaru
				case 2911887442: //Inf1n1te
				case 3005886750: //Choppy
				case 2996967789: //Gunha Sogiita
				case 2996905372: //Krillin
				case 2991295621: //100% Accurate Little Mac
				case 2979414835: //Dan the Man
				case 2983985285: //Dan the Man X
				case 2983344228: //Kiku
				case 2982916979: //Terumi
				case 2982224313: //Jotaro Kujo v2
				case 2978355228: //Felicia (DS)
				case 2968378819: //Monk
					TCG_Kirby_Copy = 4; //Fighter
				break;
				
				case CH_CLAIREN: //Clairen
				case 2812318543: //Zeke & Pandoria
				case 2809557388: //Zero
				case 2606409742: //Link
				case 2397924456: //Akira
				case 2799785099: //Sir Kibble
				case 2121411267: //[OLD] Ryu Hayabusa
				case 2404624900: //Ryu Hayabusa
				case 2397076037: //Vergil Sparda
				case 2520860580: //Boss!Vergil
				case 1901452244: //Frog
				case 2323221757: //Masamune
				case 1867608473: //Kris
				case 2798251869: //Sora
				case 1912328762: //Lyn
				case 2331886064: //Hector
				case 2244131685: //2B
				case 1870530402: //Travis Touchdown
				case 2435343136: //Time Patrol Clairen
				case 1916799945: //Yeetta AhShit- Can't
				case 1869125757: //Sakuya
				case 2460353564: //Limitless Sakuya
				case 1872725241: //Komachi
				case 2802424939: //Sakuya Izayoi
				case 2175214440: //Sakuya Izayoi (Luna Nights)
				case 2570853715: //Fumo Sakuya
				case 2820818386: //The Ninja Turtles
				case 1997619532: //Mayu Ashikaga
				case 2611097458: //FrediS
				case 2490060793: //Barr
				case 2343479756: //Natsumi
				case 2580068632: //Meta Knight
				case 2352725954: //Mii Swordfighter
				case 2097500977: //Scaryami
				case 2372749214: //Seven
				case 1870754213: //Crono
				case 1887721354: //Hsien-Ko
				case 1883654294: //Hsien-Ko 1.1
				case 2605350594: //FLLFFL
				case 1873814192: //Hornet
				case 2284270632: //Xillian
				case 2011567219: //Scizor
				case 2210322072: //Fuki Fujisaki
				case 2148482609: //Sylvanas Windrunner
				case 2784356990: //Skeleton
				case 2415048308: //Mad Dummy
				case 1985013530: //Master Shake
				case 1902768649: //Undyne
				case 1870831102: //Steve
				case 2423063732: //Brawl Buddies
				case 1906134855: //Fancy Pants Man
				case 2069688364: //Levi
				case 2801017927: //Fire Emblem Myrmidon
				case 1913019153: //GeoExe
				case 2833345946: //Reckless Swordsman
				case 2711118611: //King
				case 1891836940: //Johnny (Guilty Gear Petite)
				case 2047413648: //Xenovessel
				case 1876433001: //NES Meta Knight
				case 1973852980: //Alucard
				case 2553802622: //Elrios
				case 2500822911: //Jiro
				case 2661491467: //Stick Figure Byleth
				case 2164231403: //Toon Link
				case 1874927117: //Clood
				case 2426863058: //Smash Toon Link
				case 1874615236: //Meta Knight
				case 2806834874: //Zander
				case 1884539026: //GB Link
				case 2391884007: //Saphrey
				case 2190138604: //Woodie
				case 1875164193: //Zero
				case 2102497760: //Aei&Ou
				case 2747686604: //Omega
				case 2798199714: //Galacta Knight
				case 2224867079: //[OLD] Lognes
				case 2744601817: //Lognes
				case 2450148123: //Annie of the Stars
				case 1890501881: //Ruby Rose
				case 2016628346: //Roy (FireEmblem6)
				case 1924156748: //Marie
				case 1996826325: //Gallahad
				case 2725685819: //Turpix
				case 1906635778: //Landsknecht (Etrian Odyssey IV)
				case 2647466268: //Berdly
				case 2246485325: //Solaire
				case 2381107771: //Goblin Slayer
				case 2192083740: //Isalink
				case 2183753842: //Taiga Aisaka
				case 1913075798: //Taiga
				case 2169326054: //Cless
				case 2099367798: //NoLegs
				case 2153176245: //Balanced NoLags
				case 2022171690: //Ragnir
				case 2302675649: //Lonin
				case 1945186164: //Girouette (Model Z)
				case 2802914735: //Ayaka Kinoshita
				case 1913869515: //Zetta Ashikaga
				case 2237377751: //Zetta Day 1
				case 1976183668: //Boss!Zetta
				case 2838093668: //Gingerbrave
				case 2211492049: //Orin
				case 1970731843: //100% Accurate Meta Knight
				case 2619953629: //SSL Zero
				case 2630961237: //SSL Sora
				case 2608735064: //SSL Elri
				case 2613831695: //SSL Yukio
				case 2633230690: //SSL Fennek
				case 2613499247: //SSL Hornet
				case 2674619693: //SSL Roy
				case 2606457492: //SSL Marth
				case 2618974476: //SSL Lognes
				case 2650508887: //SSL Lonnie
				case 2620560020: //SSL Sir Kibble
				case 2630841948: //SSL OmegaZ
				case 2606502990: //SSL Cloud Strife
				case 2811835840: //SSL Kris
				case 2732807552: //SSL Eclipse
				case 2620645946: //Super Smash Land Link
				case 2646910723: //SSL Kumaki
				case 2824941156: //SSL Renee
				case 2835975838: //SSL Aegislash
				case 1888737963: //Roob
				case 2504113755: //Nova
				case 2855312440: //Blade Knight
				case 2854022542: //Raiden
				case 2851872940: //Vegito
				case 2848225066: //Yunica Tovah
				case 2847856356: //mans
				case 2844844068: //Mirai Trunks
				case 2868152990: //Nair
				case 2894353323: //Harold
				case 2363013042: //Marselo asaito
				case 2888528091: //Virgo (DE)
				case 2888069461: //Jump King
				case 2885852936: //MaskedMan DE
				case 2876131562: //Shanks
				case 2872371940: //Ven-Rysa
				case 2904732530: //Finn and Jake
				case 2903805649: //Scizor
				case 2902717355: //Hassan
				case 2931357116: //Sora
				case 2931014721: //FE Cavalier
				case 2930520152: //Ike
				case 2934718204: //Hornet
				case 2947656797: //Saphrey (DE)
				case 3004299761: //Yasuo
				case 2956108272: //Donte
				case 3121317288: //Akira Lite
				case 3100431406: //Euden
				case 3071141132: //Gallantmon
				case 3057243137: //Toji Fushiguro
				case 3117959640: //Cloud (LITE)
				case 3066984325: //Cloud
					TCG_Kirby_Copy = 5; //Sword
				break;
					
				case CH_ORCANE: //Orcane
				case CH_RANNO: //Ranno
				case CH_HODAN: //Hodan
				case 2261930847: //Quagsire
				case 2669021076: //Krabby
				case 2657891799: //Greninja
				case 1948572511: //Chaos 0
				case 2811386719: //Wally, the Narwhal
				case 2396961482: //Anglara (Legacy)
				case 2661141982: //Anglara
				case 2801790612: //Pepsi Man
				case 2092141255: //Water Bottle
				case 2605304929: //Daora
				case 1868311414: //Mario Pissing (Legacy)
				case 2606853565: //Mario Pissing 2
				case 2504902865: //Beryl
				case 2663958181: //Bubbles
				case 2493125083: //Mario 63
				case 2665769233: //Goomy
				case 2252430492: //Goomy
				case 1909363909: //Spongebob
				case 2834016310: //Legacy Gawr Gura
				case 2669659046: //Wooper
				case 2669632683: //Sullivan McWellingstone
				case 2551117492: //Parasol
				case 2519664230: //Squirtle
				case 1880512198: //Isaac
				case 2185834832: //Torga
				case 2503681586: //Kash & Mone
				case 1876950538: //Dragon Quest Slime
				case 1872070893: //Teardrop
				case 2003067816: //Pepsi Man
				case 2556142902: //Blackmore
				case 2460301233: //Carp
				case 2038089992: //Panzer
				case 2650444461: //Mudkip
				case 2053027984: //Arle & Carbuncle
				case 1961152642: //Arle Nadja
				case 2311391224: //Cereal Guy
				case 2605468032: //Gawr Gura
				case 2400092760: //Donyoku
				case 2459562158: //Nitori Kawashiro
				case 1902897615: //Pyukumuku
				case 2380605321: //Fezhead
				case 2814093580: //Samson
				case 2135979241: //Magikarp
				case 2504902865: //Beryl
				case 2374761944: //Mari Setogaya
				case 2404896545: //Ms. Maribel
				case 2791224936: //Barry Blobfish
				case 2504123533: //Visselle
				case 2605469904: //Slime
				case 1932308043: //Blobbit
				case 1894175070: //Bidoof
				case 1895522705: //Rimuru
				case 2593144115: //Amaya
				case 2788623012: //Anglario
				case 1899708268: //Fishman
				case 2785856790: //Wailord
				case 2592876898: //Chubbum
				case 2036785817: //Celia
				case 2661352606: //Ray
				case 2020372134: //Flipnote Frog
				case 2802451772: //BrewStew
				case 2802319117: //Wart
				case 2089363375: //Handy
				case 2254931693: //Bonby
				case 2003067816: //Pepsi Man
				case 2092403023: //Balanced Pepsi Man
				case 2142020821: //Bub (Bubble Bobble)
				case 2264285165: //Pepsi Man X
				case 2675703307: //Zoog, the Artificer
				case 2621550766: //SSL Bonby
				case 2630839403: //SSL Azurill
				case 2695651831: //SSL Suwako
				case 2811831971: //SSL Dogyoku
				case 2606495772: //SSL Anglara
				case 2811830799: //SSL Isaac
				case 2801245512: //Chaos 0 (SSL)
				case 2621590112: //SSL Ruby Heart
				case 2815548821: //SSL Whiscash
				case 2649674848: //SSL Spongebob Squarepants
				case 2618692248: //SSL Visselle
				case 2823366767: //SSL Macka
				case 2835668066: //SSL Clawitzer
				case 2841341970: //SSL Yuuma Toutetsu
				case 2843521167: //Pastelle
				case 2852423558: //SSL Samurott
				case 2846298810: //Soap
				case 2606483115: //Galega
				case 2136440419: //Hodan
				case 2291956759: //SAI
				case 2895815326: //Nuclear Gyarados
				case 2895402617: //Mira
				case 2895157780: //Mira (Toilet in Wonderland)
				case 2882711884: //Spongebob Squarepants
				case 2874473566: //Neptune
				case 2896129393: //Rawberry
				case 2910686680: //Laki
				case 2898726970: //Bulldoger
				case 2924333208: //Isaac
				case 2939560813: //Carbon Roller Deco
				case 2938023274: //Deeep(dot)io Shark
				case 3017307600: //Pop Fizz
				case 2961447611: //Pou
				case 2959168073: //Fishmonger Water Tower
				case 2955765677: //Primal Aspid
				case 3118680316: //Awatsu
				case 3118007135: //Wren
				case 3108255942: //Gretchen, the Garden Slug
				case 3079776883: //Kumaki
				case 3066078264: //Ronda - Maiden of the Marsh
				case 3057083829: //Driblee
				case 3122239311: //Syrcub
					TCG_Kirby_Copy = 6; //Water
				break;
					
				case CH_MAYPUL: //Maypul
	            case CH_SYLVANOS: //Sylvanos
				case 2605158956: //Turnip Boy
				case 2813109055: //Guadua
				case 2669611249: //Bellsprout
				case 2682937306: //Cradily
				case 2396720475: //Tomo
				case 2662021036: //Vileplume
				case 2531101335: //Lilligant
				case 2538402112: //Grovyle
				case 1995944345: //Mycolich
				case 2438249735: //Ceae
				case 1915277510: //Cactuar
				case 2404627467: //Anthem
				case 2740664994: //Salad Kill3r
				case 2442689407: //Kix
				case 2182804010: //Lo'Bean
				case 1987270372: //Kart Fighter Toad
				case 2669556039: //Exeggutor
				case 2670103478: //Eventide (Legacy Edition)
				case 2750608544: //Eventide (Definitive Edition)
				case 1940826671: //Toadette
				case 2438896965: //Tomongus
				case 2820404766: //Llligant Plush
				case 2185818102: //Piranha Plant
				case 2385844967: //BredSlayer
				case 2541307662: //Glumpi
				case 2493199361: //Tomo-Climbers
				case 2022244907: //Joshua & Batit
				case 2652983973: //James
				case 2832785375: //Arboris
				case 1973819321: //Orang
				case 1870496977: //Shroob
				case 2448142057: //Cabbage
				case 2459477247: //Maar
				case 2564783566: //Melon Man
				case 1899482269: //Bulbasaur
				case 2367761830: //Orang 2.0 (Rebalanced and Redone)
				case 2250877390: //Tomato dude
				case 2243177350: //Nutwork
				case 2645986725: //Tiny Potato
				case 2605637280: //Dinock w/ Apple
				case 2399014260: //Captain Toad
				case 2642998742: //Tsareena
				case 1887976261: //Annoying Orange
				case 2802539804: //Cloala
				case 2030326269: //Flower
				case 1902685633: //Thwumpkin
				case 2104688882: //Plant 
				case 2706039378: //Orange
				case 2293356872: //Harvest Moo
				case 2456542384: //Drosera
				case 2322322191: //Frisk
				case 2681263209: //SSL Toad
				case 2811834485: //SSL Nuzleaf
				case 2623972516: //SSL Jelly Filed Doughnut
				case 2820782157: //SSL Snorlax
				case 2820864305: //SSL Scoville
				case 2823383968: //SSL Mallow
				case 2838636290: //SSL Peach
				case 2840056931: //SSL Corn Cob Monster
				case 2841541558: //Whispy Woods
				case 2841806861: //Trolley
				case 2854485508: //Mamizou Futatsuiwa
				case 2844696926: //SSL Daisy
				case 2858800302: //Basil
				case 2860125814: //Day 1 Lilligant
				case 2861924796: //Thive
				case 2895805897: //Watermimic
				case 2882828107: //Ghost Pepper
				case 2872343232: //Aria Smite
				case 2909667246: //Villager
				case 2909354429: //Kuuroba
				case 2916041220: //Chomper
				case 2917111020: //Caterpie
				case 2917554895: //Pac-Man
				case 2931502053: //Manzaneitor 3000
				case 2943926573: //nasugrave.test
				case 2941680951: //Spice
				case 2132807608: //DefNotPomme
				case 3018305948: //No. 17
				case 2985844294: //insane david
				case 2964023565: //Piranha Plant
				case 2956181122: //Hotel Luigi
				case 3113310019: //Melon-pult
				case 3122228133: //Pedr
					TCG_Kirby_Copy = 7; //Leaf
				break;
					
				case CH_ETALUS: //Etalus
				case 2801851415: //Frostine
				case 2256318168: //Smol Nozomi
				case 2184970356: //Snom
				case 1920720941: //Madeline
				case 1917630315: //Duff McWhalen
				case 2540199978: //Flake
				case 1882842525: //Club Penguin
				case 2463603004: //Frostbite
				case 2558870474: //Eirlys
				case 2801480574: //Noelle (Snowgrave)
				case 2640185032: //Mora
				case 2806407446: //Frostpaw
				case 2794769419: //Tulutle
				case 2804035497: //Velvet
				case 2456124960: //Nate
				case 2455571836: //Glace
				case 2569667938: //Dio Brando (Part 1)
				case 1950596472: //Ice King
				case 1873681040: //Legacy Papyrus
				case 2100204665: //Papyrus 
				case 2108764588: //Zerra
				case 1868574209: //Daroach
				case 2136624834: //Elice Vuris
				case 2685879123: //Chinchill
				case 1917713379: //Valkyrie
				case 2195328853: //Blue Blob
				case 2039122666: //Sandbert but actually Ice Climbers
				case 1882925496: //Miibolina
				case 2161232426: //Joji Spoon
				case 2055065656: //Santa Claus Jr.
				case 2694282797: //Padoru
				case 1937895226: //Beebo
				case 2336756702: //MiazTheWizard
				case 2552501300: //Gay Fridge
				case 2238937911: //OLD VALKYRIE
				case 2552853220: //Fumo Reimu
				case 2540199978: //Flake
				case 2240638258: //Cowbelly
				case 2027721900: //Oreo
				case 2424030093: //Icey
				case 2398408393: //Ice Cream Nolan
				case 2737869980: //Walter White
				case 2297617172: //64 Kirby
				case 2349281760: //Edric in a dress
				case 2202546422: //Stitch
				case 2820392847: //Kumamon
				case 2813505198: //Chuck the Puck
				case 2831606362: //Freezer
				case 2609489871: //SSL Stitch
				case 2817298335: //SSL Fridge
				case 2815453471: //SSL Drak Vuris
				case 2826523455: //SSL Chilly
				case 2820823219: //SSL Vanillite
				case 2004919133: //Hat Kid
				case 2840918059: //Sub-zero
				case 2830570682: //Tiff
				case 2853643966: //Minion
				case 2860567018: //Fumo Cirno
				case 2868563198: //Polandball
				case 2894541036: //Minion 2.0
				case 2885868624: //Sivi
				case 2904134945: //Noelle Holiday
				case 2917082599: //Madeline
				case 2919516752: //Blue
				case 2923481937: //Wonton
				case 2008886775: //Nero Claudius
				case 1915517948: //Wobbling in Rivals!
				case 2611101267: //D.Smuggler
				case 1870263669: //Cat
				case 3008386442: //Princess Shortcake
				case 2975936663: //Air Hockey
				case 2973687285: //Tweaked Tiff
				case 3117429286: //Christmas Morshu
				case 3087935047: //Toma, the Hardlight Grappler
				case 3038798329: //Patrick
					TCG_Kirby_Copy = 8; //Ice
				break;
					
                case CH_WRASTOR: //Wrastor		
				case 1962084547: //Bird Guy
				case 2229836477: //Nakoruru
				case 2674686461: //Minior
				case 2546990424: //Maverick
				case 2375014666: //Crash Bandicoot
				case 2000028026: //Legacy Crash Bandicoot
				case 1925704707: //Tails
				case 2545216686: //Tails
				case 2128298462: //Tails
				case 2128232080: //[OLD] Tails
				case 2230601893: //gus guy
				case 1926836320: //Archen
				case 2626351533: //Morcilo
				case 2601775097: //Bar Reygard
				case 2101425426: //King Poulion
				case 2663459576: //Feather with Muscles
				case 1960297865: //Classic Sonic the Hedgehog
				case 1899527996: //Dixie Kong
				case 2810373977: //Spacial
				case 2648394023: //Glare
				case 2239335257: //Troops (Old)
				case 1932503649: //Troops
				case 2013408541: //Slashe
				case 2001304257: //Terriermon
				case 2397084269: //Amy
				case 2366698898: //Amy Rose
				case 2202612329: //Feral Boar Guy
				case 2473755975: //Obama Chicken
				case 2218690857: //King Dedede
				case 1978869652: //Bandana Dee
				case 2825520992: //Bandana Dee
				case 2134571731: //Bandana Dee
				case 1870084878: //Bandana Dee
				case 2019961734: //Bandana Waddle Dee
				case 2609147569: //Legacy (Bandana Dee)
				case 1885012816: //Bandana Dee (Old)
				case 2075607017: //Owlaf
				case 2819323637: //Balcone
				case 2185742278: //Super Luigi
				case 1904135776: //Dodrio
				case 2230768772: //Starfy
				case 2521572800: //Opa-Opa
				case 1891309722: //Yoyo
				case 2659051350: //Hunny Queen
				case 2303503800: //Queen the Bee *Old*
				case 2097891733: //Dartha
				case 2222467652: //Bird Luigi
				case 2626146260: //Birgil Covilia
				case 2809558398: //Garlic
				case 2435845169: //Red (Angry Birds)
				case 2221333239: //Business Chicken
				case 2497042632: //War Bord
				case 2502977696: //Woody Woodpecker (Pica-Pau)
				case 1876639101: //Falco(Remix)
				case 2664226338: //Berd
				case 2675727242: //Egghead
				case 2138928729: //Vivillon
				case 2579669410: //Captain Tequila
				case 2006251771: //Falco
				case 2291283221: //Deathwing
				case 2782300518: //Carol the Wildcat
				case 2606511813: //Pit
				case 2489599400: //Tape
				case 2415092274: //Ao
				case 2814981163: //Poppy
				case 2537639015: //Jeff the Magical Flying Sheep
				case 2396851654: //Flex Tape
				case 2130931198: //Air Fighter Mac
				case 2600667884: //Cream & Cheese
				case 1955073028: //Cream & Cheese
				case 2262715898: //Cheese Wheel
				case 2830564788: //Koye
				case 2246795600: //Hurricane Maria
				case 2242677476: //Nairbert, the Neutral Aerial
				case 2182802508: //100% Accurate King Dedede
				case 2617317559: //SSL Pit
				case 2615785364: //SSL Sonic
				case 2622968980: //SSL Wrastor
				case 2803077966: //SSL Mighty
				case 2618962395: //SSL Super Sonic
				case 2811914955: //SSL Baja
				case 2814008894: //SSL Jenna & June
				case 2815016754: //SSL Hunny Queen
				case 2645208227: //SSL Jeff the Magcial Flying Sheep
				case 2822905260: //SSL Falco
				case 2840142403: //SSL Copen
				case 2840669986: //Broom Hatter
				case 2842873754: //King Dedede
				case 2849669092: //Wriggle Nightbug
				case 2396735388: //Zephrie
				case 2894515725: //Blackbeak
				case 2889369766: //Sora Toyukanboe
				case 2878240885: //Bird by User
				case 2873456228: //Zephyr
				case 2869345298: //SSL Charlie
				case 2899431794: //Brenda
				case 2923701356: //Ollie
				case 2931408497: //Grace
				case 2946043340: //Uysal
				case 2912077854: //Katakuri
				case 2910938459: //Yarida
				case 3010963151: //Kazemon
				case 2997094130: //Hawks
				case 2989321181: //Beyblade
				case 2973822239: //SSL PS135
				case 2968660312: //Cheese Wheel [DE]
				case 2962406587: //Trunkey
				case 2956047012: //SSL Bird by User
				case 3118691936: //Xanne
				case 3118659566: //Yono
				case 3068857344: //Floofy McBee
				case 3052215230: //Amy (Legacy)
				case 3048939652: //Flo
				case 3047206937: //Legacy Carol the Wildcat
				case 3040244052: //Vi
				case 3039831352: //Sonic the Hedgehog
				case 3034031276: //princess jane
					TCG_Kirby_Copy = 9; //Tornado 
				break;
				
				case CH_MOLLO: //Mollo
				case 2801695646: //Solid Snake
				case 1870709992: //Electrode
				case 2687601440: //Ditto as Electrode
				case 2170728238: //Monokuma
				case 2350165094: //Khonjin
				case 1977313755: //Bomberman
				case 2073005207: //Bomberman
				case 2818546358: //Blast
				case 1892960445: //Creeper
				case 2230457933: //Creeper 3.0
				case 2126162953: //Old Creeper
				case 2063121680: //Speedrunner Link
				case 1883487062: //Wick
				case 2453567307: //[Legacy] Duster
				case 1898782296: //Shy Guy
				case 2768297654: //Duster
				case 2442338146: //Bigger Yoshi
				case 2089998666: //Big Yoshi
				case 2035357584: //Nade
				case 2341842959: //Stinker
				case 2325366840: //Morshu
				case 2288002784: //Lumity
				case 1876656531: //Explosion-Propelled Slime
				case 1997963969: //Peacock (OLD)
				case 2407716024: //Peacock
				case 2172978093: //Donald Trump (Echo of Obama)
				case 1870688282: //Barack Obama
				case 2806615046: //Joe Biden
				case 2813743218: //Joe Biden X
				case 2406639408: //Karen
				case 2245933402: //Oboama
				case 1867713261: //Almighty TNT
				case 2397064593: //Rouge
				case 2202646888: //Eggdog
				case 2540479841: //Wario
				case 2512197735: //Wario
				case 1895655773: //Wario
				case 1941265915: //Wario...
				case 2812013130: //Bumb (2 Fast 4 Gnomz)
				case 2257220861: //Slimer
				case 2273550125: //Annoying Dog 2.0
				case 2495375306: //Henry Stickmin
				case 2602268708: //Chuckya 
				case 1893930350: //Tom & Jerry
				case 2567922727: //Fall Guy
				case 2149325219: //Kaboom
				case 2652983973: //James
				case 2025424961: //Pikuniku
				case 2828123811: //Tristana
				case 1871989159: //Mollo
				case 2139756191: //Team Rocket
				case 2283018206: //Otto
				case 1869737242: //Monokuma
				case 2192126112: //Demopan
				case 1869397081: //Disgaea - Prinny
				case 2004075713: //Andrew
				case 2322316995: //Doomkin
				case 2135708809: //Eggman
				case 2676176625: //Cat Guard
				case 2136385022: //Hazel 
				case 2537000269: //Nostalgia Critic
				case 1871374719: //Annoying Dog
				case 2627476892: //Lancer
				case 2815965495: //Koffing
				case 2600554570: //Miitopia Mii
				case 2074191621: //Bob
				case 2709464147: //Chuckster
				case 2394979113: //Wile E. Coyote
				case 2622060093: //SSL Galleom
				case 2811832579: //SSL Koffing
				case 2609852890: //SSL Solid Snake
				case 2654053209: //SSL Wario
				case 2824316362: //SSL Anton
				case 2834275360: //SSL Ringo
				case 2201608216: //Blake
				case 2262012258: //Mr. Dooter
				case 2848210432: //King K. Rool
				case 2849261348: //SSL Opa-Opa
				case 2848169006: //SSL Poppy Bros. Jr.
				case 2845614848: //Dewi
				case 2861538244: //Crungle Skrunk
				case 2866565174: //Sly Cooper
				case 2895317804: //Albaniaball
				case 2887929608: //SSL Gustavo Fring
				case 2877706883: //Vi
				case 2885831543: //Junichiro
				case 2871608790: //Azi & Mr. Baggy
				case 2913598032: //Rattle Me Bones
				case 2934115392: //Terumi
				case 2948986806: //Business Bomberman
				case 2946784030: //Wario
				case 2946246328: //Waluigi
				case 2952924678: //Eddie
				case 2951611530: //Egbert
				case 2990315396: //The Noise
				case 2989776522: //Dr. Eggman
				case 2979347370: //Amy
				case 2964195491: //Wheatley
				case 2958538674: //President Donald Trump
				case 2952924678: //Eddie
				case 3103108304: //Nogard Etarip
				case 3093500334: //Rodent Zero
				case 3047409367: //Nano Shinonome
				case 3042615374: //Nemesis-T Type
				case 3039085407: //Larry
				case 3122527436: //Kirbo
					TCG_Kirby_Copy = 10; //Bomb
				break;
	
				case CH_POMME: //Pomme
				case 2197298654: //Moonchild
				case 2808205569: //M.A.D Piano
				case 2812928951: //Maractus
				case 1894361290: //Untitled Goose
				case 2064444531: //asdfguy
				case 2217843818: //Crewmate
				case 2006712792: //Feri
				case 2606997278: //Unregistered HyperCam 2
				case 2605435443: //Big Band
				case 2753140721: //Coda and Tempo
				case 2283888504: //Tempo
				case 2283888145: //Coda
				case 2437022866: //The8BitDrummer
				case 2636557166: //Phoenix Wright "Legacy" Edition
				case 2357967710: //Phoenix Wright
				case 1934575897: //Phoenix Wright [Re-work]
				case 2331886064: //Paddler
				case 1966516921: //Don-chan
				case 2044097625: //Generic Paper Toad
				case 2064167290: //Hana
				case 2350985664: //Mystia Lorelei
				case 2313276588: //Crona
				case 2802395753: //Job bot
				case 2348671555: //Scott Wozniak
				case 2811822410: //Hatsune Miku
				case 2158802201: //Hatsune Miku
				case 2534988095: //Echoes
				case 1917856427: //Liz
				case 2237093240: //D1 Liz
				case 1932366686: //Raku-chan
				case 2002172624: //King Briggs
				case 1940721668: //Komaru Naegi
				case 2277550383: //Just Trummel
				case 2065010327: //Purple Guy
				case 2421278874: //Otamatone & Mr. Knocky
				case 2606483858: //Boyfriend (FNF)
				case 2478102112: //Ani
				case 1913517643: //Pomme
				case 2074429052: //Jigglypuff Ultimate
				case 1872227590: //Jigglypuff
				case 2752711907: //Mama Coco
				case 2770284082: //Agent M
				case 2759539299: //Talking Ben
				case 2097366081: //Commander Video
				case 2504886110: //Senpai (FNF)
				case 2817605804: //Jerma985
				case 2346109030: //Binyot
				case 2819445316: //Barista
				case 2497023301: //Dugnut
				case 2603137566: //Amelia Watson
				case 2504171734: //Smol Ame
				case 2177081326: //Nico Nico
				case 2037945547: //Jack Black
				case 2747738786: //Purple Guy (Balanced)
				case 2482237965: //WhatsApp
				case 1867634411: //The Duane
				case 2099463910: //Ripped Pants
				case 2027870726: //Serena
				case 2642265963: //Spamton
				case 2743330638: //Disk 
				case 1917856427: //Liz!
				case 2218501679: //Michael Rosen!
				case 1878115018: //George Costanza
				case 2393279496: //E
				case 2021674886: //Geometry Dash Block
				case 2633038359: //Peter Griffin (Definitive Edition)
				case 2787701072: //Geese Climbers
				case 2268267041: //James P. Sullivan
				case 2268266468: //Mike Wazowski
				case 2606414594: //Sandbert with a Smartphone
				case 1923735434: //Hes Groovin
				case 2650430383: //Accelgor
				case 1980762597: //100% Accurate Jigglypuff
				case 2237348218: //Ronald but with ridiculous sounds
				case 2668658819: //SSL Cleffa
				case 2620782865: //SSL Jigglypuff
				case 2821288602: //SSL Peter Griffin
				case 2854896436: //Mashin Kai
				case 2844291202: //Michael Scott
				case 2859393381: //Phoenix Wright
				case 2860654227: //Codec Snake
				case 2860034132: //Gabriel Boric
				case 2863909689: //Hamood
				case 2865678343: //troll face
				case 2868151488: //Howzit (Super Paper Mario)
				case 2895612943: //Scratch & Bite
				case 2877828501: //Puppetflip
				case 2880066265: //Eustace Bagge
				case 2876273463: //Hotel Luigi
				case 2876134749: //Whitebeard
				case 2874616685: //Shy Gal & Shy Guy
				case 2872992189: //SSL PlaqueboyMax
				case 2901580507: //Javen_Playz
				case 2901455799: //ShyGal
				case 2925807473: //Hazama
				case 2922189970: //Free Bird
				case 2941534514: //Disco
				case 2941243552: //Buster
				case 2940939030: //Samira
				case 2940456822: //Earl P.
				case 2940069199: //Hoshimachi Suisei
				case 2938095696: //Dee Jay
				case 2947104312: //Squidward
				case 1871281672: //Squidward
				case 2944203759: //Bastet [Jam Build]
				case 2943878715: //King Coal (JAM BUILD)
				case 2942375772: //Marti
				case 2942196774: //King Tide
				case 2941870676: //Toussant
				case 2636585625: //Abyss Pomme
				case 3018630828: //Jigglypuff
				case 3013972927: //Chai
				case 3011832031: //Bill Wurtz
				case 2997126873: //Heart Virus Goku
				case 2996392141: //Mako Mankanshoku
				case 2996263079: //Yuuko Aioi
				case 2986660296: //Dancing Banana
				case 2974366784: //SSL Samira
				case 2957860188: //Mama Coco Definitive Edition
				case 3120173097: //Apollo Justice
				case 3109768585: //Koishi Komeiji
				case 3087835606: //Skibidi Toilet
				case 3086207730: //"Yellow" but it's dubbed by the TF2 Mercs
				case 3070186949: //Napstablook
				case 3062384251: //100% Accurate Jigglypuff but with up throw
				case 3030928225: //Squigly
				case 3026123248: //Boris Anderson
				case 3025843792: //Mad Mew Mew
				case 3040322715: //GEMAPLYS MUGEN
					TCG_Kirby_Copy = 11;//Mike
					mike_level = 1;
				break;
				
				case 2229832619: //N/A
				case 2836730753: //Gaster
				case 1968648848: //Abyss Hime
				case 2698963767: //Abyss Mora
				case 2397078941: //Nullan
				case 2791292352: //Cofagrigus
				case 2676027044: //Mimikyu
				case 2606512532: //Dark Pit
				case 2105527362: //The Knight
				case 2300438860: //Chara
				case 1967487025: //Shadow the Hedgehog
				case 1949689463: //Shadow
				case 1867793800: //Orby
				case 2396053263: //Heartbrake
				case 2469023993: //Nox
				case 2669669576: //Gengar
				case 2004962115: //Gatekeeper
				case 2101493715: //Bill Cipher
				case 2802300675: //Valley & Death
				case 2817445093: //Ravage
				case 2771020230: //Alpaca
				case 2819924929: //Eva & Jasper
				case 2436885721: //Hexwhize
				case 2801933568: //Leshy
				case 2397076826: //Ase
				case 2434948288: //Domenica
				case 2454418654: //The Necrodancer
				case 2330704725: //STMC
				case 2105940891: //Siren
				case 1890285023: //Mr. Game & Watch
				case 2012934808: //Mr. Game & Watch
				case 2711400626: //Mr. Game & Watch X
				case 2044251276: //Amvira (Base Moveset)
				case 2108239736: //Amvira
				case 2301589554: //[Old] Bendy
				case 2838971610: //Bendy V2
				case 2504101278: //Void
				case 2152557624: //Gooey (Popopo)
				case 1874979415: //Yuyuko Saigyouji
				case 2273328517: //Tamat
				case 2097500977: //Scaryami
				case 2504062893: //Sciros
				case 2771231656: //Ganon
				case 2423050589: //Dark Luigi
				case 2614955965: //Chester
				case 2108835464: //Monika!
				case 2108176600: //Mojibake
				case 2692316623: //Enderman
				case 2011404677: //Dry Bones
				case 2004804058: //RonaldGaucho
				case 2620579353: //Abyss Cheese Wheel
				case 1904068842: //The abyss
				case 2297738646: //SCP-173
				case 2801872085: //Selene 2
				case 2183741815: //Selene
				case 2267598408: //Cantaloupe
				case 1897299081: //Orphea
				case 2346815848: //Ridley
				case 1877451763: //Gooey
				case 2092407942: //Google Dino
				case 2272591153: //Oni-Miko-Zero
				case 2557597143: //turbo clap kid
				case 2605377553: //Mal
				case 2791185565: //Sven
				case 1996022431: //Calamitas
				case 1880771377: //Wario (Master of Disguise)
				case 2787604544: //Devil Libre
				case 2689186714: //Iscream
				case 1986123259: //Dark Sandbert
				case 2520247938: //Mario Head
				case 2190448871: //Speedrunner Mario
				case 2504101879: //Vlamprey
				case 2637355399: //Sonic.EXE
				case 2409737812: //The Will of Ronald
				case 2613534222: //SSL Gengar
				case 2658396219: //SSL Danny
				case 2642909333: //SSL Selene
				case 2816394527: //SSL Dragapult
				case 2812570324: //SSL Shadow
				case 2642946196: //SSL Mega Banette
				case 2632745393: //SSL Ridley
				case 2811937873: //SSL Flowey
				case 2815922633: //SSL Crewmate
				case 2816145042: //SSL Neco Arc Chaos
				case 2834518864: //SSL Mr. Game & Watch
				case 2465601482: //Primid
				case 2840242565: //Gooey
				case 2841309511: //SSL Saki Kurukoma
				case 2842104646: //SSL Phasmophobia Ghost Hunter
				case 2497035129: //Phasmophobia Ghost Hunter
				case 2843385011: //Dark Matter
				case 2856176628: //Dark Sonic
				case 2853436882: //Mr. Incredible Uncanny
				case 2848199264: //SSL Ms. Game & Watch
				case 2892961716: //Beerus
				case 2892500465: //Marselo Diabolos
				case 2892102710: //Negative Scott
				case 2890217777: //Null
				case 2882757791: //Firebrand
				case 2886663444: //Abyssant
				case 2876133511: //Blackbeard
				case 2869581624: //Classic Chara
				case 2909668306: //Alvis
				case 2930890186: //Sven
				case 2927505941: //Itachi Uchiha
				case 2925810388: //Raidou Kuzunoha
				case 2939603284: //Cam
				case 2606989921: //MissingNo.
				case 2948782115: //Andrew Tate
				case 2942332620: //Zote the Mighty
				case 2909196222: //SOMETHING (OMORI)
				case 3018750370: //Joker (Persona 5)
				case 2997541240: //Homura Akemi
				case 2997493298: //Truck-Kun
				case 2993515663: //Akira
				case 2990243359: //Ganondorf
				case 2977835488: //Qoedil
				case 2975213250: //Sayori Reupload
				case 2967653439: //Raze Birdie
				case 2965700442: //Anthem
				case 2965266088: //Rumia
				case 2963008622: //Crowne
				case 2961238332: //Banban
				case 2957564352: //BanBan (Legacy)
				case 2957312834: //Springtrap
				case 2956904218: //BanBan
				case 3115049167: //Saelukune
				case 3086561700: //Lutionis
				case 3067741766: //Luminance
				case 3033964264: //Black Impostor
				case 3021608896: //Mako, the Necromata
				case 3104706274: //Fake Peppino
				case 2189317686: //Soma Cruz
				case 2130813490: //Soma Cruz
					TCG_Kirby_Copy = 12; //Abyssal
				break;
				
				case 2685923956: //Jirachi
				case 1915998598: //Ness
				case 2810493107: //Reuniclus
				case 2667789407: //Unown
				case 2665188010: //Azelf
				case 2538446216: //Celebi
				case 1875630487: //Sana
				case 1871060242: //Madotsuki
				case 2407968461: //Omori
				case 2118187404: //Silver
				case 2003100429: //Gardevoir
				case 2307989320: //Gardevoir Plush
				case 1993599340: //Lovely Sweet Dream
				case 2478758266: //Kumatora
				case 2695623093: //Giegue
				case 2256374519: //Ninten
				case 2179072217: //Psychos
				case 2442216424: //Walter
				case 2396920173: //Chesspiece
				case 1996111915: //Uno
				case 2292350790: //Letterman
				case 2478195826: //Hurt & Hitbox
				case 1975616597: //X & [B]
				case 2442367596: //X & [B] 2
				case 2499367561: //Cosmonaut
				case 2602295071: //Adam Capybarra
				case 2390163800: //Segerak
				case 2825430715: //Kanos
				case 1925669654: //Dio
				case 2561323340: //Diavolo
				case 2814986049: //P&F Interloper
				case 2097929078: //Leona
				case 2111038605: //Qbby
				case 1872924853: //Urotsuki (Yume 2kki)
				case 1869336002: //Tetromino
				case 2428587317: //Zogo
				case 2531842688: //Poniko
				case 2750774170: //M.O.D.O.K
				case 2468368156: //Cylinder
				case 1871262348: //Baldi
				case 2398911073: //Keke
				case 2589701676: //Brugalo
				case 1996111915: //Uno
				case 2089363375: //Miko Mitama
				case 2092441331: //eShop Bag
				case 2213797413: //Joy Con
				case 2605733292: //Sleep Kirby
				case 2026206723: //Garfield
				case 1870474358: //Garfeild
				case 2434256882: //Detective Conan
				case 2430633441: //Synne
				case 2568548530: //Rubik's Cube
				case 2547796480: //Agent N
				case 2452038495: //Dusk
				case 1914992031: //Obamium
				case 2497220830: //Mewtwo
				case 2002297088: //Mewtwo
				case 1882129226: //Standbert
				case 2501476095: //Screechheart
				case 2396061657: //Callie
				case 1877715009: //Hikaru
				case 2196676184: //Geometry
				case 1874544944: //Triangulum
				case 2406306227: //Literally just a pixel
				case 2779830858: //Ekko
				case 2811948473: //Mr. Molecule
				case 2801848110: //NeO
				case 2000072204: //Doctor Soos
				case 1875417918: //Dr. Kawashima
				case 2273636433: //Dr. Melee Mario
				case 2007412127: //Cosmic Ronald
				case 2811837173: //SSL Mr. Mime
				case 2641785309: //SSL Dr Mario
				case 2623121649: //SSL Template
				case 2662627468: //SSL Kirby does His Taxes
				case 2824691444: //SSL Yoshi Commits Tax Fraud
				case 2823821718: //SSL Poniko
				case 2823291685: //SSL Mal
				case 2709660769: //SSL Tetromino
				case 2842986516: //ssl (mus) toki pona
				case 2842985279: //SSL Unown
				case 2851199108: //SSL Clepsydra
				case 2895650073: //Madotsuki
				case 2894405278: //KEL
				case 2892961633: //Kid Buu
				case 2892688938: //Phillip
				case 2886226643: //Jean
				case 2875864068: //Silver 2.0
				case 2872758537: //Dr SSL Mario
				case 2909668071: //Pauline
				case 2906702804: //G. Raptor
				case 2902598138: //Baldi
				case 2901665237: //Jellicar
				case 2897141312: //File Explorer
				case 2922282666: //Anzen
				case 2936583338: //Sukapon
				case 2935154317: //SSL Spoink
				case 2934045532: //Good Cell
				case 2945616859: //Castel Guide
				case 2945057721: //Kevight
				case 3007922797: //Monoko
				case 3004515855: //Ness
				case 2989439679: //SEELE
				case 2976263163: //3D Trollface
				case 2972978461: //Pici
				case 2996784060: //Seto Kaiba
				case 3119048964: //Newports
				case 3080756517: //Yellow
				case 3045684726: //Office Chair
				case 3040916336: //Chiaotzu
				case 3033711357: //Yin-Yang
				case 3033505442: //Tetris DS
				case 3029961609: //GD Cube
				case 3027373563: //Pinky and the Brain
				case 3052480781: //Captain Viridian
				case 3123375474: //Miles Edgeworth
					TCG_Kirby_Copy = 13;//ESP
				break;				
				
				case CH_KRAGG: //Kragg
				case CH_SHOVEL_KNIGHT: //Shovel Knight
				case 1865940669: //Sandbert
				case 2443363942: //Sandbert (Definitive Edition)
				case 2141607713: //Sandbag (SSF2)
				case 2814747446: //Peat
				case 1879932407: //Garchomp
				case 2284823424: //Steve
				case 2482681616: //Regigigas
				case 2285717462: //Sonic
				case 2234517080: //Rocky
				case 2605455778: //Dinock
				case 2661856264: //Golem
				case 2362240190: //Farmer
				case 1880394411: //Quint
				case 1875695535: //Thwomp
				case 1895586961: //STEVE? 
				case 1968068304: //Epinel
				case 2122214701: //Epinel (Ver. 1)
				case 1880394411: //Quint
				case 1977450054: //Block
				case 2743380315: //Classic Guy Spelunky
				case 1877321936: //Spelunker
				case 2043442259: //Mario Hill
				case 2820351983: //Rockigi
				case 2658333140: //CaptainSeaFear
				case 1871371334: //Knuckles
				case 1872834917: //Ant
				case 2668566438: //Beedril
				case 2105839293: //Yuuto Ichika
				case 1874162103: //Grand Dad
				case 2487734175: //Parkan
				case 1872653807: //Knuckles
				case 1922949975: //Knuckles
				case 2442407295: //Rock Knuckles
				case 1879683632: //Kragg But Always Holding a Rock
				case 2555199085: //Crazy Dave
				case 1939579290: //Terraria Guy
				case 2605462884: //EXPLORER
				case 2096971862: //Monkeese [OLD]
				case 2606476308: //Monkeese
				case 1885163398: //Mineycrafta Gadget
				case 2453887293: //Aria
				case 1907691004: //Cadence
				case 2667744773: //BeeDrill(Moemon)
				case 1867580162: //Rocky
				case 1892907972: //in fa
				case 1871575669: //Steve reworked
				case 1882839750: //Jr. Troopa
				case 2732466132: //Kars
				case 1961186330: //Rock
				case 2697362668: //Cobble
				case 1922340697: //Kyra
				case 2157729892: //Mythic
				case 2640159146: //Chimera
				case 2795529426: //Cog
				case 2108779444: //Haru Glory
				case 2292289481: //Thara
				case 2540332317: //Classic Thara
				case 1922340697: //Kyra
				case 2708265186: //Bricky the Brick
				case 2520533233: //Tenshi Hinanawi
				case 2574058508: //Eid
				case 2058470628: //Shuckle
				case 2642338781: //Brick
				case 2170294967: //Maypul but with drill dair
				case 1986939803: //Dig Dug - Taizo Hori
				case 2556255800: //Señor (Senor)
				case 2603699003: //Moyai
				case 2159241162: //Monty Mole
				case 2816162758: //Masaru Daimon
				case 2198946147: //SuperG64
				case 2811975090: //SSL Crustle
				case 2812020403: //SSL Geodude
				case 2811832666: //SSL Golem
				case 2625128231: //SSL Mr Slam
				case 2822347560: //SSL Eid
				case 2841254562: //SSL Builderman
				case 2843458785: //Mr Sir Regitus Gigitus
				case 2854546562: //Arizona
				case 2853424572: //Arizona
				case 2853253577: //Buzzy Beetle
				case 2847493104: //Jonah Fumo
				case 2846267633: //e
				case 2860449829: //SSL Rocky
				case 2862726537: //Rocky
				case 2867341866: //Aur
				case 2876246765: //Chaos Emeralds
				case 2912302980: //Mawile Plush
				case 2920097316: //Diogenes (Getting Over It)
				case 2920880979: //Springo
				case 2928595710: //Flint Cragley (Super Paper Mario)
				case 2924948563: //Knuckles (Definitive Echidna)
				case 2922280596: //Desirae
				case 2922196552: //Quake
				case 2943033840: //Sudowoodo
				case 2963749706: //Puppet
				case 2955767939: //Iron Checkpoint Crate
				case 3117219382: //Bhadra
				case 3111986565: //Raknar
				case 3040244152: //Kabbu
				case 3022292378: //Aether Coin
				case 3022398171: //Danny Coin (Aether Coin Day One)
				case 3122260416: //Kordite
					TCG_Kirby_Copy = 14;//Drill
				break;
				
				case CH_ABSA: //Absa
				case 2786885695: //Keqing
				case 2616322514: //Tapu Koko
				case 2502590772: //Plusle & Minun
				case 2007375819: //Blueybot
				case 2666606290: //Pikachu Mishima
				case 2130698485: //Pikachu 
				case 2014203483: //Pikachu (OLD VERSION)
				case 2501860697: //Ztatic
				case 2316161693: //Metal Sonic
				case 2315642152: //Luigi Kirby
				case 2294523795: //Kazuki
				case 2626201216: //bermaharajalela
				case 2198210310: //Wall-E
				case 2282173822: //Trummel & Alto
				case 1933111975: //[OLD] Trum. & Alto
				case 2442862285: //Alto
				case 1892707606: //Emolga
				case 2769996701: //Niko (Oneshot)
				case 2802528159: //E.M.M.I
				case 2678969595: //Arale Norimaki
				case 2353984010: //Goliath
				case 2495207315: //Amazon Alexa
				case 2263463193: //BETA-L
				case 2512831686: //Lightning
				case 2077375021: //Aile (Models X+H+F+L)
				case 2705506566: //Tasque Manager
				case 2669622685: //Voltorb
				case 2324597322: //Luigi
				case 1977025116: //Luigi, the green thunder!
				case 1894194148: //Acid Rainbows
				case 2022619798: //Mr. Morris
				case 2047092683: //Intellivision Running Man
				case 2109083580: //Iroh
				case 2307094493: //Loadent
				case 2508425343: //Big S.
				case 2628951201: //JD
				case 2294523795: //Kazuki
				case 2606478015: //R.O.B.
				case 2142662749: //Ru & Zo
				case 1978838569: //Pichu
				case 2042252388: //Plugg
				case 1946956064: //Gunvolt
				case 1895275607: //Lode & Puul (Legacy Build)
				case 2097954859: //Jonathon Joestar (Improved)
				case 2005846024: //Susie
				case 2180050029: //Spongebot
				case 1876685661: //Pulseman
				case 1875719572: //Emerl
				case 1871200718: //Emerl
				case 2687880389: //Retroblast
				case 1928599994: //Godkarmachine O Inary
				case 2813888403: //President Joe Biden (this one has an electric fist)
				case 2076556409: //Robot Jones
				case 2030472610: //Remote
				case 2263463193: //Beta-l
				case 1868240517: //R-00
				case 2384485893: //Joseph Joestar
				case 2164823475: //Rosa, the Mechanical Maid
				case 2611020513: //Saki
				case 2226596831: //Reckless Safety Notice Man
				case 2823335024: //Careless Safety Notice Woman
				case 1870530402: //Travis Touchdown
				case 2833083376: //Vemmom
				case 2162127118: //Gamecube
				case 2099418807: //Colosso
				case 2199133504: //Optimus Prime
				case 2836752410: //Beri
				case 2828621155: //Lowtiergod
				case 2618576346: //SSL Iroh
				case 2612540253: //Matthew Favson SSL
				case 2617684574: //Mettaton (Super Smash Land)
				case 2024566649: //100% Accurate Ultimate Pichu
				case 2628275959: //SSL Punk
				case 2614142396: //SSL Lode & Puul
				case 2700257155: //SSL Scratch Cat
				case 2630852052: //SSL Michael Roa Valdamjong
				case 2612585677: //Super Smash Land Pikachu
				case 2823288287: //SSL Twenny
				case 2837903443: //SSL Silver Sonic
				case 2846262924: //Ire
				case 2845592958: //Espacio
				case 2798743282: //100% Busted Pikachu
				case 2668638714: //Electrode
				case 2485539286: //Lynk
				case 2862345197: //Shelly
				case 2869246326: //SSL Mecha Sonic
				case 2894930440: //Niko
				case 2887334299: //100% accurate ROB
				case 2872479211: //Jynpii
				case 2871136791: //Lode & Puul
				case 2908149654: //Vraz
				case 2906921482: //Tyler
				case 2904028974: //SSL Ampharos
				case 2916748503: //Competitive LTG
				case 2917082124: //MegaMan.EXE
				case 2921407337: //Iroh DE
				case 2929245030: //WEBcat
				case 2926418973: //Sova
				case 2925741500: //Robo-Plankton
				case 2923121510: //Data
				case 2937645473: //Orbitron
				case 2949826052: //Ty
				case 2945067212: //Luigi
				case 3004795975: //M.A.G.
				case 2979159347: //Balloon
				case 2955951750: //Oxob
				case 3061166422: //Rusalka
				case 3040171673: //Spark
				case 3026000709: //WEBcat
				case 3119450691: //Microsoft Sam
					TCG_Kirby_Copy = 15;//Spark
				break;				
				
			}
		}
	}
}


//Grabbing opponent
if (my_hitboxID.attack == AT_NSPECIAL && nspec_grabbed == false && !consumed_proj){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Initiates the Cargo Hold (sets the variables)
	        if (my_hitboxID.hbox_num == 2){
	        	//Timer is the opponent percentage + 60
	    		grab_timer = get_player_damage(hit_player_obj.player) + 18;
		        nspec_grabbed = true;
	            window = 4;
	            window_timer = 1;
	            destroy_hitboxes();
	            grabbedtarget = hit_player_obj;
		        grabbedtarget.visible = false;
				hit_player_obj.visible = false;
	        }
	  }
}
else {
	nspec_grabbed = false;
	hit_player_obj.visible = true;
}

/*
if(my_hitboxID.attack == AT_NSPECIAL_2){
	if(my_hitboxID.hbox_num == 1){
		kirb_planets_count -=1;
	}
}*/

switch my_hitboxID.attack
{
	case AT_FTILT:
	if my_hitboxID.hbox_num == 1 {
         //sound_play(asset_get("sfx_waterhit_weak"),false,noone,0.8);
     }
    break;
	case AT_DSPECIAL:
	sound_play(sound_get("sfx_krdl_stone_land"));
	break;
	case AT_DSPECIAL_AIR:
	//sound_play(asset_get("sfx_zetter_downb"))
	break;
}

//NSpec Star
if(my_hitboxID.attack == AT_NSPECIAL){
	if(my_hitboxID.hbox_num == 5){
		sound_play(sound_get("sfx_hit_kirby"), false, noone, 1, 1);
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.65, 1.3);
	}
}


//Jet Rune
if(my_hitboxID.attack == AT_USPECIAL){
	if(jetRune){
		set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
		move_cooldown[AT_USPECIAL] = 999999999;
	}
}

//Stone
if(my_hitboxID.attack == AT_DSPECIAL_AIR){
	//Moyai
	if(stonevar == 2){
		sound_play(sound_get("sfx_vineboom"));
	}

	//8 Ton
	if(stonevar == 13){
		sound_play(asset_get("sfx_shovel_hit_heavy1"));
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 304);
    	fx.depth = hit_player_obj.depth + 1;
	}
	
	//Brick Block
	if(stonevar == 14){
		sound_play(sound_get("sfx_smb1_block_bump"));
	}
	
	//Star Block
	if(stonevar == 18){
		sound_play(sound_get("sfx_hit_kirby"));
	}
}


//Copy Ability On-Hit stuff

//Beam
if(my_hitboxID.attack == AT_COPY_BEAM){
	if(my_hitboxID.hbox_num == 6){
		sound_play(asset_get("sfx_absa_kickhit"));
	}
}

//Ranger
if(my_hitboxID.attack == AT_COPY_RANGER){
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.6, 1.2);
	sound_play(sound_get("sfx_hit_kirby"), false, noone, 1, 1);
	if(my_hitboxID.hbox_num == 4){
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 110);
    	fx.depth = hit_player_obj.depth + 1;
	}
}

//Fighter
if(my_hitboxID.attack == AT_COPY_FIGHTER){
	if(my_hitboxID.hbox_num != 4){
		sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.6, 1);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 301);
    	fx.depth = hit_player_obj.depth + 1;
		if(my_hitboxID.hbox_num == 1){
			if (window_timer != 3){
				window_timer = 3;
			}
		}
	} else {
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.6, 1);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 304);
    	fx.depth = hit_player_obj.depth + 1;
	}
}

//Leaf
if(my_hitboxID.attack == AT_COPY_LEAF){
	sound_play(sound_get("sfx_krdl_sword_blow1"));
	sound_play(asset_get("sfx_leafy_hit3"));
}

//Tornado
if(my_hitboxID.attack == AT_COPY_TORNADO){
	if(my_hitboxID.hbox_num != 10){
		sound_play(sound_get("sfx_krdl_sword_blow1"), false, noone, 0.9, 1.2);
		state_timer += 4;
	} else if(my_hitboxID.hbox_num == 10){
		sound_play(sound_get("sfx_krdl_sword_blow1"));
		sound_play(sound_get("sfx_hit_kirby_hard"));
	}
}

//Sword
if(my_hitboxID.attack == AT_COPY_SWORD){
	if(my_hitboxID.hbox_num != 14){
		sound_play(sound_get("sfx_smash_ult_sword_hit_weak"), false, noone, 0.3, 1);
		state_timer += 4;
		if(my_hitboxID.hbox_num == 13){
			hit_player_obj.x = x + 20*spr_dir;
			hit_player_obj.y = y-10;
		}
	} else if(my_hitboxID.hbox_num == 14){
		sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"), false, noone, 0.4, 1);
		sound_play(sound_get("sfx_hit_kirby_hard"));
	}
}

//Water
if(my_hitboxID.attack == AT_COPY_WATER){
	sound_play(sound_get("sfx_krdl_water_hit"), false, noone, 0.7, 1);
	if (my_hitboxID.hbox_num == 5){
		waterJumpCancel = true;
	} else {
		waterJumpCancel = false;
		hit_player_obj.x = x + (16*spr_dir);
		hit_player_obj.y = y-4;
	}
}

//Bomb
if(my_hitboxID.attack == AT_COPY_BOMB){
	sound_play(asset_get("sfx_flare_razer"), false, noone, 1, 1.1);
}


//Mike
if(my_hitboxID.attack == AT_COPY_MIKE){
	sound_play(sound_get("sfx_hit_kirby_hard"), false, noone, 1, 1);
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 0.9+(my_hitboxID.hbox_num/10));
	sound_play(asset_get("sfx_war_horn"), false, noone, 0.8, 1.4);
}
//Abyss
if(my_hitboxID.attack == AT_COPY_ABYSS){
	sound_play(asset_get("sfx_boss_fireball"), false, noone, 1, 1.1);
	sound_play(sound_get("sfx_krdl_fire_hit"), false, noone, 1, 1.1);
	var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 66);
    fx.depth = hit_player_obj.depth + 1;
}

//ESP
if (attack == AT_COPY_ESP){
	if (my_hitboxID.hbox_num == 2){
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 20);
		fx.depth = hit_player_obj.depth + 1;
		sound_play(asset_get("sfx_absa_whip"), false, noone, 1, 1);
		esp_hit_counter++;
	}
	if (my_hitboxID.hbox_num == 5){
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 20);
		fx.depth = hit_player_obj.depth + 1;
		sound_play(asset_get("sfx_absa_whip2"), false, noone, 1, 1);
		esp_hit_counter++;
	}
}	

//Drill
if(my_hitboxID.attack == AT_COPY_DRILL){
	if(my_hitboxID.hbox_num == 1||my_hitboxID.hbox_num == 3){
		sound_play(sound_get("sfx_krdl_sword_blow1"));
	} else if(my_hitboxID.hbox_num == 2){
		sound_play(sound_get("sfx_krdl_sword_blow1"), false, noone, 0.8, 0.8);
	} 
}

//Spark
if(my_hitboxID.attack == AT_COPY_SPARK){
	if(my_hitboxID.hbox_num != 5){
		sound_play(sound_get("sfx_krdl_spark_hit"), false, noone, 0.5, 1.6);
	} else if(my_hitboxID.hbox_num == 5){
		sound_play(sound_get("sfx_krdl_spark_hit"), false, noone, 1, 1);
		sound_play(asset_get("sfx_holy_lightning"), false, noone, 1, 1);
	} 
}