
var input_test = false;

//musuic stuff
if (get_gameplay_time() <= 122 && mus_phase == 0){
	with (asset_get("oPlayer")){
		/*if (up_stick_down){
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
		}*/
		if (shield_down&&special_down){
			other.mus_phase = 1;
			other.mus = 0;
		}
	}
	if (mus_phase == 1){
		sound_play(sound_get("EyeFlash"))
	}
}
if (get_gameplay_time() > 125 && mus_phase == 1){
	switch(mus){
		/*case 1: //it is now the new theme//rock arrange
			music_play_file("music_loop2");
			break;
		case 2: //groove ost
			music_play_file("eclipse_battle_temporary");
			break;
		case 3: //painworld
			music_play_file("painworld");
			break;
		case 4: //prologue
			music_play_file("prologue");
			break;*/
		case 0: //moon over the castle 7
			input_test = true;
			break;
	}
	mus_phase = 2;
	mus_timer = 0;
}
	
	/*with(oPlayer){
		if (shield_down){
			input_test = true
		}
	}*/

if (!stg_init){
	//rc = roomcenter (hopefully)
	//print(string(rc))
	var vc = room_height/2
	//print(string(vc));
	
	rocks = instance_create(rc+100, vc+236, "obj_stage_article", 10);//rocks
	ui = instance_create(rc-7, vc+155, "obj_stage_article", 11);//ui
	
	//instance_create(rc, vc-180, "obj_stage_article", 13);
	var rw = round(room_width/2)
	var rh = round(room_height/2)
	instance_create( rw, rh-43, "obj_stage_article", 20 );//skyfull
	instance_create( rw, rh+50, "obj_stage_article", 21 );//other sky moving stuff
	instance_create( rw, rh-43, "obj_stage_article", 22 );//other sky moving stuff
	
	
	
	
	stg_init = true;
}

//laststock stuff
if ( get_gameplay_time() > 125 && ((input_test && !fake_laststock) || (is_laststock() && !fake_laststock)) ){
	fake_laststock = true;
	//instance_create(640, 0, "obj_stage_article", 2);
	//instance_create(0, 85, "obj_stage_article", 10);
	var rw = round(room_width/2)
	var rh = round(room_height/2)
	sequencer = instance_create(0, 0, "obj_stage_article", 30); //sequencer
	instance_create(0, 0, "obj_stage_article", 31); //bgdarkness
	set_bg_data(6, BG_LAYER_Y, get_bg_data(6, BG_LAYER_Y)-770);//-70
	if (mus_phase == 2){
	music_play_file("final");
	}else{
	music_play_file("final_short_b");
	}
	//shake_camera( 1, 200 )
	
	/*sound_play(sound_get("-"),false,0);
	sound_play(sound_get("-"),false,0,0.8,0.9);
	sound_play(sound_get("="),true,0,0.5,0.3);
	sound_play(sound_get("["),true,0,0.5,0.6);
	sound_play(sound_get("["),true,0,0.3,1);
	sound_play(asset_get("sfx_holy_lightning"),false,0,1,0.8);
	sound_play(asset_get("sfx_holy_die"),false,0,1,0.8);
			set_bg_data(5, BG_LAYER_ANIMSPD, 4);
			set_bg_data(6, BG_LAYER_ANIMSPD, 7);*/
}

timerwait++;
if (timerwait > timerwait_max){
	
	
	timerwait = 0;
	timerwait_max = 30 + random_func( 5, 60, true );
	
	var x_off = -400 + random_func( 4, 800, true );
	
	//print("should spawn something. next timerwait is "+string(timerwait_max))
	instance_create(rc+x_off, 100, "obj_stage_article", 12);
	
}

//wip
set_bg_data(6, BG_LAYER_Y, get_bg_data(6, BG_LAYER_Y)+(sin( get_gameplay_time()*0.01 )/-5));