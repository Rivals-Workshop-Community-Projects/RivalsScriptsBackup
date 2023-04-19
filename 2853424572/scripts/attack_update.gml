// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_TAUNT){
    if window == 4 && window_timer == 20 && taunt_down{
        window = 1
        window_timer = 0
        if heldtaunt == false{
            heldtaunt = true
        }
    }
    if heldtaunt == true{
        can_attack = true
        can_special = true
        can_jump = true
        can_shield = true
        can_strong = true
        can_ustrong = true
        move_cooldown[AT_TAUNT] = 2
    }
}

if (attack == AT_DTILT && window == 8){
    shake_camera(1, 6)
}

if (attack == AT_DTILT && has_hit_player){
    can_special = true
}

if (attack == AT_DSTRONG && window == 3){
    shake_camera(1, 6)
}

if (attack == AT_DSTRONG_2 && window == 3){
    shake_camera(2, 5)
}

if (attack == AT_DSTRONG_2 && window == 1 && window_timer == 1){
    magic -= 2
}

if (attack == AT_DSTRONG_2){
    soft_armor = 6
    overlay = true
}

if (attack != AT_DSTRONG_2){
    overlay = false
}

if (attack == AT_USTRONG){
    if window == 1 && window_timer == 1{
        set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 0);
    }
    if window == 2 && window_timer == 8{
        set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
    }
}

if (attack == AT_DSTRONG_2 && has_hit_player){
    can_special = true
    can_attack = true
    can_jump = true
}

if (attack == AT_DAIR){
    if window == 1 && window_timer == 1{
        set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
        set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
        set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 15);
    }
    if has_hit_player{
        move_cooldown[AT_DAIR] = 18
        if window == 2{
            if hsp >= 3{
                hsp -= (hsp/3)
            }
            if hsp <= -3{
                hsp -= (hsp/3)
            }
        }
    }
}

if (attack == AT_FAIR){
    soft_armor = 8
}

if (attack == AT_DATTACK){
    can_fast_fall = false
    if window == 1 && window_timer == 1{
        set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4); 
    }
    if window == 3 && window_timer == 6 && free && state_timer < 36{
        window_timer = 1
        set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);
    }
    if window == 3 && !free{
        window_timer = 6
        destroy_hitboxes()
    }
    if window == 3 && free && state_timer >= 36{
        window_timer = 6
        destroy_hitboxes()
    }
    if window == 3 && free{
        air_accel = .05
    }
    if window == 4 && window_timer == 1 && !free{
        sound_play( asset_get("sfx_land_heavy"))
    }
}

if (attack == 49) {
    if (window == 1) { 
        if window_timer == 2{
            sound_play(sound_get("fs_voiceclip"))
            set_window_value(49, 1, AG_WINDOW_HSPEED, -5);
        }
        if window_timer == 4{
            set_window_value(49, 1, AG_WINDOW_HSPEED, -4);
        }
        if window_timer == 6{
            set_window_value(49, 1, AG_WINDOW_HSPEED, -3);
        }        
        if window_timer == 8{
            set_window_value(49, 1, AG_WINDOW_HSPEED, -2);
        } 
        if window_timer == 10{
            set_window_value(49, 1, AG_WINDOW_HSPEED, -1);
        }       
        if window_timer == 12{
            set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
        }               
    }
}

if (attack != 49) {
super_armor = false
}

//attack_update.gml
if (attack == AT_NSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }

        air_accel = .25
        if !free{move_cooldown[AT_NSPECIAL] = 10}
        if free{move_cooldown[AT_NSPECIAL] = 35}
        can_fast_fall = false
}

if (attack == AT_NSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
        move_cooldown[AT_NSPECIAL] = 30
        hsp = 0
        can_move = false
        air_accel = 0
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
    if (window == 1) {
		downBStart = get_player_damage(player);
        super_armor = false;
	}

    if window == 1 && window_timer == 1{
        if magic < 1{
            set_num_hitboxes(AT_DSPECIAL, 0);
            window = 5
        }
        else{
            magic -= 1
            set_num_hitboxes(AT_DSPECIAL, 2);
            sound_play(sound_get("sfx_counter"))
        }
            afterimage_spr = sprite_get("dspecial_afterimage");
    }
        hsp = 0
        air_accel = 0

    if (window == 2) {
        super_armor = true;
		if (hitpause) {	
            burned = false
            wrapped = false
            marked = false
            plasma_pause = false
            buried = false
            flashed = false
            crystalized = false
            downBDamage = round((get_player_damage(player) - downBStart)*1.5)
			set_player_damage( player, downBStart )
            set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, downBDamage);
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			
			if (curr_dist > 150) {
				set_state(PS_IDLE);
			}

			if (shortest_id.x < x) {
				spr_dir = -1;
			} else {
				spr_dir = 1;
			}
			
			window = 4;
			window_timer = 0;
		}
	}
    if (window == 3) {
        super_armor = false;
        move_cooldown[AT_DSPECIAL] = 20
	}
    if (window == 4) {

        if window_timer <= 17{
        afterimage = true
        }
        if window_timer > 17{
        afterimage = false
        }
		if (window_timer < 8 && window_timer > 2 && !free) {
			x = x + (8 * spr_dir);
		}
		if (window_timer < 8 && window_timer > 2 && free) {
			x = x + (5 * spr_dir);
		}
	}
}

if (attack == AT_UTILT){
    if has_hit_player{
    can_ustrong = true
    can_special = true
    can_jump = true
    }
    move_cooldown[AT_UTILT] = 12
}

if (attack == AT_FSPECIAL){
    if window == 1 && window_timer == 1{
        if magic < 1{
            set_num_hitboxes(AT_DSPECIAL, 0);
            window = 4
        }
        else{
            set_num_hitboxes(AT_FSPECIAL, 1);
            magic -= 1
        }
        fspecial_air_used = false
    }
    if window == 2 && window_timer < get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)-1{
        afterimage = true
    }
    if window == 2 && window_timer >= get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)-1{
        afterimage = false
    }
    if (window == 2 && free){
        fspecial_air_used = true
    }
    if window == 4 {
    can_shield = false
    air_accel = 0
    hsp = 0
	can_fast_fall = false;
    can_move = false
    }
        afterimage_spr = sprite_get("fspecial_afterimage");
    air_accel = .12
}

if (attack == AT_USPECIAL){
    if !has_hit_player{
    set_num_hitboxes(AT_USPECIAL, 2);
    set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -5);
    }
    if has_hit_player{
    set_num_hitboxes(AT_USPECIAL, 6);
    set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -7.5);
    }
    air_accel = .27
	can_fast_fall = false;
}

if (attack == AT_FSTRONG_2){
    if window == 1 && window_timer == 1{
    fstrong_2_armor = true
    fstrong_2_startdamage = get_player_damage(player);
    magic -= 2
    }
    if fstrong_2_armor == true{
        super_armor = true
    }
	if (hitpause && get_player_damage(player) > fstrong_2_startdamage) {	
        fstrong_2_armor = false
        super_armor = false
    }
        move_cooldown[AT_FSTRONG] = 12
}

if (attack == AT_FSTRONG){
        move_cooldown[AT_FSTRONG] = 12
}