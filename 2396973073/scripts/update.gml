
//sets what music to play
if (get_gameplay_time() == 126 || practice) {
    music_play_file( song_name ); //pink
}
    
    
if (get_gameplay_time() == 3) {
	
	
	
characterdeterminer =  (current_second+current_minute)%charactermax   //WORKS ONLINE NOW I THINK?????? LMAO





//same as above, but with added values to make them both vary
//number after % determines number of options, from 1 to #
songdeterminer = (current_day+current_second+current_hour+current_minute)%songmax 
	
	
	boyfrienddeterminer = current_second%8 //(boyfriendmax - 3)

	
	
	
	
	girlfrienddeterminer = 0
	stageskindeterminer = 3
	
//	stageskin = "starcatcher"
	
	
	
}




#region intro
//makes intro "1 2 3" sounds. Does different sounds for week 6 songs
if (song_name == "Senpai" || song_name == "Roses" || song_name == "Thorns") {
if (get_gameplay_time() == 10) {
    
    sound_play( sound_get( "intro3-pixel" ) )
}
if (get_gameplay_time() == 40) {
    
    sound_play( sound_get( "intro2-pixel" ) )
}
if (get_gameplay_time() == 70) {
    
    sound_play( sound_get( "intro1-pixel" ) )
}
if (get_gameplay_time() == 100) {
    
    sound_play( sound_get( "introGo-pixel" ) )
} }

else {
    
    if (get_gameplay_time() == 10) {
    
    sound_play( sound_get( "intro3" ) )
}
if (get_gameplay_time() == 40) {
    
    sound_play( sound_get( "intro2" ) )
}
if (get_gameplay_time() == 70) {
    
    sound_play( sound_get( "intro1" ) )
}
if (get_gameplay_time() == 100) {
    
    sound_play( sound_get( "introGo" ) )

} }
#endregion










#region practice

if (practice) {

var ins = instance_position(get_marker_x(1),get_marker_y(1)-1,oPlayer);
//var is_taunting = false;
if ins != noone {
    
    
	if ins.state == PS_CROUCH {
	//	is_taunting = true;
		crouch_timer += 1
	}
} else if (crouch_timer <= 60) {crouch_timer = 0}

if (crouch_timer > 60) {
	
   with(ins){
   	if (state != PS_PRATLAND) {
   	set_state(PS_PRATLAND);
was_parried = true;
parry_lag = 10000000;
   } }
   
   
   
   
   
    if (ins.up_pressed) {
    	
    		
    if (songdeterminer == songmax) {
    		songdeterminer = 0
    	} else 	songdeterminer += 1
    	
    	time_for_music_to_start = get_gameplay_time();
    } else if (ins.down_pressed) {
    	
    	  //  

    	if (songdeterminer == 0) {
    		songdeterminer = songmax
    	} else 	songdeterminer += -1
    	
    		time_for_music_to_start = get_gameplay_time();
    } 
    
    
     if (ins.right_pressed) {
    	
    		
    if (characterdeterminer == charactermax) {
    		characterdeterminer = 0
    	} else 	characterdeterminer += 1
    	
    } else if (ins.left_pressed) {
    	
    	  //  

    	if (characterdeterminer = 0) {
    		characterdeterminer = charactermax
    	} else 	characterdeterminer += -1
    	
    	//	time_for_music_to_start = get_gameplay_time();
    } 
    
    
    
    
    //CHANGING STAGE VERSION
       if (ins.special_pressed && stage_special_cooldown < 0) {
    	
    		stage_special_cooldown = 6
    if (stageskindeterminer == stageskinmax) {
    		stageskindeterminer = 0
    	} else 	stageskindeterminer += 1 }
    
    
    
    //CHANGING BOYFRIEND
      if (ins.attack_pressed && stage_attack_cooldown < 0) {
    	
    		stage_attack_cooldown = 6
    if (boyfrienddeterminer == boyfriendmax) {
    		boyfrienddeterminer = 0
    	} else 	boyfrienddeterminer += 1 }
    
    
    //CHANGING GIRLFRIEND
    if (ins.jump_pressed  && stage_jump_cooldown < 0) {
    	
    		stage_jump_cooldown = 6
    if (girlfrienddeterminer == girlfriendmax) {
    		girlfrienddeterminer = 0
    	} else 	girlfrienddeterminer += 1 }
    
    stage_special_cooldown -= 1
    stage_attack_cooldown -= 1
    stage_jump_cooldown -= 1
    
    
    if (ins.taunt_pressed) {
    	crouch_timer = 0
    	ins.state = PS_CROUCH
    
    }

} }

#endregion



/*
var ins_2 = instance_position(get_marker_x(2),get_marker_y(2)-1,oPlayer);
//var is_taunting = false;
if ins_2 != noone {
    
    
	if ins_2.state == PS_CROUCH {
	//	is_taunting = true;
		crouch_timer_2 += 1
	}
} else if (crouch_timer_2 <= 60) {crouch_timer_2 = 0}

if (crouch_timer_2 > 60) {
	
   with(ins_2){
   	if (state != PS_PRATLAND) {
   	set_state(PS_PRATLAND);
was_parried = true;
parry_lag = 10000000;
   } }
   
    if (ins_2.up_pressed) {
    	
    		
    if (characterdeterminer = 16) {
    		characterdeterminer = 1
    	} else 	characterdeterminer += 1
    	
    //	time_for_music_to_start = get_gameplay_time();
    } else if (ins_2.down_pressed) {
    	
    	  //  

    	if (characterdeterminer = 1) {
    		characterdeterminer = 16
    	} else 	characterdeterminer += -1
    	
    	//	time_for_music_to_start = get_gameplay_time();
    } if (ins_2.taunt_pressed) {
    	crouch_timer_2 = 0
    	ins_2.state = PS_CROUCH
    
    }

}*/






#region song setting
/*
//sets to mom if it goes over 20 by chance
if (characterdeterminer > 37) {
    
    characterdeterminer = 5 // :)
}
if (get_gameplay_time() == 3) {
	
//forces mom songs if mom is on
if (characterdeterminer == 5) {
    songdeterminer = (current_day+current_second+current_hour+current_minute)%5 + 8
    
//forces monster song if monster appears
} else if (characterdeterminer == 6) {
    songdeterminer = 16
} //forces spookeez is s+p are on
else if (characterdeterminer == 24) {
    songdeterminer = 3
}
else if (characterdeterminer == 34) { //forces senpai songs if hes on
    songdeterminer = (current_day+current_second+current_hour+current_minute)%3 + 13
}}
*/
#endregion





if (practice || get_gameplay_time() < 4) {

#region songlist
var characterlist
characterlist = [ "father", "fatherfearsome", "skidandpump",  "monster",  "pico",  "mom", "senpai", "tankman", //fnf base cast


"whitty",  "tricky", "tiky", "tricky2",  "redtricky",   "trickyrunt", "tabi", "zardy",  "agoti", "garcello", "liz", "lane", "kapi",  "tord", "pompom", //fnf workshop WITH SONGS (in order)

"sarv", "alfie",  "mariorapping",  "starecrown", "sasha", "wings", "myra",   "sans",//fnf workshop WITHOUT SONGS
	
	"penny", "roo",  "valk",    "owen",   "rat",  "xavier",   "segerak", "tenru", //ROA WORKSHOP OVERLAP WITH ACTUAL CHARACTERS
	"monokuma",  "slime", "quagsires", "pumpkin",  "glace",   "cinder",    
	"mouse",    "exetior",  "chris",    "crash", "hau",  "wario",
	 "met", "jaunted", 	"lynk", "stitch", "spikemlp", 
	
	
	"spike", "amongdrip",   "tomongus_chan", "amaya", "bluestickman", //roa workshop WITHOUT CHARACTERS TIED TO THEM
	
	
	//RANDOS FOUND BELOW
	
	"crab",	 "hiyasu",	 "cheick",   "amogla",
	"andrew",   "delta",   "miku",   
"minecraftocidk",    "pixel",  "tack",   
"smolm",   "rhythmo",   "yellowblob",     
"redguy",    "car",  "smiley",    
      "averageguy",   "calen", 
      "laffey", "lunzg", "clownso",  "flyingman",
       
    ]
    
    character_strip_name = characterlist[characterdeterminer]

	charactermax = array_length(characterlist) - 1



	
	var songlist
	songlist = ["Fresh", "Dad Battle", "Dad Battle (B Side Remix)", "Lament", "Dusk", "Deathmatch",  "Confrontational Talk", //0-6
	"Spookeez", "South", "South (Starcatcher Remix)", "Monster", //7-10
	"Pico", "Pico (B Side Remix)", "Philly Nice", "Blammed", //11-14
	
	
	// 15 to 28 HOLY CRAP
	"Satin Panties", "Satin Panties (B Side Remix)", "Satin Panties (C Side Remix)", "Satin Panties (Starcatcher Remix)",
	"High", "High (B Side Remix)", "High (C Side Remix)",   "High (Starcatcher Remix)",
	"M.I.L.F.", "M.I.L.F. (B Side Remix)", "M.I.L.F. (B Side Remix Instrumental)", "M.I.L.F. (C Side Remix)", "M.I.L.F. (Starcatcher Remix)", "M.I.L.F. (Neo Remix)",
	
	
	
	"Senpai", "Roses",  "Thorns", "Dead Pixel", "Roots", //29 to 33
	"Ugh", "Guns", "Stress", //34 to 36
	
	
	
	"Lo-Fight", "Overhead", "Ballistic", "Remorse", //37 to 40
	
	"Improbable Outset", "Madness", "Hellclown", "Expurgation", //41 to 44
	
	"My Battle", "Last Chance", "Genocide", //45 to 47
	
	"Foolhardy", //48
	
	"Screenplay", "Parasite", "A.G.O.T.I.", //49 to 51
	
	"Headache", "Nerves", "Release", //52 to 54
	
	"Classroom" //55
	
	"Pollution", "Earth", "Getting Freaky", "Beyond The Stars", "Game Over (Night of the Funky Bot)", //56 to 60
	
	"Wocky", "Beathoven", "Hairball", "Nyaw", //61 to 64
	
	
		"Norway", //65
	
	"Stomachache", //66
	

	
	
	]
	
	
		
		
		//FOR TESTING
		//song_name = "Confrontational Talk"
			song_name = songlist[songdeterminer]

	songmax = array_length(songlist) - 1



	var bpmlist
	
	bpmlist = [120, 180, 187, 180, 180, 180, 180, //Dad songs, last 3 are NO IDEA LMAO
	150,  165, 165, 100, //spookeez, south, south 2, monster
	150, 163, 175, 165, //GO PICO
	
	110, 130, 128, 110, //Satin panties og, B, C, Star
	125, 137, 140, 125, //high og, B, C, star
	180, 196, 196, 142, 180, 180, //milf og, b, b instrumental, c, star, neo
	
	144, 120, 190, 180, 180, //senpai songs and 2 corruption (NO IDEA LOL)
	160, 185, 178, //tankman
	
	120, 180, 200, 120, //whitty and updike
	
	200, 212, 197, 230, //tricky week
	
	160, 190, 213, //tabi
	
	150, //zardy
	
	114, 120, 160, //agoti
	
	120, 100, 120, //yea bro its GARCELLO
	
	135, //liz FUNKIN
	
	145, 135, 124, 140, 95, //Lane week funky BOT
	
	174, 168, 117, 178, //KAPI I DIDNT FORGET YOU
	
	201, //TORD WHY IS THIS 201 BPM
	
	125 //pompom
	


		
		]
		
	
	
//}

boyfriendlist = ["bf_normal", "bf_bad", "bf_star", "bf_omatome", "bf_gfrapper", "bf_minusblue", "bf_minusmean", "bf_minusgreen",  "bf_corrupt","bf_momcorrupt",  "bf_exe" ]


boyfriendmax = array_length(boyfriendlist) - 1

		boyfriend_strip_name = boyfriendlist[boyfrienddeterminer]


girlfriendlist = ["gf_normal", "gf_minus", "gf_bad", "gf_star"]

//girlfriend_strip_name = girlfriendlist[girlfrienddeterminer]

//girlfriendmax = array_length(girlfriendlist) - 1


stageskinlist = ["normal", "corrupted", "bad", "starcatcher"]


//HERES THE DETERMINING THINGS TO CHANGE VARIABLES AND STUFF


	stageskinmax = array_length(stageskinlist) - 1
	
	boyfriendmax = array_length(boyfriendlist) - 1
	
	girlfriendmax = array_length(girlfriendlist) - 1



if (  get_gameplay_time() < 5) {
	
	
	//CHARACTER CHANGING
	
	//beginning number + current_second%(AMOUNT OF SONGS)
	
if (song_name == "Monster")	{
	songdeterminer = 24
	//GOODBYE MONSTER
}
	
	
	 if (character_strip_name == "father") {
		songdeterminer = 0 + current_second%7
}
if (character_strip_name == "skidandpump") {
		songdeterminer = 7 + current_second%4
}
if (character_strip_name == "monster") {
		songdeterminer = 10
}
if (character_strip_name == "pico") {
		songdeterminer = 11 + current_second%4
}
if (character_strip_name == "mom") {
		songdeterminer = 15 + current_second%14
}
if (character_strip_name == "senpai") {
		songdeterminer = 29 + current_second%5
}
if (character_strip_name == "tankman") {
		songdeterminer = 34 + current_second%3
}
if (character_strip_name == "whitty") {
		songdeterminer = 37 + current_second%3
}
if (character_strip_name == "tricky") {
		songdeterminer = 41
}
if (character_strip_name == "tiky") {
		songdeterminer = 41 + current_second%4
}
if (character_strip_name == "tricky2") {
		songdeterminer = 42
}
if (character_strip_name == "redtricky") {
		songdeterminer = 43
}
if (character_strip_name == "trickyrunt") {
		songdeterminer = 44
}
if (character_strip_name == "tabi") {
		songdeterminer = 45 + current_second%3
}
if (character_strip_name == "zardy") {
		songdeterminer = 48
}
if (character_strip_name == "agoti") {
		songdeterminer = 49 + current_second%3
}
if (character_strip_name == "garcello") {
		songdeterminer = 52 + current_second%3
}
if (character_strip_name == "liz") {
		songdeterminer = 55
}
if (character_strip_name == "lane") {
		songdeterminer = 56 + current_second%5
}
if (character_strip_name == "kapi") {
		songdeterminer = 61 + current_second%4
}
if (character_strip_name == "tord") {
		songdeterminer = 66
}
if (character_strip_name == "pompom") {
		songdeterminer = 67
}


//	"penny", "roo",  "valk",    "owen",   "rat",  "xavier",   "segerak", "tenru", //ROA WORKSHOP OVERLAP WITH ACTUAL CHARACTERS
//	"monokuma",  "slime", "quagsires", "pumpkin",  "glace",   "cinder",    
//	"mouse",    "exetior",  "chris",    "crash", "hau",  "wario",
//	 "met", "jaunted", 	"lynk", "stitch", "spikemlp", 



with (oPlayer) {
	
if (obj_stage_main.character_strip_name == "penny" && (url == 2005036466 || url == 2160036641)) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "roo" && url == 1868240517) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "valk" && (url == 2238937911 || url == 1917713379)) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "owen" && url == 2144710708) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "xavier" && url == 2094305833) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "segerak" && url == 2390163800) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "tenru" && url == 2195482758) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "monokuma" && url == 2170728238) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "slime" && url == 2257220861) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "pumpkin" && url == 2322316995) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "glace" && url == 2455571836) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "cinder" && url == 2459515691) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "mouse" && url == 2327147409) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "exetior" && url == 2114127800) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "chris" && (url == 2304280005 || url == 2306569627)) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "crash" && (url == 2375014666 || url == 2000028026)) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "hau" && url == 2216878244) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "wario" && url == 2512197735) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "met" && url == 2501499642) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "jaunted" && url == 2471439958) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "lynk" && url == 2485539286) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "stitch" && url == 2202546422) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "spikemlp" && url == 2500461362) {

			obj_stage_main.characterdeterminer = 5
}
if (obj_stage_main.character_strip_name == "liz" && url == 1917856427) {

			obj_stage_main.characterdeterminer = 5
}
	 
	
	
	
	
	
	
	
}







	song_name = songlist[songdeterminer]
		bpm = bpmlist[songdeterminer]
		boyfriend_strip_name = boyfriendlist[boyfrienddeterminer]
		character_strip_name = characterlist[characterdeterminer]
		girlfriend_strip_name = girlfriendlist[girlfrienddeterminer]
stageskin = stageskinlist[stageskindeterminer]


	

if (song_name == "Confrontational Talk" || character_strip_name == "fatherfearsome") {
	
	song_name = "Confrontational Talk"
	songdeterminer = 6
	character_strip_name = "fatherfearsome"
	characterdeterminer = 1
	boyfriend_strip_name = "bf_bad"
	boyfrienddeterminer = 7
	girlfriend_strip_name = "gf_bad"
	girlfrienddeterminer = 2
	stageskin = "bad"
	stageskindeterminer = 2
	
//Corruption skin
}  else if (song_name == "Lament" || song_name == "Dusk" || song_name = "Deathmatch") {
	
	boyfriend_strip_name = "bf_corrupt"
	boyfrienddeterminer = 8 + current_second%1
	stageskin = "corrupted"
	stageskindeterminer = 1
	
	
	
	//corruption skin 2
} else if (song_name == "Dead Pixel" || song_name == "Roots") {

boyfriend_strip_name = "bf_exe"
	boyfrienddeterminer = 10
	stageskin = "corrupted"
	stageskindeterminer = 1


	
} else {
	
	stageskin = "normal"
	stageskindeterminer = 0
	
	

	
}

if (boyfriend_strip_name == "bf_bad") {
	
	boyfriend_strip_name = "bf_normal"
	boyfrienddeterminer = 0
}




if (boyfriend_strip_name != "bf_bad") { 
	girlfrienddeterminer = 0
	girlfriend_strip_name = "gf_normal" }

if (boyfriend_strip_name == "bf_minusblue" || boyfriend_strip_name == "bf_minusgreen" || boyfriend_strip_name == "bf_minusmean") {
	
		girlfrienddeterminer = 1
	girlfriend_strip_name = "gf_minus"
	
} 

if (boyfriend_strip_name == "bf_star" || song_name == "South (Starcatcher Remix)" || song_name == "Satin Panties (Starcatcher Remix)" || song_name == "High (Starcatcher Remix)" || song_name == "M.I.L.F. (Starcatcher Remix)") {
			girlfrienddeterminer = 3
	girlfriend_strip_name = "gf_star"
boyfriend_strip_name = "bf_star"
boyfrienddeterminer = 2
stageskin = "starcatcher"
stageskindeterminer = 3
	
	
}  




	




}


	song_name = songlist[songdeterminer]
		bpm = bpmlist[songdeterminer]
		boyfriend_strip_name = boyfriendlist[boyfrienddeterminer]
		character_strip_name = characterlist[characterdeterminer]
		girlfriend_strip_name = girlfriendlist[girlfrienddeterminer]
stageskin = stageskinlist[stageskindeterminer]


}




#endregion



	/*
if songdeterminer = 1 {
    song_name = "Fresh"
    bpm = 120
}if songdeterminer = 2 {
    song_name = "Dad Battle"
    bpm = 180
}if songdeterminer = 3 {
    song_name = "Spookeez"
    bpm = 150
}if songdeterminer = 4 {
    song_name = "Pico"
    bpm = 150
}if songdeterminer = 5 {
    song_name = "Pico (B Side Remix)"
    bpm = 163
}if songdeterminer = 6 {
    song_name = "Philly Nice"
    bpm = 175
}if songdeterminer = 7 {
    song_name = "Blammed"
    bpm = 165
}if songdeterminer = 8 {
    song_name = "Satin Panties"
    bpm = 110
}if songdeterminer = 9 {
    song_name = "High"
    bpm = 125
}if songdeterminer = 10 {
    song_name = "High (C Side Remix)"
    bpm = 140
}if songdeterminer = 11 {
    song_name = "M.I.L.F"
    bpm = 180
}if songdeterminer = 12 {
    song_name = "M.I.L.F (C Side Remix)"
    bpm = 142
}if songdeterminer = 13 {
    song_name = "Senpai"
    bpm = 144
}if songdeterminer = 14 {
    song_name = "Roses"
    bpm = 120
}if songdeterminer = 15 {
    song_name = "Thorns"
    bpm = 190
}if songdeterminer = 16 {
    song_name = "Monster"
    bpm = 100
} }