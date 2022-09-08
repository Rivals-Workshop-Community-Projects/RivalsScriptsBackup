// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL) {
	if (window == 1) {
		destroy_gaster_blaster = false;
	}
    if (window == 2 && window_timer == 1) {
    	if (trolled) { sound_play(snd_blaster_charge[trolled]); }
        sound_play(sound_get("sfx_blaster_charge"));
        var b_x = 24;
        var b_y = -30;
        var blaster = instance_create(x+(b_x*spr_dir),y+(b_y),"obj_article2");
        blaster.dir = spr_dir;
        blaster.hsp = 3*spr_dir;
        blaster.vsp = 0;
        
        //move_cooldown[AT_NSPECIAL] = 180;
		//move_cooldown[AT_FSTRONG] = 150;
		//move_cooldown[AT_DSTRONG] = 150;
		//move_cooldown[AT_USTRONG] = 150;
    }
}

if (attack == AT_USPECIAL) {
    if (window >= 1 && window <= 3){
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 4){
        if(!joy_pad_idle){
            teleport_sp = -64;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
        }
    }
    if (window == 5){
    	if (window_timer == 10) {
    		if (free) { state = PS_PRATFALL; }
    		
    	}
        hsp = 0;
        vsp = 0;
        can_wall_jump = true;
    }
}

if (attack == AT_FSPECIAL) or (attack == AT_FSPECIAL_AIR){
    hsp = 0;
    vsp = 0;
    can_move = false;
    can_fast_fall = false;
    off_edge = false;
    if (window == 1 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_alert"));
    }
    if (window == 5 && window_timer == 6) {
    	window = 11;
    	window_timer = 0;
    	soulgrabbed_id.grabbed_id = 0;
    	soulgrabbed_id = noone;
    }
    if (window == 7 || window == 8 || window == 9 || window == 10) {
    	if (window_timer == 20) {
    		window = 14;
    		window_timer = 0;
    	}
    }
    if (window == 6) {
    	soul_id.x = x+spr_dir*78;
    	soul_id.y = y-3;
    	soul_id.invincible = true;
    	fspecial_select_timer++;
    	if (fspecial_select_timer >= fspecial_select_max) {
    		window = 7;
			window_timer = 0;
			if (window_timer >= 4) {
				soul_id.invincible = false;
			}
    		fspecial_select_timer = 0;
    	}
    	if (fspecial_select_timer >= fspecial_select_min) {
	   		if (down_down) {
	   			fspecial_select_timer = 0;
				window = 8;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
			}
	   		if (up_down) {
	   			fspecial_select_timer = 0;
				window = 7;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
			}
	   		if (spr_dir and (left_down)) or (!spr_dir and (right_down)) {
	   			fspecial_select_timer = 0;
				window = 9;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
				}
	   		if (spr_dir and (right_down)) or (!spr_dir and (left_down)) {
	   			fspecial_select_timer = 0;
				window = 10;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
			}
    	}
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
    	}
        
        if (!blue_bone) {
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
//	move_cooldown[AT_BAIR] = 20;
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
	if (window == 3) {
		move_cooldown[AT_DTILT] = 150;
	}
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

/*
var ftilt_b_cool = 10;
var ftilt_m_cool = 20;

var utilt_b_cool = 10;
var utilt_m_cool = 20;


var bair_b_cool = 10;
var bair_m_cool = 20;
//if attack == AT_BAIR { bair_b_cool = 15; bair_m_cool = 20; }

//move_cooldown[AT_FAIR] = base_cool+((max_cool-base_cool)*blue_bone);

move_cooldown[AT_FTILT] = ftilt_b_cool+((ftilt_m_cool-ftilt_b_cool)*blue_bone);
move_cooldown[AT_BAIR] = bair_b_cool+((bair_m_cool-bair_b_cool)*blue_bone);
move_cooldown[AT_UTILT] = utilt_b_cool+((utilt_m_cool-utilt_b_cool)*blue_bone);