current_sprite_set = shades;
jake_cooldown = max(jake_cooldown-1, 0)

var cooldown_offset = 0
if jake_cooldown != 0 {
	cooldown_offset = 30
	hud_offset = cooldown_offset
}


if jake_cooldown != 0 {
	move_cooldown[AT_DSPECIAL] = 3
	move_cooldown[AT_DSPECIAL_2] = 3
}

with hit_fx_obj {
    if hit_fx == other.vfx_thing {
        depth = other.depth + 1
        x = other.x
        y = other.y - (other.char_height/2)
    } else if hit_fx == other.vfx_hand_spin or hit_fx == other.vfx_hand_spin_small {
    	depth = other.depth + 1
    }
}

if instance_exists(jake_obj) {
    
} else {
    if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
        move_cooldown[AT_FSPECIAL] = 0;
    }
}


if instance_exists(jake_obj) move_cooldown[AT_TAUNT] = 3

if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
    switch (attack) {
    	case AT_DSPECIAL:
    	if window == 3 and window_timer == 0 and !hitpause {
	    	jake_obj = instance_create(x+(16*spr_dir),y-30,"obj_article1")
	    	jake_obj.state = PS_DOUBLE_JUMP
	    	jake_obj.spr_dir = spr_dir
	    	jake_obj.hsp = spr_dir*4
	    	jake_obj.vsp = -2
	    	jake_obj.window = 1;
	    	jake_obj.window_timer = 20
	    	change_finn_sprites(instance_exists(jake_obj))
    	}
    	break;
		// case AT_NSPECIAL_2:
		// 	if window 
		// break;
        case AT_USTRONG:
            
            var off = instance_exists(jake_obj) ? 400 : 200
            
            if (window == 2 and window_timer > 1) or window == 3 or (window == 4 and window_timer < 6) {
                hud_offset = round(lerp(hud_offset, off+cooldown_offset, 0.1))
            }           
        break;
        case AT_UTILT:
            if (window == 1 and window_timer > 5) or window == 2 or (window == 3 and window_timer < 6) {
                hud_offset = round(lerp(hud_offset, 290+cooldown_offset, 0.1))
            }
        break;
        case AT_UAIR:
            if (window == 1 and window_timer > 7) or window == 2 or (window == 3 and window_timer < 6) {
                hud_offset = round(lerp(hud_offset, 200+cooldown_offset, 0.1))
            }            
        break;
        case AT_USPECIAL:
            //Thank you to Ducky for the ledge forgiveness template
            if (!fspecial_ledgeforgiven and (window == 2) and (free and place_meeting(x+hsp,y,asset_get("par_block"))))
            {
                for (var i = 0; i < 35; i++)
                {
                    if fspecial_ledgeforgiven break;
                    
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
                    {
                        y -= i;
                        fspecial_ledgeforgiven = true;
                    }
                }
            }
        break;
        case AT_FSPECIAL_2:
            //Thank you to Ducky for the ledge forgiveness template
            if (!fspecial_ledgeforgiven and (window > 3 and window < 7) and (free and place_meeting(x+hsp,y,asset_get("par_block"))))
            {
            	
                for (var i = 0; i < 30; i++)
                {
                    if fspecial_ledgeforgiven break;
                    
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
                    {
                        y -= i;
                        fspecial_ledgeforgiven = true;
                    }
                }
            }
        break;
        case AT_FSPECIAL:
            if (window == 1 and window_timer > 10) or window == 2  {
                hud_offset = round(lerp(hud_offset, 100+cooldown_offset, 0.1))
            }        
            if window == 1 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 {
                loop_sound = sound_play(sound_get("sfx_fj_horse"), true, noone, 1, 1)
            }
            
            //Thank you to Ducky for the ledge forgiveness template
            if (!fspecial_ledgeforgiven and (window < 3) and (free and place_meeting(x+hsp,y,asset_get("par_block"))))
            {
                for (var i = 0; i < 35; i++)
                {
                    if fspecial_ledgeforgiven break;
                    
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
                    {
                        y -= i;
                        fspecial_ledgeforgiven = true;
                    }
                }
            }
            
            if window == 2 and window_timer mod 3 == 0{
                var range = 66
                var yy = floor(range/2) - random_func(4, range, false)
                
                
                var d = random_func(6, 2, true)
                with spawn_hit_fx(x+(spr_dir*10),(y- (char_height/1.5) )-floor(yy), vfx_speedline) {
                    depth = d ? other.depth - 3 : other.depth + 2
                }
            }
            

        	if window == 5 and window_timer == 0 and !hitpause {
        	    sound_stop(loop_sound)
        		jake_obj = instance_create(x,y-4,"obj_article1")
        		with jake_obj {
        			state = PS_PARRY
        			window = 0;
        			window_timer = 0
        			lock_state = true
        			hsp = other.spr_dir * 8
        			
        			spr_dir = other.spr_dir
        		}
        		change_finn_sprites(instance_exists(jake_obj))
        	}

            
            if (window == 3 || window == 4) and window_timer == 0 {
                sound_volume(loop_sound, 0, 300)
                with pHitBox {
                    if player_id == other and attack == AT_FSPECIAL and type == 1 {
                        destroyed = true;
                        instance_destroy();
                    }
                }
            }
        break;
    }
} else {
    sound_stop(loop_sound)
}


#define change_finn_sprites(detached)

var attack_sprites = jake_sprites[? PS_ATTACK_AIR]
if !detached {
	var keys = ds_map_keys(attack_sprites)
	var values = ds_map_values(attack_sprites)
	for (var i = 0; i < ds_map_size(attack_sprites); i++) {
		set_attack_value(keys[i], AG_HURTBOX_SPRITE, values[i].hurtbox)
	}
	
	// JAB
	reset_attack_value(AT_JAB, AG_NUM_WINDOWS);

	// NAIR
	reset_attack_value(AT_NAIR, AG_LANDING_LAG)
	reset_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_NAIR, 2, HG_LIFETIME)
	
	// FSTRONG
	reset_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME)
	reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT);
	reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING)
	reset_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME)
	
	// USTRONG
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME)
	reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
	reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT)
	reset_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP);
	reset_hitbox_value(AT_USTRONG, 3, HG_LIFETIME);
	
	// DSTRONG
	reset_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER);
	reset_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH);
	reset_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME);
	reset_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME);
	
	
} else {
	var keys = ds_map_keys(attack_sprites)
	for (var i = 0; i < ds_map_size(attack_sprites); i++) {
		reset_attack_value(keys[i], AG_HURTBOX_SPRITE)
	}
	// JAB
	set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
	
	// NAIR
    set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
    set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 14);
    set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 0);	
    
    // FSTRONG
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4)
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 22)
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4)
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11)
	set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0)
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"))
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
	set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0)
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 0)
	
	// USTRONG
	set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7)
	set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4)
	set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG)
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 10);
	set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
	set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 0);
	
	// DSTRONG
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH,6)
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 22)
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
	set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 0);
	set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 0);
}
