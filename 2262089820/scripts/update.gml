
var input_test = false;
/*with (oPlayer){
	input_test = shield_down;
}*/


if (disable_practice_check == false){
	if ((get_gameplay_time() == 2 && get_training_cpu_action() != CPU_FIGHT)){
		training = true;
		instance_create( 530, 476, "obj_stage_article", 5 );
	}
}

if (get_gameplay_time() <= 122 && mus_phase == 0){
	with (asset_get("oPlayer")){
		if (up_stick_down){
			other.mus_phase = 1;
			other.mus = 1;
		}
		if (down_stick_down){
			other.mus_phase = 1;
			other.mus = 2;
		}
		if (left_stick_down){
			other.mus_phase = 1;
			other.mus = 3;
		}
		if (right_stick_down){
			other.mus_phase = 1;
			other.mus = 4;
		}
		if (shield_down){
			other.mus_phase = 1;
			other.mus = 0;
		}
		if (other.disable_practice_check == false){
			if ((get_gameplay_time() == 2 && get_training_cpu_action() != CPU_FIGHT)){
				other.mus_phase = 1;
				other.mus = -1;
			}
		}
	}
	if (mus_phase == 1){
		sound_play(sound_get("prompt"))
	}
}
if (get_gameplay_time() > 125 && mus_phase == 1){
	switch(mus){
		case 1: //Sobaniitekuretane
			music_play_file("up");
			break;
		case 2: //earth
			music_play_file("down");
			break;
		case 3: //exothermic
			music_play_file("left");
			break;
		case 4: //a spaceship fantasy
			music_play_file("right");
			break;
		case 0: //twilight v3
			input_test = true;
			break;
		case -1: //a
			music_play_file("training");
			break;
	}
	mus_phase = 2;
	mus_timer = 0;
}


if (disable_optimalmode == false){
	if (lowrealfpscount < minrealfpscount){
		if (fps_real<70){
			lowrealfpscount++;
		}
	}else{
		if (!optimalmode){
			optimalmode = true;
		}
	}
}

if (!stars_init){
	instance_create( 510, 20, "obj_stage_article", 1 );//y250
	var rw = round(room_width/2)
	var rh = round(room_height/2)
	instance_create( rw, rh-96, "obj_stage_article", 4 );
	stars_init = true;
	
	
}

if (get_gameplay_time() == 2){
	with (oPlayer){
		if ( variable_instance_exists(id, "doomdesire_storage") ){//doomdesire_storage
			other.jirachi_confirm = true;
		}
	}
	if (jirachi_confirm == true){
		//COMET TEST
		var rw = round(room_width/2)
		var rh = round(room_height/2)
		var tmp_sky = instance_create( rw+2, rh-168, "obj_stage_article", 6 ); //comet bg
		tmp_sky.mode = "sky"
		tmp_sky.image_alpha = 0.5;
		tmp_sky.parallax_x = 0-(0.87);
		tmp_sky.parallax_y = 0+(0.45);//- 68
		var tmp_bg = instance_create( rw-100, rh-62, "obj_stage_article", 6 ); //main comet
		tmp_bg.sprite_index = sprite_get("cometmain")
		tmp_bg.mode = "comet"
		tmp_bg.parallax_x = 0-(0.86);
		tmp_bg.parallax_y = 0+(0.42);//- 68
		tmp_bg.depth = 34;
		tmp_sky.cometstore = tmp_bg;
		var tmp_bg = instance_create( rw+164, rh+248, "obj_stage_article", 6 );//ground
		tmp_bg.sprite_index = sprite_get("cometground")
		tmp_bg.depth = 28;
		var tmp_bg = instance_create( rw+192, rh-417, "obj_stage_article", 6 );//bg2//-144
		tmp_bg.sprite_index = sprite_get("cometmoon")
		tmp_bg.x=tmp_bg.x+0.5
		tmp_bg.y=tmp_bg.y-0.2
		tmp_bg.parallax_x = 0-(0.86);
		tmp_bg.parallax_y = 0+(0.42);//- 68
		tmp_bg.depth = 32;
	}
}

//shooting stars
if(get_gameplay_time()%(((fake_laststock)?64:128)+rand_store)==0){
	instance_create( 800-256+(random_func( 7, 512, true )), -20, "obj_stage_article", 2 );
	rand_store = random_func( 4, (fake_laststock)?32:64, true )
}

if (input_test && !fake_laststock||is_laststock() && !fake_laststock){
	fake_laststock = true;
	var rw = round(room_width/2)
	var rh = round(room_height/2)
	var tmp_bg = instance_create( rw+164, rh+248, "obj_stage_article", 3 );//ground
	if (is_aether_stage()){
	tmp_bg.sprite_index = sprite_get("z_a_ground")
	}else{
	tmp_bg.sprite_index = sprite_get("z_ground")
	}
	tmp_bg.depth = 29;
	var tmp_bg = instance_create( rw+0, rh+367, "obj_stage_article", 3 );//bg5
	tmp_bg.sprite_index = sprite_get("z_bg5")
	tmp_bg.parallax_x = 0-(0.55);
	tmp_bg.parallax_y = 0+(0.20);
	tmp_bg.depth = 30;
	var tmp_bg = instance_create( rw+0, rh+530, "obj_stage_article", 3 );//bg4
	tmp_bg.sprite_index = sprite_get("z_bg4")
	tmp_bg.parallax_x = 0-(0.68);
	tmp_bg.parallax_y = 0+(0.40);
	tmp_bg.depth = 31;
	var tmp_bg = instance_create( rw-274, rh+194, "obj_stage_article", 3 );//bg3
	tmp_bg.sprite_index = sprite_get("z_bg3")
	tmp_bg.x=tmp_bg.x+0.1
	tmp_bg.y=tmp_bg.y-0.75
	tmp_bg.parallax_x = 0-(0.84);
	tmp_bg.parallax_y = 0+(0.40);
	tmp_bg.depth = 32;
	var tmp_bg = instance_create( rw+192, rh-417, "obj_stage_article", 3 );//bg2//-144
	tmp_bg.sprite_index = sprite_get("z_bg2")
	tmp_bg.x=tmp_bg.x+0.5
	tmp_bg.y=tmp_bg.y-0.2
	tmp_bg.parallax_x = 0-(0.86);
	tmp_bg.parallax_y = 0+(0.42);//- 68
	tmp_bg.depth = 33;
	var tmp_bg = instance_create( rw+8, rh-90, "obj_stage_article", 3 );//bg1
	tmp_bg.sprite_index = sprite_get("z_bg1")
	tmp_bg.parallax_x = 0-(0.90);
	tmp_bg.parallax_y = 0+(0.50);//+ 40
	tmp_bg.depth = 35;
	tmp_bg.sun = true;
	if (mus==0){
		music_play_file("final");
	}
	if (mus==1){
		music_crossfade();
	}
}
