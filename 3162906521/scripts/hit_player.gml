//hit_player.gml

//makes it so that enemies drop metal when hit x amount of times. The throws rock stat is what determines if the hitbox counts towards that number so that you can't just farm multi-hit attacks for metal
if my_hitboxID.throws_rock == 0{
    metal_drop_counter = metal_drop_counter + 1;
    // print(metal_drop_counter);
    if metal_drop_counter >= 3{
        sound_play(sound_get("demoman_grenade"));
        s_ammo_drop = instance_create(hit_player_obj.x+20,hit_player_obj.y-100,"obj_article2");
		s_ammo_drop.hsp = -1 * spr_dir;
		s_ammo_drop.vsp = -10.5;
		s_ammo_drop.ammo_direction = spr_dir * -1;
		s_ammo_drop.ammo_amount = 25;
		metal_drop_counter = metal_drop_counter - 3;
		//voicelines! Get your voicelines while they're hot, right here folks!
		if(get_synced_var (player) == 1){
			if my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_DSTRONG{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_bettersidesofbeef";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_cutyoubackdown";
					voice_volume = 1.5;
					voice_play();
				}else if (snd_rng >= 2) {
					voice_id = "v_creamgravy";
					voice_volume = 2.5;
					voice_play();
				}
			} else if my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_DAIR or my_hitboxID.attack == AT_JAB{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_pow";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_bam";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng >= 2){
					voice_id = "v_bap";
					voice_volume = 3;
					voice_play();
				}
			} else if my_hitboxID.attack == AT_UAIR{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_cowboyup";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_mini2";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng >= 2) {
					voice_id = "v_mini3";
					voice_volume = 1.5;
					voice_play();
				}
			} else if my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_DSPECIAL_AIR or my_hitboxID.attack == AT_FTILT{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_bacon";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_gotcha";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng >= 2) {
					voice_id = "v_pow";
					voice_volume = 3;
					voice_play();
				}
			} else if my_hitboxID.attack == AT_BAIR or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_FSTRONG{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_bacon";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_branded";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng >= 2) {
					voice_id = "v_pow";
					voice_volume = 3;
					voice_play();
				}
			} else if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_gotcha";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_stoptryingtomess";
					voice_volume = 2;
					voice_play();
				}else if (snd_rng >= 2) {
					voice_id = "v_planturnout";
					voice_volume = 3;
					voice_play();
				}
			}
		}
		if(get_synced_var (player) == 2){
			snd_rng = random_func(0, 7, true);
			if (snd_rng == 0) {
				voice_id = "cd_gibberish1";
				voice_volume = 2;
				voice_play();
			}else if (snd_rng == 1) {
				voice_id = "cd_gibberish2";
				voice_volume = 2;
				voice_play();
			}else if (snd_rng == 2) {
				voice_id = "cd_gibberish3";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 3) {
				voice_id = "cd_gibberish4";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 4) {
				voice_id = "cd_yelling";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 5) {
				voice_id = "cd_yelling2";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 6) {
				voice_id = "cd_wabbywabbo";
				voice_volume = 3;
				voice_play();
			}
		}
		if(get_synced_var (player) == 3){
			snd_rng = random_func(0, 8, true);
			if (snd_rng == 0) {
				voice_id = "pt_italian1";
				voice_volume = 2;
				voice_play();
			}else if (snd_rng == 1) {
				voice_id = "pt_italian2";
				voice_volume = 2;
				voice_play();
			}else if (snd_rng == 2) {
				voice_id = "pt_italian3";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 3) {
				voice_id = "pt_italian4";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 4) {
				voice_id = "pt_italian5";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 5) {
				voice_id = "pt_italian6";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 6) {
				voice_id = "pt_italian7";
				voice_volume = 3;
				voice_play();
			}else if (snd_rng == 7) {
				voice_id = "pt_italian8";
				voice_volume = 3;
				voice_play();
			}
		}
	}
}
if my_hitboxID.attack == AT_DSPECIAL or (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3) {
	metal_drop_counter = metal_drop_counter + 1;
	// print(metal_drop_counter);
}

//telefrag
if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.hitpause > 15{//telefrag reward
	if(get_synced_var (player) == 3){
		sound_play(sound_get("pt_jerome"), false, noone, 2);
	} else{
		sound_play(sound_get("demo_shield_hit"), false, noone, 2);
	}
	m_ammo_drop = instance_create(x,y-80,"obj_article2");
	m_ammo_drop.vsp = -15;
	m_ammo_drop.hsp = spr_dir * 1.5;
	m_ammo_drop.ammo_direction = spr_dir;
	m_ammo_drop.ammo_amount = 100;
	m_ammo_drop.ammo_type = 1;
	print("telefrag!!");
}
//widowmaker metal refund
if my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hitpause > 12{
	other.window = 2;
	sound_play(sound_get("ammo_pickup"), false, noone, 1.1);
	metal_count = metal_count + 50;
	vsp = vsp -3;
}

//fspecial flying toolbox hitbox
if my_hitboxID.attack == AT_FSPECIAL{
	if boxing_box.tool_state != 2{
		boxing_box.tool_state = 1;
		boxing_box.wait_timer = 110;
		boxing_box.vsp = 0.05;
	}
}

if my_hitboxID.attack == AT_DSPECIAL{
	stupid_rat.death_timer = 900;
	stupid_rat.hsp = 0;
	stupid_rat.vsp = 0;
	rat_alive = false;
}

if my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2){
	ustrong_dd = true;
}

if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3 && ustrong_dd == true{
	ustrong_dd = false;
	sound_play( sound_get( "doubledonk" ) );
	if spr_dir == -1{
		spawn_hit_fx( x, y - 210, donk_rev );
	} else{
		spawn_hit_fx( x, y - 210, donk );
	}
}

// if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1{
// 	create_hitbox(49, 4, my_hitboxID.x, my_hitboxID.y);
// 	my_hitboxID.destroyed = true;
// }

#define voice_play() //voiceline code is heavily based off of Roboshyguy's Jerma985 mod, I was given permission to use his code as a base.
if(!dont_shutup){
sound_stop(voice_playing_sound);
}
voice_playing_sound = sound_play(sound_get(voice_id), false, noone, voice_volume);
dont_shutup = false;