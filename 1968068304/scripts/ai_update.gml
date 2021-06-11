//ai_update - called every frame for this character as a CPU

if (ai_recovering) {
	
	mawral_ai_target_dist = point_distance(x, y, ai_target.x, ai_target.y); 
	mawral_ai_target_dist_predict = point_distance(x, y, ai_target.x + ai_target.hsp * temp_level, ai_target.y + ai_target.vsp * temp_level);
	
	//lock certain moves while recovering.
	if (free) {
		move_cooldown[AT_DSPECIAL] = max(move_cooldown[AT_DSPECIAL], 2);
		move_cooldown[AT_DAIR] = max(move_cooldown[AT_DAIR], 2);
		if (y > room_height / 2) {
			move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 2);
			move_cooldown[AT_FAIR] = max(move_cooldown[AT_FAIR], 2);
			move_cooldown[AT_NAIR] = max(move_cooldown[AT_NAIR], 2);
			if (!has_walljump) {
				move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL], 2);
			}
		}
		
	}
	
	//consider using n-special if we have enough height and the target is close.
	if (has_walljump && y < room_height / 2 && mawral_ai_target_dist_predict < 300) {
		attack_down = 0; special_pressed = 1; up_down = 0; down_down = 0; left_down = 0; right_down = 0;
	}
	//use uspecial if we still have walljump and are right at the wall.
	else if (move_cooldown[AT_USPECIAL] <= 0 && has_walljump && place_meeting(x + sign(x - room_width / 2) * 2, y, asset_get("par_block"))) {
		scr_input_perform_move(AT_USPECIAL);
	}
	//always use u-air to recover where appropriate.
	else if (move_cooldown[AT_UAIR] <= 0 && y > 0 && (vsp > 3 || scr_mawral_ai_is_player_close_to_bottom_blastzone()) 
	  && (epinel_uair_jump_counter <= 0 || (epinel_uair_jump_counter + epinel_consecutive_uair_jumps < 2 && !scr_mawral_ai_is_player_close_to_bottom_blastzone()) ) ) {
		attack_pressed = 1; special_pressed = 0; up_down = 1; down_down = 0; 
		if (x > room_width / 2) { left_down = 1; right_down = 0; left_pressed = 1; right_pressed = 0; }
		else                    { left_down = 0; right_down = 1; left_pressed = 0; right_pressed = 1; }
	}
	
	//if (attack == AT_DSPECIAL_AIR) {
    //    if (y >= room_height * 0.8 && epinel_grabbed_player_object_id <= 0) { shield_pressed = true; shield_down = true;  }
    //}
    
    //walljump out of walljump-cancellable moves.
    if (state = PS_ATTACK_AIR && djumps > 0 && can_wall_jump && has_walljump) {
    	jump_down = true;
    	jump_pressed = true;
    }
}






#define scr_input_hold_direction_towards_target
left_down = ai_target_xdir==-1; right_down = ai_target_xdir==1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_away_from_target
left_down = ai_target_xdir==1; right_down = ai_target_xdir==-1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_forwards
left_down = spr_dir==-1; right_down = spr_dir==1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_backwards
left_down = spr_dir==1; right_down = spr_dir==-1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_neutral
up_down = 0; down_down = 0; left_down = 0; right_down = 0;
return;

#define scr_input_hold_direction_towards_center_stage
var center_dir = sign(x - room_width / 2);
left_down = center_dir==-1; right_down = center_dir==1;
left_pressed = (left_down); right_pressed = (right_down);
return;


#define scr_mawral_ai_is_player_close_to_bottom_blastzone
return y > room_height * 0.8;

#define scr_input_perform_move

var towards = sign(x - ai_target.x);
if (towards == 0) towards = spr_dir;
switch (argument[0]) {
case 0: break;
case AT_JAB:
	scr_input_hold_direction_neutral();
	attack_down = 1; special_down = 0; strong_down = 0; 
	attack_pressed = 1; break;
case AT_DATTACK:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	left_hard_pressed = left_down; right_hard_pressed = right_down;
	attack_down = 1; special_down = 0; strong_down = 0;  
	attack_pressed = 1; break;
	
case AT_NSPECIAL:
	scr_input_hold_direction_neutral();
	attack_down = 0; special_down = 1; strong_down = 0;  
	special_pressed = 1; break;
case AT_FSPECIAL:
case AT_FSPECIAL_AIR:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; special_pressed = 1; break;
case AT_USPECIAL:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; special_pressed = 1; break;
case AT_DSPECIAL:
case AT_DSPECIAL_AIR:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; special_pressed = 1; break;

case AT_FSTRONG:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 0; special_down = 0; strong_down = 1; strong_pressed = 1; break;
case AT_USTRONG:
	up_down = 1; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 0; special_down = 0; strong_down = 1; strong_pressed = 1; break;
case AT_DSTRONG:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 0; special_down = 0; strong_down = 1; strong_pressed = 1; break;

case AT_FTILT:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free && ai_target_xdir != 0) spr_dir = ai_target_xdir; break;
case AT_UTILT:
	up_down = 1; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; break;
	if (!free && ai_target_xdir != 0) spr_dir = ai_target_xdir; break;
case AT_DTILT:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; break;

case AT_NAIR:
	scr_input_hold_direction_neutral();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_FAIR:
	up_down = 0; down_down = 0; scr_input_hold_direction_forwards();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_DAIR:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_UAIR:
	up_down = 1; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_BAIR:
	up_down = 0; down_down = 0; scr_input_hold_direction_backwards();
	
	if (!free) { jump_down = true; jump_pressed = true; scr_input_hold_direction_away_from_target(); epinel_ai_buffer_hold_jump = max(epinel_ai_buffer_hold_jump, 2); }
	else {  attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
		jump_down = (!free || (y <= ai_target.y - ai_target.char_height)); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); 
	} break;
case AT_TAUNT:
taunt_down = true; break;
} //end switch
return;