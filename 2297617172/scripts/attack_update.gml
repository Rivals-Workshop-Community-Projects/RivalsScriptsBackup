//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//not sandbert probably
if (attack == AT_USPECIAL){
    if (window == 1){
        if (window_timer == 1){
            uspec_times = 1;
        }
        if (window_timer == 2){
            vsp /= 2;
            hsp /= 2;
        }
        if (window_timer == 6){
            if (!hitpause && !hitstop){
                spawn_hit_fx( x + 5*spr_dir, y + 40, firework_vfx );
                sound_play(sound_get("beegjump"));
                sound_play(asset_get("sfx_absa_current_pop"));
            }
        }
    }
    if (window == 2){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                vsp = -7;
            }
        }
    }
    if (window == 3){
        if (window_timer == 18){
            sound_stop(asset_get("sfx_absa_current_pop"));
            if (uspec_times < max_uspec_times){
                window = 1;
                window_timer = 2;
                uspec_times++;
            }
        }
    }
    if (window > 1){
        can_wall_jump = true;
    }
}

if (attack == AT_DATTACK){
    if (window == 1){
        if (window_timer == 1){
            set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
        }
        if (window_timer == 2){
            set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
        }
    }
    if (window == 2 || window == 3){
        if (!hitpause && !hitstop){
            if (window_timer mod 4 == 0 || window_timer == 1){
                spawn_hit_fx( x - 15*spr_dir, y + 5, 27 );
            }
        }
    }
}

if (attack == AT_UAIR){
    if (window == 3){
        if (window_timer == 1){
            if (vsp > 0){
                //vsp = 0;
            }
        }
    }
    if (window == 3){
        hud_offset = 55;
    }
    if (window == 4){
        if (window_timer < 12){
            hud_offset = 55;
        }
    }
}

if (attack == AT_UTILT){
    if (window == 2){
        hud_offset = 25;
    }
    if (window == 3){
        if (window_timer < 6){
            hud_offset = 25;
        }
    }
}

if (attack == AT_DSTRONG){
    if (window == 2){
        if (window_timer == 4){
            if (!hitpause && !hitstop){
                sound_play(asset_get("sfx_land_heavy"));
            }
        }
    }
    if (window == 3){
        if (window_timer == 15){
            sound_stop(asset_get("sfx_absa_current_pop"));
        }
    }
}

if (attack == AT_FSTRONG){
    if (window == 4){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                hsp = 8*spr_dir;
            }
        }
    }
}


var hsp_max = 5*spr_dir;

if (has_rune("J")){
    hsp_max = 10*spr_dir;
}

if (attack == AT_FSPECIAL){
    //do stuff
    
    if (window == 1){
        
        if (free){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
        }
        else if (!free){
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);
        }
        
    }
    
    if (window == 2){
        
        hud_offset = 25;
        
        //looping
        if (window_timer == 35){
            window_timer = 1;
        }
        
        //movement
        if ((hsp < hsp_max && spr_dir == 1) || (hsp > hsp_max && spr_dir == -1)){
            hsp = hsp + 1*spr_dir;
        }
        
        //turning
        if (spr_dir == 1){
            if (left_pressed){
                spr_dir = -1;
            }
        }
        if (spr_dir == -1){
            if (right_pressed){
                spr_dir = 1;
            }
        }
        
        //exploding
        if (special_pressed || attack_pressed || jump_pressed){
            window = 3;
            window_timer = 0;
        }
        
        if (free && !has_rune("J")){
            var bruh = 22;
            window = 3;
            window_timer = 0;
            vsp = -9;
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
        }
        else{
            var bruh = 12;
            
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
        }
        
    }
    
    if (window == 3){
        
        if (!free){
            hsp /= 2;
        }
        else{
            hsp = 6*spr_dir;
        }
        
        if (window_timer == 1 && !hitpause && !hitstop){
            sound_play(sound_get("star"));
        }
        
        if (window_timer == 8 && !hitpause && !hitstop){
            vsp = -7;
            
            sound_play(asset_get("sfx_abyss_explosion_big"));
            spawn_hit_fx( x + 0*spr_dir, y - 12, 145 );
            
            create_hitbox(AT_FSPECIAL, 1, floor(x-4), floor(y-20));
        }
        
    }
    
    if (window == 4){
        hsp = 3*spr_dir;
        
        can_fast_fall = false;
        can_wall_jump = true;
        
        if (!free){
            window = 5;
            window_timer = 1;
        }
    }
    
    if (window == 5){
        can_fast_fall = true;
    }
    
}

if (attack == AT_DSPECIAL){
    
    hud_offset = 45;
    
    if (window == 1){
        if (window_timer == 1){
            instance_create(x + (spr_dir*55),y - 0,"obj_article1");
            spawn_hit_fx( x + (spr_dir*0), y - 285, 13 );
        }
    }
    
    if (window == 4){
        if (window_timer == 1){
            
            spawn_hit_fx( x + 0*spr_dir, y - 75, 197 );
            
            if (free){
                vsp = -5;
            }
            
        }
        
        move_cooldown[AT_DSPECIAL] = 55;
        
    }
}

if (attack == AT_JAB){
    
    if (window == 3 && window_timer == 17){
        
        if (was_parried){
            
            was_parried = false;
            
        }
        
    }
    
}

if (attack == AT_NSPECIAL){
    
    move_cooldown[AT_NSPECIAL] = 55;
    
}


//runes
if (has_rune("C")){
	if (attack == AT_DSTRONG){
	    if (window > 1 && window < 5){
	        super_armor = true;
	    }
	    else{
	        super_armor = false;
	    }
	}
}

if (has_rune("I")){
	if (attack == AT_NSPECIAL){
	    if (window == 4 && window_timer == 1 && !hitpause && !hitstop){
	        var proj = create_hitbox(AT_NSPECIAL, 1, floor(x-4), floor(y-20));
	        proj.vsp *= 2;
            proj = create_hitbox(AT_NSPECIAL, 1, floor(x-4), floor(y-20));
            proj.vsp *= 1.5;
	    }
	}
}

if (has_rune("K")){
	if (attack == AT_NAIR){
	    if (window == 2){
	        super_armor = true;
	    }
	    else{
	        super_armor = false;
	    }
	}
	if (attack == AT_DATTACK){
	    if (window == 2 || window == 3){
    	    super_armor = true;
	    }
    	else{
    	    super_armor = false;
	    }
	}
}

if (has_rune("M")){
    if (attack == AT_FSTRONG){
        if (strong_charge == 60){
            
            strong_charge = 61;
            
            spawn_hit_fx( x, y + 5, 121 );
            sound_play(asset_get("sfx_clairen_fspecial_slash"));
            
            with (oPlayer){
                if (state != PS_DEAD && player != other.player){
                    other.x = x - 15*spr_dir;
                    other.y = y;
                    other.vsp = vsp;
                    other.hsp = hsp;
                }
            }
            
            spawn_hit_fx( x, y + 5, 121 );
            
        }
    }
    if (attack == AT_DSTRONG){
        if (strong_charge == 60){
            
            strong_charge = 61;
            
            spawn_hit_fx( x, y + 5, 121 );
            sound_play(asset_get("sfx_clairen_fspecial_slash"));
            
            with (oPlayer){
                if (state != PS_DEAD && player != other.player){
                    other.x = x - 15*spr_dir;
                    other.y = y;
                    other.vsp = vsp;
                    other.hsp = hsp;
                }
            }
            
            spawn_hit_fx( x, y + 5, 121 );
            
        }
    }
}

if (has_rune("O")){
	if (attack == AT_USTRONG){
	    if (window == 3 && window_timer == 1 && !hitpause && !hitstop){
	        var proj = create_hitbox(AT_USTRONG, 1, floor(x-4), floor(y-20));
	        proj.hsp = 5;
            proj = create_hitbox(AT_USTRONG, 1, floor(x-4), floor(y-20));
            proj.hsp = -5;
	    }
	}
}