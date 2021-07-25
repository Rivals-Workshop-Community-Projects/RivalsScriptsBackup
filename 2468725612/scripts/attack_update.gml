//B - Reversals
if (!custom_clone){

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR 
|| attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG 
&& attack != AT_BAIR && attack != AT_DSPECIAL && attack != AT_DSPECIAL_AIR){
    shotgun_shot = false;
}

if (attack != AT_NSPECIAL && attack != AT_NSPECIAL_2 && attack != AT_USPECIAL 
&& attack != AT_TAUNT && attack != AT_PHONE && shotgun_shot == false){
    attack_meu = attack;
    if (attack == AT_FSTRONG && window == 4){
        attack_meu = AT_FSTRONG_2;
        shotgun_shot = true;
    }
    if (attack == AT_USTRONG && window != 4){
        attack_meu = AT_UTHROW;
    }
    if (attack == AT_USTRONG && window == 4){
        attack_meu = AT_USTRONG_2;
        shotgun_shot = true;
    }
    if (attack == AT_DSTRONG && window == 4){
        attack_meu = AT_DSTRONG_2;
        shotgun_shot = true;
    }
    if (attack == AT_BAIR && window == 4){
        attack_meu = AT_FTHROW;
        shotgun_shot = true;
    }
    if (attack == AT_DSPECIAL && window != 4){
        attack_meu = AT_NTHROW;
    }
    if (attack == AT_DSPECIAL && window == 4){
        attack_meu = AT_DSPECIAL_2;
        shotgun_shot = true;
    }
    if (attack == AT_DSPECIAL_AIR && window != 3){
        attack_meu = AT_TAUNT_2;
    }
    if (attack == AT_DSPECIAL_AIR && window == 3){
        attack_meu = AT_DTHROW;
        shotgun_shot = true;
    }
    
}

if (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL 
|| attack == AT_DSPECIAL_AIR || attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || (attack == AT_BAIR && window > 3)){
        can_wall_jump = true;
    }

if (attack == AT_JAB && was_parried){
    was_parried = false;
}

if (window == 1){
	can_command = false;
}


//NSpecial - Hologram Spawn
if (attack == AT_NSPECIAL){
	uspecial_teleport = false;
	if (hat_on == true){
    	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);
    }
    
    if (window == 1 && hologram_is_alive == false && window_timer == 19){
       if (special_down && ((right_down == true) || (left_down == true))){
           if ((spr_dir == 1 && left_down == true) || (spr_dir == -1 && right_down == true)){
               spr_dir *= -1;
           }
            window = 3;
            window_timer = 1;
        }
        if (special_down && up_down){
            window = 4;
            window_timer = 1;
        } 
    }
    
    if (window == 2 && window_timer == 7){
        hat_on = false;
        move_cooldown[AT_NSPECIAL] = 120;
        hat = instance_create( x+50*(spr_dir), y-34, "obj_article1");
    }
    
    if (window == 3 && window_timer == 10){
    	hat_on = false;
        hat = instance_create( x+50*(spr_dir), y-34, "obj_article1");
        hat.state = 1;
        hat.hsp = 7*spr_dir;
    }
    
    if (window == 4 && window_timer == 10){
    	hat_on = false;
        hat = instance_create( x+40*(spr_dir), y-34, "obj_article1");
        hat.state = 2;
        hat.vsp = -11;
    }
    
    if (hat_on == false && hologram_is_alive == false){
    	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 18);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_player_found"));
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 7);
		
		if (window == 1 && window_timer == 10 && hat_out == false){
			spawn_hit_fx( x+(40*spr_dir), y-65, 306);
			hat = instance_create(x, (room_height/4)-100, "obj_article1");
			spawn_hit_fx( hat.x, hat.y, 306);
		    hat.state = 4;
		}
    }
    
    
}



//NSpecial2 - Hologram Command
if (attack == AT_NSPECIAL_2 && hologram_is_alive == true){
	uspecial_teleport = false;
    if (window < 3){
        if (right_down && (hologram.window == 1 || hologram.state == PS_IDLE || hologram.state == PS_IDLE_AIR)){
        hologram.spr_dir = 1;
    }
        if (left_down && (hologram.window == 1 || hologram.state == PS_IDLE || hologram.state == PS_IDLE_AIR)){
        hologram.spr_dir = -1;
    }
        if (down_down && !hologram.freemd && 
        (hologram.window == 1 || hologram.state == PS_IDLE || hologram.state == PS_IDLE_AIR)){
            hologram.y += 4;
        }
    }
    if (window == 1 && window_timer == 7 && 
    ((special_down && hold_on == true) || (shield_down && hold_on == false))){
        window = 4;
        window_timer = 1;
    }
    if (window == 2 && window_timer == 9){
        if (attack_hologram != PS_PARRY){
            hologram_act = true;
        }
        else {
            hologram_parry = true;
            hologram_parry_cont = 29;
        }
        
        spawn_hit_fx( x+(10*spr_dir), y-52, 256);
    }
    if (window == 5 && window_timer == 10){
        attack_hologram = attack_meu;
        attack_holo_nome = attack_nome;
        attack_holo_icon = attack_icon;
        attack_holo_size = attack_size;
    }
}

if (move_cooldown[AT_NSPECIAL_2] != 0){
	hologram_act = false;
}

if (can_command && joy_pad_idle && special_pressed){
    can_special = true;
    can_command = false;
}

//Hologram Act
if (hologram_act == true && move_cooldown[AT_NSPECIAL_2] == 0){
    hologram.state = PS_ATTACK_AIR;
    if (attack_hologram != AT_UTHROW){
    	hologram.dspecial_cont = 0;
    	hologram.image_index = 0;
    	hologram.dspecial_air_cont = 0;
    	hologram.hurtboxID.sprite_index = get_attack_value( attack_hologram, AG_HURTBOX_SPRITE);
        hologram.attack = attack_hologram; 
    }
    else {
        hologram.attack = AT_USTRONG; 
    }

    
    hologram_act = false;
}



//Shotgun Moves (+ some other window 1 stuff)
{
if (attack == AT_FSTRONG){
    if (window == 1){
        shotgun_shot = false;
        shotgun_empty = false;
    }
    if (window == 3 && window_timer > 2){
        shotgun_cont = 0;
        if (up_strong_pressed || down_strong_pressed || 
        right_strong_pressed || left_strong_pressed || attack_pressed){
        	if (shotgun_ammo == 1 && shotgun_empty == false){
        		sound_play(sound_get("shotgun_empty"));	
        		shotgun_empty = true;
        	}
        	if (shotgun_ammo == 0){
        		window = 4;
            	window_timer = 1;	
        	}
        }
    }

}

if (attack == AT_USTRONG){
    if (window == 1){
        shotgun_shot = false;
        shotgun_empty = false;
    }
    if (window == 3 && window_timer > 2){
        shotgun_cont = 0;
        if (up_strong_pressed || down_strong_pressed || 
        right_strong_pressed || left_strong_pressed || attack_pressed){
        	if (shotgun_ammo == 1 && shotgun_empty == false){
        		sound_play(sound_get("shotgun_empty"));	
        		shotgun_empty = true;
        	}
        	if (shotgun_ammo == 0){
        		window = 4;
            	window_timer = 1;	
        	}
        }
    }

}

if (attack == AT_DSTRONG){
    if (window == 1){
        shotgun_shot = false;
        shotgun_empty = false;
    }
    if (window == 3 && window_timer > 2){
        shotgun_cont = 0;
        if (up_strong_pressed || down_strong_pressed || 
        right_strong_pressed || left_strong_pressed || attack_pressed){
        	if (shotgun_ammo == 1 && shotgun_empty == false){
        		sound_play(sound_get("shotgun_empty"));	
        		shotgun_empty = true;
        	}
        	if (shotgun_ammo == 0){
        		window = 4;
            	window_timer = 1;	
        	}
        }
    }

}

if (attack == AT_BAIR){
    if (window == 1){
        shotgun_shot = false;
        shotgun_empty = false;
    }
    if (window == 3){
        shotgun_cont = 0;
        if (up_strong_pressed || down_strong_pressed || 
        right_strong_pressed || left_strong_pressed || attack_pressed){
        	if (shotgun_ammo == 1 && shotgun_empty == false){
        		sound_play(sound_get("shotgun_empty"));	
        		shotgun_empty = true;
        	}
        	if (shotgun_ammo == 0){
        		window = 4;
            	window_timer = 1;	
            	set_attack_value(AT_BAIR, AG_CATEGORY, 2);
        	}
        }
    }
    if (window == 4 && window_timer == 2){
        sound_play(sound_get("shotgun_shoot"));
    }
    if (window == 5){
        set_attack_value(AT_BAIR, AG_CATEGORY, 1);
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1){
    	dspecial_hit = false;
    	dspecial_rune = false;
    	dspecial_cont = 0;
    	set_num_hitboxes(AT_DSPECIAL, 5);
        shotgun_shot = false;
        shotgun_empty = false;
        
        set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 4);
        set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
        set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 0);
    }
    if ((window == 3 && dspecial_cont > 5) || (window == 5 && window_timer < 6)){
        shotgun_cont = 0;
        if (up_strong_pressed || down_strong_pressed || 
        right_strong_pressed || left_strong_pressed || attack_pressed || special_pressed){
        	if (shotgun_ammo == 1 && shotgun_empty == false){
        		sound_play(sound_get("shotgun_empty"));	
        		shotgun_empty = true;
        	}
        	if (shotgun_ammo == 0 && dspecial_rune == false){
        			window = 4;
            		window_timer = 1;
            		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -2);
            		dspecial_rune = true;
        	}
        }
    }
}

if (attack == AT_DSPECIAL_AIR){
    if (window == 1){
    	dspecial_air_hit = false;
    	dspecial_rune = false;
    	dspecial_air_cont = 0;
    	set_num_hitboxes(AT_DSPECIAL_AIR, 11);
        shotgun_shot = false;
        shotgun_empty = false;
        
        set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
        set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 1);
        set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 0);
        set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 0);
        set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_GROUNDEDNESS, 0);
    }
    if ((window == 2 && dspecial_air_cont > 1) || (window == 4 && window_timer < 6)){
        shotgun_cont = 0;
        if (up_strong_pressed || down_strong_pressed || 
        right_strong_pressed || left_strong_pressed || attack_pressed || special_pressed){
        	if (shotgun_ammo == 1 && shotgun_empty == false){
        		sound_play(sound_get("shotgun_empty"));	
        		shotgun_empty = true;
        	}
        	if (shotgun_ammo == 0 && dspecial_rune == false){
        			window = 3;
            		window_timer = 1;
            		dspecial_air_cont = 0;
            		dspecial_rune = true;
        	}
        }
    }
}


if ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG 
|| attack == AT_BAIR || attack == AT_DSPECIAL) 
    && window == 4 && window_timer == 1){
    shotgun_ammo = 1;
}

if ((attack == AT_UTILT || attack == AT_NAIR) && window == 2 && window_timer == 4){
    shotgun_ammo = 0;
}

}

//FSpecial ground to air
if (attack == AT_FSPECIAL && free){
    attack = AT_FSPECIAL_AIR;
    hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
} 

if (grab_ground == true && free){
	grab_air = true;
	grab_ground = false;
}

if (grab_ground_clone == true && free){
	grab_air_clone = true;
	grab_ground_clone = false;
}

//DSpecial Hitting the Hologram
if (attack == AT_DSPECIAL && dspecial_hit == true && window == 3){
	set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 1);
}

if (attack == AT_DSPECIAL_AIR && dspecial_air_hit == true && window == 2){
	
	set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 1);
    set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 1);
    set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_GROUNDEDNESS, 1);
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_FSPECIAL 
|| attack == AT_FSPECIAL_AIR){
	can_fast_fall = false;
}

if (attack == AT_TAUNT && down_down && window == 1 && window_timer == 3){
	hologram_icon *= -1;
}

}

//Shotgun Again
if (attack == AT_FSTRONG_2 || attack == AT_USTRONG_2 || attack == AT_DSTRONG_2 
|| attack == AT_FTHROW || attack == AT_DSPECIAL_2){
    if (window == 3 && window_timer > 1){
        shotgun_cont = 0;
    }
}

if (attack == AT_DTHROW && window == 2 && window_timer > 1){
        shotgun_cont = 0;
}



if (attack == AT_FSPECIAL){
	if (image_index >= 2 && image_index < 6){
		set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 5);
		fspecial_cont += .5;
	}
	if (window == 1){
		if (window_timer == 1){
			set_hitbox_value(AT_FSPECIAL, 14, HG_LIFETIME, 10);
			fspecial_cont = 0;
		}
		grab_ground = false;
		grab_ground_clone = false;
		grab_air = false;
		grab_air_clone = false;
		set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 2);
        set_hitbox_value(AT_FSPECIAL, 15, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL, 16, HG_LIFETIME, 0);
	}
    if (grab_ground == true){
        hit_player_obj.hitstop = 1;
        if (window == 4 && window_timer < 3){
            hit_player_obj.x = x+80*spr_dir;
			hit_player_obj.y = y;
        }
        if (window == 4 && window_timer >= 3){
            hit_player_obj.x = x+50*spr_dir;
			hit_player_obj.y = y-10;
        }
        if (window == 4 && window_timer == 9){
            hit_player_obj.x = x+50*spr_dir;
			hit_player_obj.y = y-50;
        }
        if (window == 5){
        	if (get_player_damage(hit_player_obj.player) >= 100 && has_rune("J")){
						create_deathbox( hit_player_obj.x, hit_player_obj.y+10, 20, 20, hit_player_obj.player, true, 0, 20, 2);
				}
            hit_player_obj.x = x+50*spr_dir;
            if (hit_player_obj.char_height < 50){
            	hit_player_obj.y = y-80;
            }
            else {
            	hit_player_obj.y = y-50;
            }
			
			if (window_timer == 15){
			    grab_ground = false;
			}
        }
     
    }
    if (grab_ground_clone == true){
    	if (window < 5){
    		hologram.hurtboxID.sprite_index = asset_get("empty_sprite");	
    	}
    	
    	set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL, 15, HG_LIFETIME, 2);
        set_hitbox_value(AT_FSPECIAL, 16, HG_LIFETIME, 4);
        if (window == 4 && window_timer < 3){
            hologram.x = x+80*spr_dir;
			hologram.y = y;
        }
        if (window == 4 && window_timer >= 3){
            hologram.x = x+50*spr_dir;
			hologram.y = y-10;
        }
        if (window == 4 && window_timer == 9){
            hologram.x = x+50*spr_dir;
			hologram.y = y-50;
        }
        if (window == 5){
            hologram.x = x+50*spr_dir;
			hologram.y = y-50;
			if (window_timer == 14){
				hologram.hurtboxID.sprite_index = sprite_get("hurtbox_idle");
			}
        }
    }
}

if (attack == AT_FSPECIAL_AIR){
	if (image_index >= 2 && image_index < 6){
		set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 12);
		fspecial_cont += .5;
	}
	if (window == 1){
		if (window_timer == 1){
			set_hitbox_value(AT_FSPECIAL_AIR, 14, HG_LIFETIME, 10);
			prat_land_time = 12;
			fspecial_cont = 0;
		}
		grab_ground = false;
		grab_ground_clone = false;
		grab_air = false;
		grab_air_clone = false;
		set_hitbox_value(AT_FSPECIAL_AIR, 13, HG_LIFETIME, 2);
        set_hitbox_value(AT_FSPECIAL_AIR, 15, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL_AIR, 16, HG_LIFETIME, 0);
	}
    if (grab_air == true){
        hit_player_obj.hitstop = 1;
        if (window == 5 && window_timer < 3){
            hit_player_obj.x = x+80*spr_dir;
			hit_player_obj.y = y;
        }
        if (window == 5 && window_timer >= 3){
            hit_player_obj.x = x+40*spr_dir;
			hit_player_obj.y = y-30;
        }
        if (window == 5 && window_timer >= 8){
            hit_player_obj.x = x+30*spr_dir;
			hit_player_obj.y = y-35;
        }
        if (window == 5 && window_timer >= 12){
            hit_player_obj.x = x+40*spr_dir;
			hit_player_obj.y = y-30;
        }
        if (window == 5 && window_timer == 16){
            hit_player_obj.x = x+40*spr_dir;
			hit_player_obj.y = y+50;
        }
        if (window == 6){
            hit_player_obj.x = x+40*spr_dir;
			if (hit_player_obj.char_height < 50){
            	hit_player_obj.y = y+30;
            }
            else {
            	hit_player_obj.y = y+50;
            }
        }
        if (window == 5 || window == 6){
        	can_move = true;
        	
        	if (((y + vsp) >= (room_height + 70)) && (get_player_stocks(hit_player) == 1) && has_rune("E")){
        		hit_player_obj.hitstop = 0;
        	}
			
			if (hit_player_obj.left_down){
				hsp = hsp-0.25;
			}
			if (hit_player_obj.right_down){
				hsp = hsp+0.25;
			}
        }
        if (window == 7){
        	if (get_player_damage(hit_player_obj.player) >= 100 && has_rune("J")){
						create_deathbox( hit_player_obj.x, hit_player_obj.y-20, 20, 20, hit_player_obj.player, true, 0, 20, 2);
				}
        }
        if (grab_air_clone == true){
        	set_hitbox_value(AT_FSPECIAL_AIR, 13, HG_LIFETIME, 0);
        	set_hitbox_value(AT_FSPECIAL_AIR, 15, HG_LIFETIME, 2);
        	set_hitbox_value(AT_FSPECIAL_AIR, 16, HG_LIFETIME, 9);
        	if (window == 7 && window_timer == 1){
        		hologram_is_alive = false;
    			hat = instance_create( x, y, "obj_article1");
    			hat.state = 4;
    			grabbing_clone = false;
        	}
        }
    }
    if (grab_air_clone == true){
    	hologram.hurtboxID.sprite_index = asset_get("empty_sprite");
    	set_hitbox_value(AT_FSPECIAL_AIR, 13, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL_AIR, 15, HG_LIFETIME, 4);
        set_hitbox_value(AT_FSPECIAL_AIR, 16, HG_LIFETIME, 4);
        if (window == 5 && window_timer < 3){
            hologram.x = x+80*spr_dir;
			hologram.y = y;
        }
        if (window == 5 && window_timer >= 3){
            hologram.x = x+40*spr_dir;
			hologram.y = y-30;
        }
        if (window == 5 && window_timer >= 8){
            hologram.x = x+30*spr_dir;
			hologram.y = y-35;
        }
        if (window == 5 && window_timer >= 12){
            hologram.x = x+40*spr_dir;
			hologram.y = y-30;
        }
        if (window == 5 && window_timer == 16){
            hologram.x = x+40*spr_dir;
			hologram.y = y+50;
        }
        if (window == 6){
            hologram.x = x+40*spr_dir;
			hologram.y = y+50;
        }
        if (window == 5 || window == 6){
        	can_move = true;
        }
        
        if (window == 7){
				hologram.hurtboxID.sprite_index = sprite_get("hurtbox_idle");
			}
    }
}

if (attack == AT_USPECIAL){
	if (window == 1 && !free){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
	}
	if (window == 1 && free){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -5);
	}
	if (window == 2){
		uspecial_teleport = false;
		prat_land_time = 24;
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
		if (vsp > -9 && window_timer < 3 && free){
			vsp = -9;
		}
	} 
	if (window == 3){
		uspecial_teleport = true;
    	if (hologram_is_alive == true && 
    	((special_down && hold_on == true) || (shield_down && hold_on == false))){
    		window = 4;
    		window_timer = 1;
    	}
    	else {
    		set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 7);
    	}
    }
    if (window == 4 && window_timer < 6 && hologram_is_alive == false && !has_rune("O")){
    	window = 7;
    	window_timer = 1;
    	uspecial_teleport = false;
    }
    if (window == 4 && window_timer == 6 && !hitpause && !has_rune("O")){
    	uspecial_teleport = false;
    	invincible = true;
    	invince_time = 4;
    	x = hologram.x;
    	y = hologram.y;
    	hologram_is_alive = false;
    	if (was_parried = false){
    		hat = instance_create( x, y, "obj_article1");
    		hat.state = 4;
    	}
    }
    
    if (window == 7){
    	uspecial_teleport = false;
    }
    
    if (has_rune("O")){
    	super_armor = true;
    	if (window == 3){
    		window = 4;
    		window_timer = 1;
    	}
    	if (window == 4 && window_timer == 6 && !hitpause && 
    	((special_down && hold_on == true) || (shield_down && hold_on == false))){
	    	x = hologram.x;
	    	y = hologram.y;
	    	hologram_is_alive = false;
	    	if (was_parried = false){
	    		hat = instance_create( x, y, "obj_article1");
	    		hat.state = 4;
	    	}
    	}
    }
    
}

if (attack == AT_DSPECIAL || attack == AT_NTHROW){
	if (window == 3 && !hitpause){
		dspecial_cont++
	}
	if (dspecial_cont >= 20){
		window = 5;
		window_timer = 1;
		dspecial_cont = 0;
	}
}

if (attack == AT_DSPECIAL_AIR  || attack == AT_TAUNT_2){
	if (djumps == 1 && dspecial_dj == false && window > 3){
		djumps = 0;
		dspecial_dj = true;
	}	
	
	if (window == 1){
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 290);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 290);
		set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .6);
	}
	
	if (dspecial_air_cont >= 3 && !dspecial_air_hit && !has_rune("C")){
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 60);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 60);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 60);
		set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 60);
		set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .8);
	}
	
	if (window == 2 && !hitpause){
		dspecial_air_cont++
	}
	
	if (dspecial_air_cont >= 20){
		window = 4;
		window_timer = 1;
		dspecial_air_cont = 0;
	}
	
	if (window == 3 && window_timer == 1){
		shotgun_ammo = 1;
	}
	
	
	if (window == 4 && !free){
		window = 5;
		window_timer = 5;
	}
}

if (attack == AT_DSPECIAL_AIR && window == 2 && !free){
	window = 5;
	window_timer = 1;
	shake_camera( 8, 4 );    
    if (!hitpause){
    	spawn_hit_fx( x, y-24, 154);
    	spawn_hit_fx( x+30, y-24, 154);
    }
}

if (attack == AT_DSPECIAL_2 && window == 4 && shotgun_cont <= 4){
    shotgun_cont += .35; 
}

if (attack == AT_TAUNT && window == 1 && !hitpause){
	if (window_timer == 1 && hologram_is_alive == true){
		if (hologram.free == false){
			hologram.state = PS_ATTACK_AIR;	
			hologram.hurtboxID.sprite_index = get_attack_value( AT_TAUNT, AG_HURTBOX_SPRITE);
        	hologram.attack = AT_TAUNT; 
        	hologram.window_timer = 4;
		}
	}
	if (window_timer == 8){
		
		spawn_hit_fx( x+16*spr_dir, y-20, 304);	
		if (hologram_is_alive == true && hologram.free == false){
			spawn_hit_fx( hologram.x+16*hologram.spr_dir, hologram.y-20, 304);
			if (shake_on == true){
				shake_camera(24, 6);
			}
		}
		else {
			if (shake_on == true){
				shake_camera(12, 6);
			}
		}
	}
}

if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG
|| attack == AT_FSTRONG_2 || attack == AT_USTRONG_2 || attack == AT_DSTRONG_2){
	if (window < 5){
		super_armor = has_rune("I");
	}
	else {
		super_armor = false;
	}
}

if ((attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR) && jump_pressed && has_rune("D")){
	window = 7;
}

if (has_rune("F")){
	
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 52);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_big"));
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 28);
	
	set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 60);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -23);
	set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
	set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 120);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 20);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 15);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.5);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 15);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.5);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("sfx_zetter_fireball_fire"));
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 60);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -23);
	set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 120);
	set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 120);
	set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
	set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 15);
	
	set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 52);
	set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_big"));
	set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 28);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 6);
	set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG_2, 5, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_DSTRONG_2, 6, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 60);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -23);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 120);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 120);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 20);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 15);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.5);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 15);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.5);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("sfx_zetter_fireball_fire"));
	
	if ((attack == AT_DSTRONG || attack == AT_DSTRONG_2) && window == 2 && window_timer == 8 && !hitpause){
		spawn_hit_fx( x+(60*spr_dir), y-20, 143);
	}
}
