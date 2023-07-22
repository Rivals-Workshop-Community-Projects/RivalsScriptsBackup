//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_AIR){
    trigger_b_reverse();
}

if (attack == AT_NAIR && window == 1){
soft_armor = 8;
}

if (attack == AT_NAIR && window != 1){
soft_armor = 0;
}

if (attack == AT_JAB && has_hit_player == true && window <= 3){
can_jump = true;
}

if (attack == AT_FAIR && has_hit_player == true && window == 2){
vsp = 0;
}

if (attack == AT_USPECIAL){
    if (window == 3){
        hsp = 0;
        vsp = 0;
    }
    if (window == 1){
        hsp = 0;
        vsp = 0;
       
    }
    if (window == 2){
       if(!joy_pad_idle){
            teleport_sp = -20;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
       }
    }
}


if (attack == AT_USPECIAL && has_hit_player == true){
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}

if (attack == AT_USPECIAL && has_hit_player == false){
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
}


if (attack == AT_TAUNT && no_sword == true){
use_sword = true;
no_sword = false;
}

if (attack == AT_EXTRA_1 && use_sword == true){
no_sword = true;
use_sword = false;
}

if (attack == AT_NAIR && has_hit_player && window == 6 && attack_pressed){
  set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 9);
 window = 7;
 window_timer = 0;
}

if (attack == AT_NAIR && has_hit_player = false && window == 6){
  set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
}

if (attack == AT_DSPECIAL_AIR) {
    can_fast_fall = false;
    if (window == 2 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) && has_hit_player == false) {
        iasa_script();
        set_state(PS_IDLE_AIR);
		
    }
}

if (window == 1 && attack == AT_DSPECIAL_AIR && window_timer <= 30) super_armor = true;
    else super_armor = false;
	

if (attack == AT_NSPECIAL){
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL_AIR){
    can_fast_fall = false;
}

if (attack == AT_FSPECIAL && window == 6){
 move_cooldown[AT_FSPECIAL] = 40;
}

if (attack == AT_FSPECIAL && window == 11){
 move_cooldown[AT_FSPECIAL] = 40;
}

if (attack == AT_UTILT && window == 2 && attack_down == true){
  set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 8);
  window = 5;
  window_timer = 0;
}

if (attack == AT_UTILT && window == 2 && attack_down == false){
  set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
}

if (attack == AT_FSPECIAL && up_down == true && window == 1 && window_timer >= 10){
  set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
  window = 4;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && up_down == false && window == 1 && window_timer == 12){
  set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 6 && has_hit_player == true){
  window = 6;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 6 && up_pressed == true){
  window = 7;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 6 && down_pressed == true){
  window = 8;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 6 && right_pressed == true && spr_dir == -1){
  window = 10;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 6 && left_pressed == true && spr_dir == -1){
  window = 9;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 6 && right_pressed == true && spr_dir == 1){
  window = 9;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 6 && left_pressed == true && spr_dir == 1){
  window = 10;
  window_timer = 0;
}


if (attack == AT_FSPECIAL && window == 4 && window_timer == 4 && has_hit_player == true){
  window = 11;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 11 && up_pressed == true){
  window = 12;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 11 && down_pressed == true){
  window = 13;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 11 && right_pressed == true  && spr_dir == -1){
  window = 15;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 11 && left_pressed == true  && spr_dir == -1){
  window = 14;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 11 && right_pressed == true  && spr_dir == 1){
  window = 14;
  window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 11 && left_pressed == true  && spr_dir == 1){
  window = 15;
  window_timer = 0;
}

if (attack == AT_USTRONG && window == 2){
super_armor = true;
}

if (attack == AT_USTRONG && window == 6){
super_armor = true;
}

if (attack == AT_FSTRONG && window == 2){
super_armor = true;
}

if (attack == AT_FSTRONG && window == 6){
super_armor = true;
}

if (attack == AT_DSTRONG && window == 2){
super_armor = true;
}

if (attack == AT_DSTRONG && window == 6){
super_armor = true;
}

if (attack == AT_DSPECIAL_AIR && window == 2 && special_down == true){
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 30);
}


if (attack == AT_DSPECIAL_AIR && window == 2 && special_down == false){
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 18);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 20);
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
            hit_player_obj.x = x+30*spr_dir;
			hit_player_obj.y = y;
        }
        if (window == 5 && window_timer >= 3){
            hit_player_obj.x = x+30*spr_dir;
			hit_player_obj.y = y-0;
        }
        if (window == 5 && window_timer >= 8){
            hit_player_obj.x = x+30*spr_dir;
			hit_player_obj.y = y-15;
        }
        if (window == 5 && window_timer >= 12){
            hit_player_obj.x = x+30*spr_dir;
			hit_player_obj.y = y-10;
        }
        if (window == 5 && window_timer == 16){
            hit_player_obj.x = x+30*spr_dir;
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

if (attack == AT_NSPECIAL && window == 2 && window_timer >= 6 && special_pressed){
window = 5;
window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 5 && window_timer == 12){
window = 8;
window_timer = 0;
}


if (attack == AT_NSPECIAL && window == 3 && window_timer >= 6 && special_pressed){
window = 6;
window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 6 && window_timer == 12){
window = 8;
window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 4 && window_timer == 16){
window = 7;
window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 7 && window_timer == 12){
window = 8;
window_timer = 0;
}

//air
if (attack == AT_NSPECIAL_AIR && window == 2 && window_timer >= 8 && special_pressed){
window = 5;
window_timer = 0;
}

if (attack == AT_NSPECIAL_AIR && window == 5 && window_timer == 12){
window = 8;
window_timer = 0;
}


if (attack == AT_NSPECIAL_AIR && window == 3 && window_timer >= 8 && special_pressed){
window = 6;
window_timer = 0;
}

if (attack == AT_NSPECIAL_AIR && window == 6 && window_timer == 12){
window = 8;
window_timer = 0;
}

if (attack == AT_NSPECIAL_AIR && window == 4 && window_timer == 24){
window = 7;
window_timer = 0;
}

if (attack == AT_NSPECIAL_AIR && window == 7 && window_timer == 12){
window = 8;
window_timer = 0;
}

if (attack == AT_NSPECIAL && window == 8){
 move_cooldown[AT_NSPECIAL] = 40;
}

if (attack == AT_NSPECIAL_AIR && window == 8){
 move_cooldown[AT_NSPECIAL_AIR] = 40;
}


if (attack == AT_DSPECIAL && window == 3 && free == true){
can_jump = true;
can_attack = true;
}

if (attack == AT_NSPECIAL && window <= 3){
can_shield = true;
}

if (attack == AT_NSPECIAL_AIR && window <= 3){
can_shield = true;
}

if (attack == AT_NSPECIAL_AIR && window == 5 && right_down == true){
   spr_dir = 1;
}

if (attack == AT_NSPECIAL_AIR && window == 5 && left_down == true){
   spr_dir = -1;
}

if (attack == AT_NSPECIAL_AIR && window == 6 && right_down == true){
   spr_dir = 1;
}

if (attack == AT_NSPECIAL_AIR && window == 6 && left_down == true){
   spr_dir = -1;
}

if (attack == AT_NSPECIAL_AIR && window == 7 && right_down == true){
   spr_dir = 1;
}

if (attack == AT_NSPECIAL_AIR && window == 7 && left_down == true){
   spr_dir = -1;
}

if (attack == AT_NSPECIAL && window == 5 && right_down == true){
   spr_dir = 1;
}

if (attack == AT_NSPECIAL && window == 5 && left_down == true){
   spr_dir = -1;
}

if (attack == AT_NSPECIAL && window == 6 && right_down == true){
   spr_dir = 1;
}

if (attack == AT_NSPECIAL && window == 6 && left_down == true){
   spr_dir = -1;
}

if (attack == AT_NSPECIAL && window == 7 && right_down == true){
   spr_dir = 1;
}

if (attack == AT_NSPECIAL && window == 7 && left_down == true){
   spr_dir = -1;
}

if (attack == AT_FSPECIAL && window == 6 && has_hit_player == true){
        hit_player_obj.hitstop = 1;
        hit_player_obj.x = x+120*spr_dir;
        hit_player_obj.y = y;
}

if (attack == AT_FSPECIAL && window == 2 && has_hit_player == true){
        hit_player_obj.hitstop = 1;
        hit_player_obj.x = x+120*spr_dir;
        hit_player_obj.y = y;
}

if (attack == AT_FSPECIAL && window == 11 && has_hit_player == true){
        hit_player_obj.hitstop = 1;
        hit_player_obj.x = x+120*spr_dir;
        hit_player_obj.y = y-60;
}

if (attack == AT_FSPECIAL && window == 4 && has_hit_player == true){
        hit_player_obj.hitstop = 1;
        hit_player_obj.x = x+120*spr_dir;
        hit_player_obj.y = y-60;
}

if (attack == AT_DATTACK && window == 3 && has_hit_player == false){
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
}

if (attack == AT_DATTACK && window == 3 && has_hit_player == true){
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
window = 4;
}
