// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL) {
    if (window == 2 && window_timer == 1) {
    	if (trolled) { sound_play(snd_blaster_charge[trolled]); }
        sound_play(sound_get("sfx_blaster_charge"));
        var b_x = 24;
        var b_y = -30;
        var blaster = instance_create(x+(b_x*spr_dir),y+(b_y),"obj_article2");
        blaster.dir = spr_dir;
        blaster.hsp = 3*spr_dir;
        blaster.vsp = 0;
    }
}

if (attack == AT_USPECIAL) {
	switch(window) {
		case 1:
		case 2:
		case 3:
			can_move = false;
		case 5:
			hsp = 0;
			vsp = 0;
			can_wall_jump = true;
		break;
		
		case 4:
			if(!joy_pad_idle){
				teleport_sp = -64;
				vsp = (dsin(joy_dir)*teleport_sp);
				hsp = (dcos(joy_dir)*-teleport_sp);
			}
		break;
	}
    if (window == 5){
    	if (window_timer == 10) {
    		if (free) { state = PS_PRATFALL; }
    		
    	}
    }
}

if (attack == AT_FSPECIAL) or (attack == AT_FSPECIAL_AIR){
    hsp = 0;
    vsp = 0;
    can_move = false;
    can_fast_fall = false;
    off_edge = false;
    
	switch(window) {
		case 1:
			if (window_timer == 1) { sound_play(sound_get("sfx_sans_alert")) }
		break;
		
		case 5:
			if (window_timer == 6) {
				window = 11;
				window_timer = 0;
				with oPlayer if id != other.id && grabbed_id == other.id {
					grabbed_id = 0;
				}
			}
		break;
		
		case 6:
			var fspecial_select_max = 60;
			var fspecial_select_min = 30;
			with oPlayer if id != other.id && grabbed_id == other.id {
				x = other.x+other.spr_dir*78;
				y = other.y-3;
			}
			fspecial_select_timer++;
			if (fspecial_select_timer >= fspecial_select_max) {
				grabSelect(7);
			}
			if (fspecial_select_timer >= fspecial_select_min) {
				if (up_down) {
					grabSelect(7);
				}
				if (down_down) {
					grabSelect(8);
				}
				if (spr_dir and (left_down)) or (!spr_dir and (right_down)) {
					grabSelect(9);
				}
				if (spr_dir and (right_down)) or (!spr_dir and (left_down)) {
					grabSelect(10);
				}
			}
		break;
		
		case 7:
		case 8:
		case 9:
		case 10:
			if (window_timer == 20) {
				window = 14;
				window_timer = 0;
			}
		break;
    }
    if (window >= 6) and (window < 11) {
    	invincible = true;
    }
    
    if (window == 13 && window_timer == get_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH)) {
		if (free && !hard_mode) {
    		state = PS_PRATFALL;
    	}
    }
    
    if (window == 14 && window_timer == get_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH)) {
    	move_cooldown[AT_FSPECIAL] = 15;
    	move_cooldown[AT_FSPECIAL_AIR] = 15;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 1) {
    	
    	//instance_create(x+(60*spr_dir),y,"obj_article3");
        
        if (blue_bone) {
        spawnBone(7*spr_dir, 0, 24, -4, 0);
        spawnBone(-7*spr_dir, 0, -24, -4, 0);
    	} else {
        create_hitbox(AT_EXTRA_1, 7, x+(32*spr_dir), y+(-4));
        create_hitbox(AT_EXTRA_1, 8, x+(-32*spr_dir), y+(-4));
    	}
        
        blue_bone = !blue_bone;
        
        //Cooldown
	    move_cooldown[AT_DSPECIAL] = 80;
    }
}

if (attack == AT_FTILT) {
	boneCooldown(attack, 15, 25);
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 2 && window_timer == 1) {
        if (blue_bone == false) {
        	spawnBone(10*spr_dir, 0, 32, -4, 0);
        } else {
        	create_hitbox(AT_EXTRA_1, 7, x+(40*spr_dir), y+(-4));
        }
    }
}

if (attack == AT_BAIR) {
	boneCooldown(attack, 15, 20);
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 3 && window_timer == 1) {
        if (blue_bone == false) {
        	spawnBone(0, 7, -60, -28, 1);
        } else {
        	create_hitbox(AT_EXTRA_1, 10, x+(-60*spr_dir), y+(-28));
        }
    }
}

if (attack == AT_UTILT) {
	boneCooldown(attack, 6, 12);
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 2 && window_timer == 1) {
        if (blue_bone == false) {
        	spawnBone(0, -14, 0, -4, 1);
        } else {
        	create_hitbox(AT_EXTRA_1, 9, x, y+(-4));
        }
    }
}

if (attack == AT_UAIR) {
	move_cooldown[AT_UAIR] = 7;
}

if (attack == AT_DTILT && window == 3) {
	move_cooldown[AT_DTILT] = 150;
}

if (attack == AT_DATTACK){ //Dash
	vsp = 0;
	if (window < 7) {
		hsp = (6*spr_dir)*(!was_parried);
	}
    if ((window != 1 && window < 7) && has_hit_player) {
    	can_jump = true;
    }
    if (window == 7) {
        can_move = true;
    }
}

//Strong Attacks
if (attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FSTRONG) {
	if (window_timer == 1) {
		switch(window) {
			case 1:
				sound_play(sound_get("sfx_sans_alert"));
			break;
			
			case 3:
				sound_play(sound_get("sfx_sans_rise"));
			break;
		}
	}
}

#define spawnBone(_hsp, _vsp, _x, _y, dir)

var bone = instance_create(x+(_x*spr_dir),y+(_y),"obj_article1");
bone.init_hsp = _hsp;
bone.init_vsp = _vsp;
bone.bone_dir = dir;
bone.id = player.id;
bone.player = player;
bone.spr_dir = spr_dir;
#define boneCooldown(_attack, base_cool, max_cool)

move_cooldown[_attack] = base_cool+((max_cool-base_cool)*blue_bone);
#define grabSelect(_win)
with oPlayer if id != other.id && grabbed_id == other.id {
	hitstop = 10;	
}

window = _win;
window_timer = 0;
if (window_timer >= 4) {
	//soul_id.invincible = false;
}
fspecial_select_timer = 0;
