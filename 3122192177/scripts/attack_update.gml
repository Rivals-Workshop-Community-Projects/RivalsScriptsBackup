//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if(attack == AT_JAB){
	if(window == 6 && window_timer > 4){
		if(!was_parried){
			if(attack_pressed){
				attack_end();
				window = 1;
				window_timer = 0;
			}
		}
	}
	//sfx
	if(window == 1 && window_time_is(get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH) - 1)){
	sound_play(sound_get("swish2"));	
	}	if(window == 4 && window_time_is(get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH) - 1)){
	sound_play(sound_get("swish"));	
	}
}

if(attack == AT_NSPECIAL){
	hsp = clamp(hsp,-3.5,3.5);
	vsp = clamp(vsp,-8.5,2.5);
	can_fast_fall = false;
	if(window == 1 && window_time_is(get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) - 1)){
		if(special_down){
		sound_play(sound_get("sfx_charging"));
		}
	}
		if(window == 1 && window_time_is(1)){
		sound_play(sound_get("se_zelda_magic01"), 0, noone, 0.5); 
		nspec_hud_trans = 0;
		begin_nspechud = false;
	}

	if(window == 2){
		
		if(window_timer == 3){
			begin_nspechud = true;
		}
		if(nspec_hud_trans != 1 && begin_nspechud){
			nspec_hud_trans += 0.05;
		}
		if(special_down){
		if(window_time_is(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) - 1)){
			
			if(nspec_charge < 180){
			sound_play(sound_get("beam_charged"));
			//nspec_charge += 1;
			}
			window_timer = 0;
		}	if(window_time_is(7)){
			
			//if(nspec_charge < 12){
			//nspec_charge += 1;
			//}
		}
		
			if(nspec_charge == 180){
				if(played_fanfare == false){
    		sound_play(sound_get("materia_select"), 0, noone, 1.2); 
			white_flash_timer = 14;
			spawn_hit_fx(x+20*spr_dir, y-50, 301);     
    		played_fanfare = true;	
				}
			}
		nspec_charge += 2;
			
		}else{
			if(nspec_charge < 180){
			sound_stop(sound_get("sfx_charging"));	
		window = 3;
		window_timer = 0;
			}else{
			sound_stop(sound_get("sfx_charging"));
		window = 5;
		window_timer = 0;				
			}
	}
	}else{
		if(nspec_hud_trans != 0){
			nspec_hud_trans -= 0.1;
		}		
	}
	
	if(window == 4 && window_time_is(get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH) - 1)){
		attack_end();
	if(!was_parried){
		if(!free){
	set_state(PS_IDLE);
		}else{
	set_state(PS_IDLE_AIR);		
		}
	}else{
	set_state(PS_PRATFALL);	
	}
	}
	
	//create hitbox
	if(window == 3 && window_time_is(4)){
		switch(curr_materia){
			case 0:
			sound_play(sound_get("magic_whoosh"));
			move_cooldown[AT_NSPECIAL] = 45;
			create_hitbox(AT_NSPECIAL, 1, x + spr_dir * 55, y - 45);
			break;
			
			case 1:
			sound_play(sound_get("land"));
			create_hitbox(AT_NSPECIAL, 3, x + spr_dir * 55, y - 45);			
			break;
			
			case 2:
			sound_play(sound_get("gravity_fire"));
			move_cooldown[AT_NSPECIAL] = 120;
			create_hitbox(AT_NSPECIAL, 7, x + spr_dir * 55, y - 45);			
			break;
		}
		nspec_charge = 0;
		played_fanfare = false;
	}
	if(window == 5 && window_time_is(4)){
		sound_play(sound_get("sfx_bigmagic"));
		switch(curr_materia){
			case 0:
			sound_play(sound_get("magic_whoosh"));
			move_cooldown[AT_NSPECIAL] = 45;
			catalyst_spell = create_hitbox(AT_NSPECIAL, 2, x + spr_dir * 55, y - 45);
			break;

			case 1:
			sound_play(sound_get("land"));
			death_owner = noone;
			catalyst_spell = create_hitbox(AT_NSPECIAL, 4, x + spr_dir * 55, y - 45);			
			break;

			case 2:
			sound_play(sound_get("gravity_bigfire"));
			move_cooldown[AT_NSPECIAL] = 120;
			catalyst_spell = create_hitbox(AT_NSPECIAL, 8, x + spr_dir * 45, y - 35);			
			break;
		}
		nspec_charge = 0;
		played_fanfare = false;
	}
	
	/*
	if(window == 4){
		if(curr_materia == 1){
			if(special_pressed){
				clear_button_buffer( PC_SPECIAL_PRESSED );
				window = 1;
				window_timer = 0;
			}
		}
	}
	*/
	
}

//fspecial
if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	if(window == 1 && window_timer = 1){
		activate_fspecial = false;
		destroy_field = false;
	}
	
	//place on player
	if(window == 2 && window_timer == 1){
		if (instance_exists(materia_field) && materia_field != 0){
			window = 3;
			window_timer = 0;
			if(materia_field.hit_cooldown == 0){
			materia_field.need_to_die = true;
			}
		}else{
		if(!special_down){
			window = 3;
			window_timer = 0;
    sound_play(sound_get("se_zelda_special_L01"));
    sound_play(asset_get("sfx_ori_uptilt_single"));
    materia_field = instance_create(x, y-48, ("obj_article1"));
		}
		}
	}
	
	//activate projectile
	if(window == 2 && window_timer > 1){
	if(!special_down){	
			window = 3;
			window_timer = 0;
			activate_fspecial = true;
	}
	}
	
}

if(attack == AT_DSPECIAL){
	window = 10;
}

if(attack == AT_USPECIAL){
	can_wall_jump = true;
	if(window == 5 && window_time_is(get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH) - 1)){
          set_attack( AT_USPECIAL_2 );
          hurtboxID.sprite_index = sprite_get("uspecial2_hurt");
          window = 1;
          window_timer = 0;		
	}
	
	if(window == 1 && window_time_is(get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) - 1)){
	sound_play(asset_get("sfx_swipe_medium1"));
	spawn_base_dust(x, y, "doublejump", spr_dir);
	}
	
	if(window == 1 && window_timer == 1){
		uspec_has_boosted = false;
	}
}

if(attack == AT_USPECIAL_2){
	can_wall_jump = true;
	if(window == 1 && window_time_is(get_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH) - 1)){
		window = 1;
		window_timer = 0;
	}
	
	if(window == 1){
		fall_through = down_down;
	}
	
	if(window == 1){
		if(freemd){
	sound_play(sound_get("land"), 0, noone, 0.5);	
	sound_play(asset_get("sfx_land_med"));	
	spawn_base_dust(x-15*spr_dir, y, "land", spr_dir);
		window = 2;
		window_timer = 0;
		}else{
		if(!free){
			
			if(fall_through){
			free = true;
			}else{
	sound_play(sound_get("land"), 0, noone, 0.5);	
	sound_play(asset_get("sfx_land_med"));	
	spawn_base_dust(x-15*spr_dir, y, "land", spr_dir);
		window = 2;
		window_timer = 0;				
			}
		}
		}
	}
	
	if(window == 2 && window_timer > 11){
		/*
		can_attack = true;
		can_special = true;
		can_strong = true;
		can_jump = true;
  	if (down_pressed || right_pressed || left_pressed || up_pressed || down_down || right_down || left_down || up_down){
  	    window_timer = 32;
  	}
  	*/
  	iasa_script();
	}
}

if(attack == AT_DSTRONG){
		if(window == 1 && window_timer = 1){
		dstrong_charged = false;
		dstrong_var = false;
		reset_hitbox_value(AT_DSTRONG, 4, HG_WIDTH);
		reset_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT);
	}if (window == 1 && strong_charge > 25 && dstrong_var == false){
		dstrong_charged = true;
		spawn_hit_fx(x + -6*spr_dir, y, dstrong_vfx);
		sound_play(asset_get("sfx_ori_ustrong_charge"));
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		dstrong_var = true;
	}
	
	if(dstrong_charged){
		if(window == 2 && window_time_is(2)){
		sound_play(asset_get("sfx_absa_boltcloud"));
		create_hitbox(AT_DSTRONG, 5, x + spr_dir, y);	
		}if(window == 2 && window_time_is(8)){
		create_hitbox(AT_DSTRONG, 5, x + spr_dir, y);	
		}if(window == 2 && window_time_is(12)){
		sound_play(sound_get("thunder"));
		create_hitbox(AT_DSTRONG, 6, x + spr_dir, y);	
		}
	}
}

//sfx only
if(attack == AT_DAIR && window == 1 && window_time_is(get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH) - 1)){
sound_play(sound_get("se_zelda_attackair_F01"), 0, noone, 0.5); 
}

if(attack == AT_DTILT && window == 1 && window_time_is(get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH) - 1)){
sound_play(sound_get("se_ness_pk_s"), 0, noone, 0.5); 
}
if(attack == AT_BAIR && window == 1 && window_time_is(get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH) - 1)){
sound_play(sound_get("se_ness_pk_s"), 0, noone, 0.5); 
}

if(attack == AT_UTILT && window == 1 && window_time_is(get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH) - 1)){
sound_play(sound_get("swish3"), 0, noone, 0.45); 
sound_play(sound_get("se_ness_pk_s"), 0, noone, 0.5); 
}

if(attack == AT_FAIR && window == 1 && window_time_is(get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH) - 1)){
sound_play(asset_get("sfx_ori_dtilt_perform"), 0, noone, 0.5); 
}

if(attack == AT_UAIR && window == 1 && window_time_is(get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) - 1)){
sound_play(sound_get("swish2"), 0, noone, 0.45); 
sound_play(sound_get("se_zelda_attack100end"), 0, noone, 0.5);
}if(attack == AT_UAIR && window == 2 && window_time_is(get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH) - 1)){
sound_play(sound_get("holy_impact"), 0, noone, 0.5); 
sound_play(sound_get("se_zelda_win01_02"), 0, noone, 0.5);
}

if(attack == AT_USTRONG && window == 2 && window_time_is(2)){
sound_play(sound_get("holy_impact"), 0, noone, 0.75); 
sound_play(sound_get("magic_whoosh"), 0, noone, 0.75);
//sound_play(asset_get("sfx_ori_seinhit_heavy"));
sound_play(asset_get("sfx_ori_energyhit_heavy"), 0, noone, 0.5);
}

if(attack == AT_DSTRONG && window == 2 && window_time_is(2)){
sound_play(asset_get("sfx_absa_cloud_placepop"), 0, noone, 1);
sound_play(asset_get("sfx_ori_dtilt_perform"), 0, noone, 1); 
}if(attack == AT_USPECIAL && window == 5 && window_time_is(1)){
sound_play(sound_get("se_zelda_win01_02"), 0, noone, 0.5);	
}

if(attack == AT_UTILT || attack == AT_TAUNT_2 || attack == AT_FSTRONG){
	hud_offset = 40;
}if(attack == AT_UAIR){
	hud_offset = 65;
}if(attack == AT_USPECIAL){
	hud_offset = 10;
}if(attack == AT_NSPECIAL){
	if(begin_nspechud){
	hud_offset = 80;
	}else{
	hud_offset = 10;	
	}
}

if(attack == AT_TAUNT && window == 1 && window_timer = 1){ 
	if(up_down || up_pressed){
	attack = AT_TAUNT_2;
    window = 1;
    window_timer = 0;
	}	if(down_down || down_pressed){
	attack = AT_EXTRA_1;
    window = 1;
    window_timer = 0;
	}	if(right_down || right_pressed || left_down || left_pressed){
	rng_var = random_func(0, 2, true);
	switch(rng_var){
	case 0:
	attack = AT_EXTRA_2;
    window = 1;
    window_timer = 0;
    break;
	case 1:
	attack = AT_EXTRA_3;
    window = 1;
    window_timer = 0;
    break;
	}
	}
}

if(attack == AT_TAUNT_2){
	if(taunt_down){
		strong_down = true;
	}
}

if(attack == AT_EXTRA_1){
	if(window == 1 && window_timer == 1){
	move_cooldown[AT_TAUNT] = 150;
	sound_play(sound_get("SE_SUBM_CURSOR"));
	spawn_hit_fx(x + 17*spr_dir, y-70, tifa_vfx);	
	create_hitbox(AT_EXTRA_1, 1, x, y);	
	}
}if(attack == AT_EXTRA_2){
	if(window == 1 && window_timer == 1){
	move_cooldown[AT_TAUNT] = 120;
	sound_play(sound_get("SE_SUBM_CURSOR"));
	spawn_hit_fx(x + 17*spr_dir, y-70, cloud1_vfx);	
	create_hitbox(AT_EXTRA_2, 1, x, y);	
	}
	if(window == 2 && window_timer == 1){
	sound_play(sound_get("SE_GAMESITADASI"), 0, noone, 1, 1.8);	
	}
	
}if(attack == AT_EXTRA_3){
	if(window == 1 && window_timer == 1){
	move_cooldown[AT_TAUNT] = 150;
	sound_play(sound_get("SE_SUBM_CURSOR"));
	spawn_hit_fx(x + 17*spr_dir, y-70, cloud2_vfx);	
	create_hitbox(AT_EXTRA_3, 1, x, y);	
	}
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion