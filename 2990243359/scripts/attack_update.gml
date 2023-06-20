//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//Jab
if (attack == AT_JAB){
	if window == 1 && window_timer == 2{
			sound_play(asset_get("sfx_ori_spirit_flame_2"),false,noone,.9);
		}
	if window == 4 && window_timer == 3{
			sound_play(asset_get("sfx_absa_new_whip1"),false,noone,.9);
		}
}

//Dtilt
if (attack == AT_DTILT){
	if window == 1 && window_timer == 3{
			sound_play(asset_get("sfx_ori_spirit_flame_1"),false,noone,.8,0.8);
		}
}

//Nair - Dark Pulse
if (attack == AT_NAIR){
	if window == 1 && window_timer == 4{
			sound_play(asset_get("sfx_ori_ustrong_launch"),false,noone,.7);
		}
	if (window == 2 && window_timer == 3 && !hitpause){
		spawn_hit_fx( x, y, vfx_nair1 );
	}
	if (window == 4 && window_timer == 2 && !hitpause){
		spawn_hit_fx( x, y, vfx_nair2 );
	}
}

//DAir
if (attack == AT_DAIR && im_gliding == false){
	can_glide = false;
}
if (attack == AT_DAIR && window == 2 && window_timer == 2 && !hitpause){
	spawn_hit_fx( x, y, vfx_dair );
}

//DStrong
if (attack == AT_DSTRONG && !instance_exists(trident) && move_cooldown[AT_NSPECIAL] == 0){
	if (image_index >= 8 && image_index < 10 && special_down){
		if (get_attack_value(AT_DSTRONG, AG_SPRITE) == sprite_get("dstrong2")){
			trident = instance_create( x+15*spr_dir, y-45, "obj_article1");
			trident.state = 3;
			trident.sprite_index = sprite_get("trident_idle");
			trident.image_index = 4;
		}
	}
}
if (attack == AT_DSTRONG && window == 2){
	if (window_timer == 1){
		sound_play(asset_get("sfx_pom_dstrong"),false,noone,1.0, 0.9);
	}
	if (window_timer == 5){
		sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,.6, 0.9);
		sound_play(asset_get("sfx_ori_ustrong_launch"),false,noone,.7, 1.2);
	}
}
//NSpecial - Trident Throw
if (attack == AT_NSPECIAL){
	can_glide = false;
    can_fast_fall = false;
    hsp = 0;
    if (window == 1 && window_timer == 18){
    	sound_play(sound_get("swing_medium"));
    }
    if (window == 1 && window_timer > 12) && (place_meeting(x+40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x+40*spr_dir,y+10,asset_get("par_jumpthrough"))){
    	x += 6*spr_dir;
    }
    if (window == 4 && window_timer < 10) && (place_meeting(x-40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x-40*spr_dir,y+10,asset_get("par_jumpthrough"))){
    	x -= 3*spr_dir;
    }
    if (window == 5 && window_timer > 4) && (place_meeting(x-40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x-40*spr_dir,y+10,asset_get("par_jumpthrough"))){
    	x -= 3*spr_dir;
    }
    //Creates the Trident
    if (window == 1 && window_timer == 24 && !instance_exists(trident)){
    	trident = instance_create( x+65*spr_dir, y-25, "obj_article1");
    	trident.sprite_index = sprite_get("trident_spin");
    	trident.mask_index = sprite_get("trident_spin_mask");
    }
    //Triggers Trident Drop
    if ((window == 2 || window == 3) && (special_pressed || shield_pressed) && trident.starts_moving == true && trident.state != 2){
        window = 5;
        window_timer = 0;
        sound_play(asset_get("sfx_ell_utilt_fire"));
        trident.starts_moving = false;
        trident.state = 1;
        trident.image_index = 0;
    }  
    if (window == 4 && free){
    	move_cooldown[AT_NSPECIAL] = 30;
    }
}

//NSpecial 2 - Trident Recall 
if (attack == AT_NSPECIAL_2){
	can_glide = false;
	move_cooldown[AT_NSPECIAL_2] = 15;
    if (window == 1 && window_timer > 8) && (place_meeting(x+40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x+40*spr_dir,y+10,asset_get("par_jumpthrough"))){
    	x += 8*spr_dir;
    }
    if (window == 3 && window_timer < 10) && (place_meeting(x-40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x-40*spr_dir,y+10,asset_get("par_jumpthrough"))){
    	x -= 3*spr_dir;
    }
    if (window == 4 && window_timer > 4) && (place_meeting(x-40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x-40*spr_dir,y+10,asset_get("par_jumpthrough"))){
    	x -= 3*spr_dir;
    }
    //Brings the Trident to you
    if (window == 1 && window_timer == 4 && instance_exists(trident)){
        trident.state = 4;
        sound_play(asset_get("sfx_kragg_rock_pull"));
    }
    if (window == 2 && !instance_exists(trident)){
    	window = 3;
    	window_timer = 12;
    }
    //Triggers Trident Drop
    if ((window == 2 || window == 3) && (special_pressed || shield_pressed) && trident.starts_moving == true){
        window = 4;
        window_timer = 0;
        sound_play(asset_get("sfx_ell_utilt_fire"));
        trident.starts_moving = false;
        trident.state = 1;
        trident.image_index = 0;
    }  
}

//FSpecial - Flame/Trident Choke
if (attack == AT_FSPECIAL){
	if (free){
		attack = AT_FSPECIAL_AIR;	
	}
	if (window == 1){
		flame_choke = false;
		trident_choke = false;
	}
	if (window == 2 && instance_exists(trident) && special_down && trident.state == 3 &&
	((x < trident.x+20 && x > trident.x-20) && (y < trident.y+60 && y > trident.y-20))){
		spawn_hit_fx( x+30*spr_dir, y-50, vfx_collect);
		sound_play(sound_get("tp_item_equip"));
		hsp = 9*spr_dir;
		window = 9;
		instance_destroy(trident);
	}
    can_fast_fall = false;
    can_glide = false;
    if (window == 1 && window_timer == 14){
    	sound_play(sound_get("fspecial"));
    }
    if (flame_choke == true && window == 3){
        hit_player_obj.hitstop = 1;
        if (image_index == 14){
            hit_player_obj.x = lerp(hit_player_obj.x, x+50*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-5, 0.6);
        }
        if (image_index == 15){
            hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y, 0.6);
        }
        if (image_index == 16){
            hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-50, 0.6);
        }
        if (image_index >= 17){
            hit_player_obj.x = lerp(hit_player_obj.x, x+45*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-55, 0.6);
        }
        if (image_index < 16 && special_down && trident.state == 7 
        && hit_player_obj == trident_opponent){
        	window = 4;
        	window_timer = 0;
        	trident_opponent.trident_stuck = false;
    		instance_destroy(trident);
        }
    }
    if (flame_choke == true && window == 4){
    	hit_player_obj.hitstop = 1;
    	hit_player_obj.x = lerp(hit_player_obj.x, x+55*spr_dir, 0.6);
	    hit_player_obj.y = lerp(hit_player_obj.y, y-10, 0.6);
    }
}
if (attack == AT_FSPECIAL_2){
	if (free){
		attack = AT_FSPECIAL_2_AIR;	
	}
	if (window == 1){
		flame_choke = false;
		trident_choke = false;
	}
    can_fast_fall = false;
    if (window == 1 && window_timer == 19){
    	sound_play(sound_get("fspecial"));
    }
    if (trident_choke == true){
        hit_player_obj.hitstop = 1;
        if (image_index == 14){
            hit_player_obj.x = lerp(hit_player_obj.x, x+80*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-10, 0.6);
        }
        if (image_index == 15){
            hit_player_obj.x = lerp(hit_player_obj.x, x+70*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-40, 0.6);
        }
        if (image_index == 16){
            hit_player_obj.x = lerp(hit_player_obj.x, x+50*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-80, 0.6);
        }
        if (image_index >= 17){
            hit_player_obj.x = lerp(hit_player_obj.x, x+55*spr_dir, 0.6);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-85, 0.6);
        }
    }
}
if (attack == AT_FSPECIAL_AIR){
	can_wall_jump = true;
    can_fast_fall = false;
    if (window == 1){
		flame_choke = false;
		trident_choke = false;
	}
    if (window == 8) can_move = false;
    can_glide = false;
    if (window == 1 && window_timer == 14){
    	sound_play(sound_get("fspecial"));
    }
    if (window == 2 && instance_exists(trident) && special_down && trident.state == 3 && 
	((x < trident.x+20 && x > trident.x-20) && (y < trident.y+40 && y > trident.y-40))){
		spawn_hit_fx( x+30*spr_dir, y-50, vfx_collect);
		sound_play(sound_get("tp_item_equip"));
		hsp = 8*spr_dir;
		window = 10;
		instance_destroy(trident);
	}
	if (window == 3 && window_timer == 1 && !hitpause){
		spawn_hit_fx( x, y, vfx_fspecialair );
	}
    if (air_flame_choke == true || flame_choke == true){
    	can_glide = false;
    	can_wall_jump = false;
        hit_player_obj.hitstop = 1;
        if (image_index == 14){
            hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
        }
        if (image_index == 15){
            hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-50, 0.8);
        }
        if (image_index == 16){
            hit_player_obj.x = lerp(hit_player_obj.x, x+35*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-55, 0.8);
        }
        if (image_index == 17){
            hit_player_obj.x = lerp(hit_player_obj.x, x+55*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y+30, 0.8);
        }
        if (image_index >= 18){
            hit_player_obj.x = lerp(hit_player_obj.x, x+25*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y+70, 0.8);
        }
        if (image_index < 18 && special_down && trident.state == 7 
        && hit_player_obj == trident_opponent){
        	window = 6;
        	window_timer = 0;
        	trident_opponent.trident_stuck = false;
    		instance_destroy(trident);
        }
        if (window == 6){
	    	hit_player_obj.hitstop = 1;
	    	hit_player_obj.x = lerp(hit_player_obj.x, x+65*spr_dir, 0.6);
		    hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.6);
	    }
    }
}
if (attack == AT_FSPECIAL_2_AIR){
	can_wall_jump = true;
    can_fast_fall = false;
    if (window == 1){
		flame_choke = false;
		trident_choke = false;
	}
    if (window == 6) can_move = false;
    can_glide = false;
    if (window == 1 && window_timer == 19){
    	sound_play(sound_get("fspecial"));
    }
    if (window == 3 && window_timer == 1 && !hitpause){
		spawn_hit_fx( x, y, vfx_fspecialair );
	}
    if (air_trident_choke == true || trident_choke == true){
    	can_glide = false;
    	can_wall_jump = false;
        hit_player_obj.hitstop = 1;
        if (image_index == 14){
            hit_player_obj.x = lerp(hit_player_obj.x, x+90*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
        }
        if (image_index == 15){
            hit_player_obj.x = lerp(hit_player_obj.x, x+70*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-50, 0.8);
        }
        if (image_index == 16){
            hit_player_obj.x = lerp(hit_player_obj.x, x+65*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y-55, 0.8);
        }
        if (image_index == 17){
            hit_player_obj.x = lerp(hit_player_obj.x, x+65*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y+30, 0.8);
        }
        if (image_index >= 18){
            hit_player_obj.x = lerp(hit_player_obj.x, x+30*spr_dir, 0.8);
	        hit_player_obj.y = lerp(hit_player_obj.y, y+70, 0.8);
        }
    }
}

//USpecial - Dark Warp
if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_glide = false;
    if (window > 1 && window < 5){
    	if (shield_pressed){
    		window = 6;
    		window_timer = 1;
    	}
    }
    if (instance_exists(trident) && window == 1 && window_timer == 24 && special_down){
        window = 5;
        window_timer = 0;
        if (x > trident.x){
            spr_dir = -1;
        }
        if (x <= trident.x){
            spr_dir = 1;
        }
    }
    if (window == 5){
    	if (shield_pressed || state_timer > 150){
    		mask_index = asset_get("ex_guy_collision_mask");
    		window = 6;
    		window_timer = 1;
    	}
        if (window_timer%5 = 0){
            spawn_hit_fx( x, y, uspecial_effect);
        }
        if (trident.state == 7){
            uspecial_dir = point_direction(trident.x, trident.y-30, x, y);
        }
        else {
            uspecial_dir = point_direction(trident.x, trident.y, x, y);
        }
		uspecial_hsp = lengthdir_x(10, uspecial_dir);
		uspecial_vsp = lengthdir_y(8, uspecial_dir);
		hsp = -uspecial_hsp;
		vsp = -uspecial_vsp*3;
		fall_through = true;
		trident.mask_index = sprite_get("trident_idle");
		if ((x < trident.x+20 && x > trident.x-20) && (y < trident.y+40 && y > trident.y-40)){
		    if (trident.state == 7){
                trident_opponent.trident_stuck = false;
            }
		    spawn_hit_fx( x+30*spr_dir, y-20, vfx_collect);
		    sound_play(sound_get("tp_item_equip"));
		    can_glide = true;
			window = 9;
			instance_destroy(trident);
		}
    }
}

//DSpecial - Skyward Strike
if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 30;
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_absa_boltcloud"));
		trident_opponent_hit = false;
	}
	if (window < 5){can_glide = false;}
	else {can_glide = true;}
    if (window == 1 && window_timer == 6){
        thunder = instance_create( trident.x, trident.y-250, "obj_article2");
    }
    if (window == 1 && window_timer == 20 && free){
    	vsp = -4;
    }
}

if (attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL_2] = 30;
	if window == 1 && window_timer == 1{
			sound_play(asset_get("sfx_absa_boltcloud"));
			trident_opponent_hit = false;
		}
	if (window < 5)can_glide = false;
	else can_glide = true;
    if (window == 1 && window_timer == 6){
        thunder = instance_create( x+15*spr_dir, y-400, "obj_article2");
    }
    if (window == 3 && special_down && window_timer >= 18 && instance_exists(thunder)){
    	window_timer--;
    }
    if (window == 1 && window_timer == 20 && free){
    	vsp = -4;
    }
}

if (attack == AT_TAUNT){
	if (window > 1){
		can_shield = true;
		if (shield_pressed){
			sound_stop(sound_get("ww_laugh1"));
			sound_stop(sound_get("ww_laugh2"));
			sound_stop(sound_get("ww_laugh3"));
		}
	}
}