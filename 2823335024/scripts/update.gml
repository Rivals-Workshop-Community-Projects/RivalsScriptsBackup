print_debug(hue_offset);

//update

if (hue_offset == 0){
	hue_rising = -1;
	hue_hold -= 1;
	if hue_hold == 0{
		print_debug("lol");
		hue_hold = 40;
		hue_offset += 1;
		hue_rising = 1;
	}
}
else if (hue_offset == 106){
	hue_rising = -1;
	hue_hold -= 1;
	if hue_hold == 0{
		hue_hold = 40;
		hue_offset -= 1;
		hue_rising = 0;
		print_debug(hue_rising);
		print_debug(hue_offset);
	}
}

if (hue_offset >= 0 && hue_offset <= 106){
  if (hue_rising == 1){
	hue_offset+=hue_speed;
	hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
  }
  if (hue_rising == 0) {
    hue_offset-=hue_speed;
	hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
  }
}



color_rgb=make_color_rgb(89, 238, 255) //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 11, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_article_color_slot( 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); 
init_shader();

//hehe
if (joycon_drift = "on"){
	if state==PS_IDLE || state==PS_CROUCH{
		if joycon_drift_dir == "left"{
		hsp = -0.12;
		}
		if joycon_drift_dir == "right"{
		hsp = 0.12;
		}
	}
}

//fade handler
	for (var i = 0; i < 10; i++){
	   if(after_image[i] != -1 && get_gameplay_time() % 2 == 0){
	       after_image[i].alpha--;
	       if(after_image[i].alpha == 0){
	           after_image[i] = -1;
       }
   } 
}

//idk if this works or not but
//(for the record it worked)
if (death_detect==-4){
	var check_yes = false;
	with (oPlayer){
		//if (id != other.id){
			if (state==PS_RESPAWN||state==PS_DEAD){//when someone's ded
				other.death_detect = id;
				check_yes = true;
			}
		//}
	}
	if (check_yes){
		//print(string(damage_track[death_detect.player]))
		//print(string(get_player_damage(death_detect.player)))
		if (damage_track[death_detect.player] == 0){
			sound_play(sound_get("nice_throw_3"));
		}
	}
}
if (death_detect!=-4){
	
	with (death_detect){
		if (state!=PS_RESPAWN&&state!=PS_DEAD){
			other.death_detect = -4;
		}
	}
}
with (oPlayer){
	//if (id != other.id){
		other.damage_track[player] = get_player_damage(player)
	//}
}
//

if (nair_did > 0){
	if (!free){
		nair_did = 0;
	}
}

if (track_altered = true){
	if (!free){
		fsp_air_track = fsp_air_max;
		dsp_air_track = dsp_air_max;
	}
}
if (grav_altered = true){
	if (state==PS_ATTACK_AIR&&attack==AT_NAIR){
	}else{
		gravity_speed = orig_grav;
		grav_altered = false;
	}
	if (nair_did > 2){
		gravity_speed = orig_grav;
		grav_altered = false;
	}
}

if (get_player_color( player ) == 7){ //towerofheaven
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[35, 67, 49]
init_shader();
}
}

if (t2_yes&&(state!=PS_ATTACK_GROUND||attack!=AT_TAUNT_2)){
	t2_yes = false;
	sound_stop(sound_get("wii"))
}

with (asset_get("oPlayer")){
	if (id != other.id){
	//with (other){print_debug( "other id detect" )}
		if (state==PS_HITSTUN){
		//with (other){print_debug( "hitstun detect" )}
			if (last_player == other.player){
				//with (other){print_debug( "last player detect" )}
				if (last_attack == AT_USPECIAL && last_hbox_num == 4){
					//with (other){print_debug( "last attack detect" )}
					if (!hitpause){
						//with (other){print_debug( "hitpause detect" )}
						hsp = 0;
						//vsp = -5;
					}
				}
			}
		}
		//with (other){print_debug( "---
		//---
		//---" )}
	}
}

if (joycon_drift_timer>0){
	if (joycon_drift=="off"){
		if (get_player_color( player ) == 15){
			sound_play(sound_get("fortnite"));
		}
		
		sound_play(sound_get("off"));
		
		joycon_drift = "on"
		white_flash_timer = 24
		joycon_drift_anim = joycon_drift_anim_duration;
		joycon_drift_anim_type = 1;
	}
	if (joycon_drift_timer == joycon_drift_anim_duration){
		joycon_drift_anim = joycon_drift_anim_duration;
		joycon_drift_anim_type = 0;
	}
	if (joycon_drift_timer == 1){
		sound_play(sound_get("on"));
		joycon_drift = "off"
	}
	
	//if timer is 1 and youre in attack
	/*if (state == PS_ATTACK_GROUND && state == PS_ATTACK_GROUND){
		if (safety_strap_timer==1||safety_strap_timer==2){
			safety_strap_timer=2
		}else{
		safety_strap_timer--;
		}
	}else{*/
		joycon_drift_timer--;
	//}
	
	if (joycon_drift_timer%2==0){
		spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-48+random_func( 8, 96, true ), flamefx );
	}
}
if (joycon_drift_anim>0){
	joycon_drift_anim--;
}



if state == PS_LAND || state == PS_IDLE || state == PS_HITSTUN {
    usednspec = 0;

}




//runecode
if (runesUpdated){
	if (runeA){
		jump_speed = 12;
		djump_speed = 10.5;
	}else{
		jump_speed = 10.5;
		djump_speed = 9;
	}
	if (runeB){
		wave_land_adj = 1.4;
		wave_friction = .01;
	}else{
		wave_land_adj = 1;
		wave_friction = .02;
	}
	if (runeD){
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 2);
	}else{
		reset_attack_value(AT_FAIR, AG_LANDING_LAG);
	}
	if (runeE){
		set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_JAB, 2, HG_ANGLE, 88);
	}else{
		reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_JAB, 2, HG_ANGLE);
	}
	if (runeF){
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
	}else{
		reset_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER);
		reset_hitbox_value(AT_NAIR, 1, HG_ANGLE);
	}
	if (runeH){
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 265);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
	}else{
		reset_hitbox_value(AT_DAIR, 2, HG_ANGLE);
		reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
	}
	if (runeI){
		set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 12);
	}else{
		reset_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH);
	}
	runesUpdated = false;
}


if (runeC){
	if (state==PS_DOUBLE_JUMP){
		if (state_timer==0){
			hsp=hsp+(3*(right_down-left_down))
		}
	}
}

if (runeJ){
	if (state==PS_ATTACK_GROUND && attack==AT_FSTRONG){
		if (smash_charging){
			strong_charge++;
		}
	}
}

if (runeN&&runeO){
	joycon_drift_timer = joycon_drift_duration-1;
}



