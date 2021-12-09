//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_UAIR || attack == AT_FAIR || attack == AT_BAIR){
	if(flutterTimer > 0){
		if(up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed){
			if(up_down){
    			if(window_timer == 1){
					spawn_base_dust(x-(0*spr_dir), y, "n_wavedash", 0);
    				sound_play(sound_get("Substitute"));
    				flutterTimer -= 15;	
    			}
			}
		}
	}
}



if(attack == AT_FSTRONG){
	if(window == 2){
		if(window_timer == 1){
		spawn_base_dust(x-(30*spr_dir), y, "dash_start", 0);
		}
	}
	
}

if(attack == AT_DSPECIAL){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer == 1){
			Dspecial_count = 0;
		}
	}
	if (window = 2){
		if(window_timer == 1){
			Dspecial_count ++;
		}
		if(flutterTimer > 0 && Dspecial_count >= 2){
		can_shield = true
		if(shield_pressed){
			sound_play(sound_get("Run"));
			flutterTimer -= 30;
		}
		}
		if(place_meeting( x + 5 * spr_dir, y - 20, asset_get("par_block")))
		{ 
			window_timer = 0;
			sound_play(asset_get("sfx_metal_hit_weak"));
			spr_dir = -spr_dir;
			destroy_hitboxes();
		}
	}
	if(window == 3){
		if(window_timer == 0){
			spawn_hit_fx(x ,y, 193);
		}
	}
	if(window == 5){
		if(window_timer == 1){
			spawn_hit_fx(x ,y, 192 );
		}
	}
	
}

if(attack == AT_USTRONG){
	if(window == 2 || window == 3){
		if(window_timer % 10 = 1){
		spawn_base_dust(x-(0*spr_dir), y, "n_wavedash", 0);
		}
	}
	if(window == 4){
		if(window_timer == 1){
		spawn_base_dust(x-(30*spr_dir), y, "jump", 0);
		}
	}
	
}

if(attack == AT_FTILT){
	if(window == 2){
		if(window_timer == 1){
		spawn_base_dust(x-(30*spr_dir), y, "wavedash", 0);
		}
	}
	
}

if(attack == AT_UTILT){
	if(window == 2){
		if(window_timer == 1){
		spawn_base_dust(x+(30*spr_dir), y, "wavedash", -spr_dir);
		}
	}
	
}

if(attack == AT_UAIR){
	if (window = 1 && window_timer == 1){
		grabbedid = noone;
	}
	if(window == 2){
		if(window_timer >= 4){
			if(has_hit){
//				window = 3;
//				window_timer = 0;
			}
		}
	}
	if( window == 2){
		if(grabbedid != noone){
			if(!instance_exists(grabbedid)){
				grabbedid = noone;
			} else if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
				grabbedid = noone;
			} else{
				grabbedid.ungrab = 0;
				//grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
				grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
				grabbedid.state = PS_HITSTUN;
					hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .3);
					hit_player_obj.y = lerp(floor(hit_player_obj.y), y-40, .3);
					hsp = 0;
					vsp = 0;

			}
		}
	}
}

if(attack == AT_JAB){
	if(was_parried){
		set_state(PS_PRATLAND);
	}
}

if(attack == AT_BAIR){
	if (window == 2 && collision_point(x - 80 * spr_dir, y - 20, asset_get("par_block"),false,true) != noone)
	{ 
		var wall_x = x - 80 *spr_dir;
		while(collision_point(wall_x, y - 20, asset_get("par_block"), false, true) != noone){
			wall_x += spr_dir;
		}
		x = wall_x + spr_dir * 65;
		if(window_timer >= 1){
		window = 4;
		window_timer = 0;
		}
		
	}
	if(window == 4){
		can_jump = true;
		can_shield = true;
		can_fast_fall = false;
		can_move = false;
		if(window_timer == get_window_value(AT_BAIR,4,AG_WINDOW_LENGTH)){
			window = 5;
			window_timer = 0;
		}
	}
}


if(attack == AT_DATTACK){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer == 1){
		spawn_base_dust(x+(30*spr_dir), y, "dash_start", 0);
		}
	}
	if (window = 2 && place_meeting( x + 65 * spr_dir, y - 20, asset_get("par_block")))
	{ 
		window_timer = 0;
		sound_play(asset_get("sfx_metal_hit_weak"));
		spr_dir = -spr_dir;
		destroy_hitboxes();
		
	}
	if(window == 3){
		if(window_timer == 1){
		spawn_base_dust(x+(20*spr_dir), y, "land", 0);
		}
	}
}

if(attack == AT_DSTRONG){
	can_fast_fall = false;
	if(window == 1){
		
	set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);
		
	}else{
	set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
		
	}
	if(window == 2){
		if(window_timer == 1){
			
		spawn_base_dust(x-(30*spr_dir), y, "dash_start", 0);
		}
		if(has_hit){
			window_timer = get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) - 1;
		}
	}
	if(window == 3){
		if(window_timer == 1){
		spawn_base_dust(x+(30*spr_dir), y, "n_wavedash", 0);
		}
		if(free){
		destroy_hitboxes();
		set_num_hitboxes(AT_DSTRONG,2);
			
		}else{
		set_num_hitboxes(AT_DSTRONG,3);
		
		}
		
	}
}

if (attack == AT_NSPECIAL){
	
    if (window == 1){
    	if(flutterTimer > 0){
    		if(window_timer == 1){
    			flutterTimer -= 20;	
    			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .2);
    		}
    	}else{
    		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
    	}
    	if(window_timer == ((get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) / 1.5))){
    		if (!special_down){
    			window = 2;
    			window_timer = 0;
    			NspecialCount = 3;
    			PinMissile = true;
        	}else{
    			NspecialCount = 0;
    			PinMissile = false;
        		
        	}
    	}
    }
    if(window == 2){
		outline_color = [0, 0, 0 ];
    	sound_stop(sound_get("Stat_Rise_Up"));
    	if(NspecialCount > 0){
    		set_num_hitboxes(AT_NSPECIAL, 5);
		   	if(window_timer == 1){
		   		sound_play(sound_get("PinMissile1"));
		   		if(free){
    			create_hitbox(AT_NSPECIAL, 3, x + 40 * spr_dir, y);
		   		}else{
    			create_hitbox(AT_NSPECIAL, 1, x + 40 * spr_dir, y);
		   		}
    		}
    		if(window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
					window = 2;
    				window_timer = 0;
    				NspecialCount --;
   			}
    	}else if(PinMissile == false){
    		set_num_hitboxes(AT_NSPECIAL, 4);
		   	if(window_timer == 1){
		   		sound_play(sound_get("Twineedle1"));
		   		if(free){
    			create_hitbox(AT_NSPECIAL, 4, x + 40 * spr_dir, y);
		   		}else{
    			create_hitbox(AT_NSPECIAL, 2, x + 40 * spr_dir, y);
		   		}
    		}
    		
    	}
    }
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 30;
	can_move = true;
    if (window == 1){
    	if(window_timer == 1){
    		flutterTimer -= 30;	
    	}
    	if(flutterTimer == 0){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
    	}else{
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    	}
    }
    if (window == 2){
		if(window_timer == 1){
		spawn_base_dust(x+(30*spr_dir), y, "dash_start", 0);
		}
        if (has_hit){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
	if (window == 2 && collision_point(x + 25 * spr_dir, y - 20, asset_get("par_block"),false,true) != noone)
	{ 
		var wall_x = x - 25 *spr_dir;
		while(collision_point(wall_x, y - 25, asset_get("par_block"), false, true) != noone){
			wall_x += spr_dir;
		}
		x = wall_x - spr_dir * 20;
		if(window_timer >= 1){
		window = 4;
		window_timer = 0;
		}
		
	}
	if(window == 4){
		can_jump = true;
		can_shield = true;
		can_fast_fall = false;
		can_move = false;
		if(window_timer == get_window_value(AT_BAIR,4,AG_WINDOW_LENGTH)){
			window = 5;
			window_timer = 0;
		}
	}
    can_fast_fall = false;
}


if(attack == AT_USPECIAL){
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_USPECIAL] = 30;
    if (window == 1){
    	if(window_timer == 1){
    		flutterTimer -= 30;	
    	}
    	if(flutterTimer == 0){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
    	}else{
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
    		
    	}
    }
	if(window == 2){
		if(window_timer == 1){
		spawn_base_dust(x+(0*spr_dir), y, "doublejump", 0);
		}
	}
	if(window == 3){
		can_move = true;
	}
}

if(attack == AT_TAUNT_2){
	if(window == 1){
		if(window_timer == 1){
			sound_stop(sound_get("CARAMELLGASSIN"));
		}
		suppress_stage_music();
	}
	if(window == 2){
		suppress_stage_music();
		if(window_timer == get_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH)){
			if(shield_pressed){
				sound_stop(sound_get("CARAMELLGASSIN"));
			}else{
				window_timer = 0;
			}
		}
	}
	
}



if (attack == AT_EXTRA_1) {
	can_wall_jump = true;
	can_attack = true;
	can_special = true;
	can_shield = true;
	can_jump = true;
	can_fast_fall = true;
	
	if 3 > vsp {
	flutterTimer--;
	}
	
	if vsp > -5 {
		if vsp > 3 {
			vsp -= .9;
		} 
		else {
			vsp -= .35;
		}
	}
	
	if window_timer == 7 && flutterTimer > 0 && (jump_down || up_down) {
	window_timer = 0;
	}
	
	if !flutterAttack {
		if attack_pressed {
			
			if right_down {
				hsp = 7;
			}
			else if left_down {
				hsp = -7;
			}
		}

		if left_strong_pressed || up_strong_pressed || right_strong_pressed {
			
			if left_strong_pressed {
				hsp = -7;
			}		
			if right_strong_pressed {
				hsp = 7;
			}	
			if up_strong_pressed {
				vsp = -10;
			}				
		}
	}
}


if(attack == AT_EXTRA_2){
	if(window == 1 && window_timer == 1){
		var intro = random_func( 0, 3, true )
  	// 	var intro = 1
    	if(intro = 2){
    		set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("intro1"));
			set_attack_value(AT_EXTRA_2, AG_CATEGORY, 0);
			set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, -1);
			set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);

			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 48);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_charge2"));

			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 28);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, sound_get("Double_Edge1"));

			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 44);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
    	}else{
    		
			set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("intro"));
			set_attack_value(AT_EXTRA_2, AG_CATEGORY, 0);
			set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, -1);
			set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);

			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 40);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 5);

			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 10);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 25);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, sound_get("se_ptrainer_ball_open"));

			set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 5);
			set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);
			set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 4, AG_WINDOW_SFX, sound_get("cry"));

			set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 40);
			set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
			set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);
			set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_2, 5, AG_WINDOW_SFX, sound_get("se_inkling_dash_start"));

    		
    	}
	}
}

if(attack == 49){
	can_move = false;
	can_jump = false;
	can_attack = false;
	can_shield = false;
	can_fast_fall = false;
	if(window == 1){
		if(window_timer == 1){
			has_final_smash_hit = false;
		}
		if(window_timer == 1){
        timestop_ready = true;
		spawn_base_dust(x-(0*spr_dir), y, "land", 0);
		}
		if(window_timer == 3){
		timestop = true;
		spawn_base_dust(x-(0*spr_dir), y, "land", 0);
		}
	}
	if(window == 4){
		if(window_timer == 1){
		timestop = false;
		spawn_base_dust(x-(0*spr_dir), y, "n_wavedash", 0);
		}
		if(hit_player = true){
			has_final_smash_hit = true;
		}else if(has_final_smash_hit = false && window_timer == get_window_value(49, 4, AG_WINDOW_LENGTH)){
		window = 8;
		window_timer = 0;
			
		}
	}
	if(window == 5){
		if(window_timer = 7 || window_timer = 28 || window_timer = 49){
			spawn_hit_fx(hit_player_obj.x + 70 * hit_player_obj.spr_dir, hit_player_obj.y + 60, 66);
			create_hitbox(49, 3, hit_player_obj.x + 180 * hit_player_obj.spr_dir, hit_player_obj.y + 60)
		}
		if(window_timer = 14 || window_timer = 35 || window_timer = 56){
			spawn_hit_fx(hit_player_obj.x + 70 * hit_player_obj.spr_dir, hit_player_obj.y - 140, 66);
			create_hitbox(49, 2, hit_player_obj.x + 140 * hit_player_obj.spr_dir, hit_player_obj.y - 140)
		}
		if(window_timer = 21 || window_timer = 42 || window_timer = 63){
			spawn_hit_fx(hit_player_obj.x + 110 * hit_player_obj.spr_dir, hit_player_obj.y - 20, 66);
			create_hitbox(49, 4, hit_player_obj.x + 180 * hit_player_obj.spr_dir, hit_player_obj.y - 0)
		}
		if(window_timer = 28 || window_timer = 49 ){
			sound_play(sound_get("Taunt"));
		}
	}
	if(window == 7){
		if(window_timer == 1){
		timestop = false;
		spawn_base_dust(x-(0*spr_dir), y, "n_wavedash", 0);
		}
	}
}


















//SupersonicNK's Base Game Dust function

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
var dir = argument_count > 3 ? argument[3] : 0;

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
