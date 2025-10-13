alt = get_player_color(player);

if ("prev_alt" not in self){
    drawtime = 0;
    drawing = 0;
    voice = noone;
}
   
if ("prev_alt" in self && prev_alt != alt){
    drawtime = 0;
}
drawtime += 1;
prev_alt = alt;

alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

shader_end();prepare_shader(); //Add this line before you draw the charselectbg

shader_start(); //Add this before drawing the css images

//if (get_color_profile_slot_b(0, 7) == 255) {
	if(drawtime == 1){
		if(alt == 12){
			rand = random_func(0, 9, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("thats the big time"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("big"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("electric power is the future"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("simply shocking"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("its electric"));
    	    }else if(rand == 5){
    	    	sound_stop(voice);voice = sound_play(sound_get("its electrifying"));
    	    }else if(rand == 6){
    	    	sound_stop(voice);voice = sound_play(sound_get("more power"));
    	    }else if(rand == 7){
    	    	sound_stop(voice);voice = sound_play(sound_get("power on"));
    	    }else if(rand == 8){
    	    	sound_stop(voice);voice = sound_play(sound_get("feel the power"));
    	    }
	    }else if(alt == 13){
			rand = random_func(0, 5, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("thats the big time"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("big"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("more power"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("power on"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("feel the power"));
    	    }
	    }else if(alt == 17){
			rand = random_func(0, 7, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("thats the big time"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("big"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("more power"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("power on"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("feel the power"));
    	    }else if(rand == 5){
    	    	sound_stop(voice);voice = sound_play(sound_get("feeling lucky"));
    	    }else if(rand == 6){
    	    	sound_stop(voice);voice = sound_play(sound_get("im feeling lucky today"));
    	    }
	    }else if(alt == 19){
			rand = random_func(0, 2, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("wario go"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("wario_mygarlics"));
    	    }
	    }else if(alt == 20){
			rand = random_func(0, 7, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("rubies"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("richer"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("mmm"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("lamp oil"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("rope"));
    	    }else if(rand == 5){
    	    	sound_stop(voice);voice = sound_play(sound_get("bombs"));
    	    }else if(rand == 6){
    	    	sound_stop(voice);voice = sound_play(sound_get("voiceofgod"));
    	    }
	    }else if(alt == 21){
			sound_stop(voice);voice = sound_play(sound_get("squadala"));
	    }else if(alt == 22){
	        rand = random_func(0, 6, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("meen_wretchedchild"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("meen_screem"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("meen_cell"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("meen_laugh"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("meen_mirror"));
    	    }else if(rand == 5){
    	    	sound_stop(voice);voice = sound_play(sound_get("meen_my_guardians"));
    	    }
	    }else if(alt == 23){
	        rand = random_func(0, 9, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("a runabout"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("confound those dover boys"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("dan backslide"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("drat them double drat them"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("ill steal it"));
    	    }else if(rand == 5){
    	    	sound_stop(voice);voice = sound_play(sound_get("no one will ever know"));
    	    }else if(rand == 6){
    	    	sound_stop(voice);voice = sound_play(sound_get("oh how i hate them"));
    	    }else if(rand == 7){
    	    	sound_stop(voice);voice = sound_play(sound_get("the dover boys"));
    	    }else if(rand == 8){
    	    	sound_stop(voice);voice = sound_play(sound_get("they drive me to drink"));
    	    }
	    }else if(alt == 24){
			sound_stop(voice);voice = sound_play(sound_get("snow miser"));
	    }else if(alt == 26){
			rand = random_func(0, 2, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("toadsworth noise"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("toadsworth noise 2"));
    	    }
	    }else{
	    	rand = random_func(0, 21, true);
    	    if(rand == 0){
    	    	sound_stop(voice);voice = sound_play(sound_get("very skillful"));
    	    }else if(rand == 1){
    	    	sound_stop(voice);voice = sound_play(sound_get("lets go"));
    	    }else if(rand == 2){
    	    	sound_stop(voice);voice = sound_play(sound_get("im feeling lucky today"));
    	    }else if(rand == 3){
    	    	sound_stop(voice);voice = sound_play(sound_get("look at all that cash"));
    	    }else if(rand == 4){
    	    	sound_stop(voice);voice = sound_play(sound_get("feeling lucky"));
    	    }else if(rand == 5){
    	    	sound_stop(voice);voice = sound_play(sound_get("money money money"));
    	    }else if(rand == 6){
    	    	sound_stop(voice);voice = sound_play(sound_get("monopoly byebyenow"));
    	    }else if(rand == 7){
    	    	sound_stop(voice);voice = sound_play(sound_get("time to roll the dice"));
    	    }else if(rand == 8){
    	    	sound_stop(voice);voice = sound_play(sound_get("take a ride on the railroad"));
    	    }else if(rand == 9){
    	    	sound_stop(voice);voice = sound_play(sound_get("money money money"));
    	    }else if(rand == 10){
    	    	sound_stop(voice);voice = sound_play(sound_get("you want more"));
    	    }else if(rand == 11){
    	    	sound_stop(voice);voice = sound_play(sound_get("be a tycoon like me"));
    	    }else if(rand == 12){
    	    	sound_stop(voice);voice = sound_play(sound_get("big bonus"));
    	    }else if(rand == 13){
    	    	sound_stop(voice);voice = sound_play(sound_get("dont spend this all in one place"));
    	    }else if(rand == 14){
    	    	sound_stop(voice);voice = sound_play(sound_get("i wanna be a millionaire"));
    	    }else if(rand == 15){
    	    	sound_stop(voice);voice = sound_play(sound_get("welcome to the tycoon club"));
    	    }else if(rand == 16){
    	    	sound_stop(voice);voice = sound_play(sound_get("turbo jackpot"));
    	    }else if(rand == 17){
    	    	sound_stop(voice);voice = sound_play(sound_get("we need high numbers here"));
    	    }else if(rand == 18){
    	    	sound_stop(voice);voice = sound_play(sound_get("you own it all"));
    	    }else if(rand == 19){
    	    	sound_stop(voice);voice = sound_play(sound_get("jackpot"));
    	    }else if(rand == 20){
    	    	sound_stop(voice);voice = sound_play(sound_get("free money"));
    	    }
		}
	    //set_color_profile_slot(0, 7, get_color_profile_slot_r(0, 7), get_color_profile_slot_g(0, 7), get_color_profile_slot_b(0, 7) + 1);
	}

if ("portrait" in self){
	var temp_x = floor(x+10);
	var temp_y = floor(y+10);
	
	draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	
	if ("prev_alt2" in self && prev_alt2 != alt){
	    portrait = random_func(0, 6, true);
	    if(portrait == 0){
		    //set_victory_portrait(sprite_get("portrait1"));
		    set_victory_sidebar(sprite_get("result_small_1"));
	    }else if(portrait == 1){
		    set_victory_sidebar(sprite_get("result_small_2"));
	    }else if(portrait == 2){
		    set_victory_sidebar(sprite_get("result_small_3"));
	    }else if(portrait == 3){
		    set_victory_sidebar(sprite_get("result_small_4"));
	    }else if(portrait == 4){
		    set_victory_sidebar(sprite_get("result_small_5"));
	    }else if(portrait == 5){
		    set_victory_sidebar(sprite_get("result_small_6"));
	    }
	}
	
	prev_alt2 = alt;
	
	if(portrait == 0){
	    draw_sprite_ext(sprite_get("charselect_1"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}else if(portrait == 1){
	    draw_sprite_ext(sprite_get("charselect_2"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}else if(portrait == 2){
	    draw_sprite_ext(sprite_get("charselect_3"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}else if(portrait == 3){
	    draw_sprite_ext(sprite_get("charselect_4"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}else if(portrait == 4){
	    draw_sprite_ext(sprite_get("charselect_5"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}else if(portrait == 5){
	    draw_sprite_ext(sprite_get("charselect_6"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	     
	if(portrait > 6){
	    portrait = 0;
	}
}else{
	portrait = random_func(0, 6, true);
	if(portrait == 0){
		set_victory_sidebar(sprite_get("result_small_1"));
	}else if(portrait == 1){
		set_victory_sidebar(sprite_get("result_small_2"));
	}else if(portrait == 2){
		set_victory_sidebar(sprite_get("result_small_3"));
	}else if(portrait == 3){
	    set_victory_sidebar(sprite_get("result_small_4"));
    }else if(portrait == 4){
	    set_victory_sidebar(sprite_get("result_small_5"));
    }else if(portrait == 5){
	    set_victory_sidebar(sprite_get("result_small_6"));
    }
}

shader_end();prepare_shader(); //Add this after drawing the css images

muno_event_type = 6;
user_event(14);

#define prepare_shader()
	static_colorB = colorB;
	static_colorO = colorO;
	static_colorT = colorT;
	static_colorI = colorI;
	init_shader();