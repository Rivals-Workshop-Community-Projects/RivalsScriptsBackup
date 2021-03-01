//update
timer++;

//check hitbox view
hitbox_view = get_match_setting(SET_HITBOX_VIS);

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 8 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(255, 0, 0);
	var color_rgb2=make_color_rgb(181, 0, 0);
	var color_rgb3=make_color_rgb(255, 112, 112);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),2,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	
	set_article_color_slot(0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(1,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_article_color_slot(2,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	//set the new color using rgb values from the gamemaker color
}
init_shader();


move_cooldown[AT_FSPECIAL] = 60;
move_cooldown[AT_DSPECIAL] = 60;
if move_cooldown[AT_NSPECIAL] <= 1 {
	move_cooldown[AT_NSPECIAL] = 2;
}

if !free || state == PS_WALL_JUMP {
    move_cooldown[AT_USPECIAL] = 0;
    uspec_move_num = 0;
}

if next_state != undefined {
	state = next_state;
	state_timer = 0;
	next_state = undefined
}

if state != PS_PRATLAND && state != PS_PRATFALL && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2) {
	prat_land_time = 16;
}

hurtbox_spr = sprite_get(piece + "hurtbox")

if !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2) && !(piece_id != undefined && instance_exists(piece_id) && piece_id.perform_attack == true && piece_id.piece == "B") {
	sound_stop(sound_get("rune_search_start"))
}

if shake_timer > 0 {
    shake_timer--;
}
pawn_move_timer++

switch piece {
    case "P":
    break;
    
    case "N":
    knockback_adj = 1.05;
    char_height = 50;
    max_djumps = 2;
    jump_speed = 11;
    djump_speed = 9;
    short_hop_speed = 7;
    dash_stop_percent = 0.6;
    dash_turn_accel = 1.1;
    ground_friction = 0.16;
    dash_speed = 5;
    initial_dash_speed = 5.5;
    wave_friction = 0.1;
    break;
    
    case "R":
    knockback_adj = 0.95;
    char_height = 45;
    jump_speed = 8;
    djump_speed = 8;
    short_hop_speed = 5;
    ground_friction = 0.8;
    walk_speed = 11;
    walk_accel = 0.3;
    dash_speed = 7.5;
    initial_dash_speed = 8.5;
    dash_turn_time = 6;
    initial_dash_speed = 10;
    leave_ground_max = 7;
    max_jump_hsp = 7;
    air_max_speed = 5;
    air_accel = 0.3;
    air_friction = 0.1;
    break;
    
    case "B":
    knockback_adj = 1.00;
    char_height = 55;
    walk_speed = 4;
    dash_speed = 6;
    initial_dash_speed = 7.5;
    air_dodge_speed = 10;
    techroll_speed = 11;
    roll_forward_max = 11;
    roll_backward_max = 11;
    break;
    
    case "Q":
    knockback_adj = 0.95;
    char_height = 70;
    dash_speed = 7;
    initial_dash_speed = 8;
    air_accel = 0.45;
    jump_speed = 11;
	short_hop_speed = 6;
	djump_speed = 11;
    break;
    
    case "K":
    knockback_adj = 0.90;
    char_height = 75;
    walk_speed = 2;
    dash_speed = 4;
    initial_dash_speed = 4.25;
    air_max_speed = 4;
    break;
}

if !hitpause {
    for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
        if uspec_afterimages[i,2] > 0 {
            uspec_afterimages[i,2]--;
        }
    }
}

if king_armour {
	//disable dash/shield
	can_shield = false;
	has_airdodge = false;
	super_armor = true;
	djumps = 1;
	walk_speed = 1;
	dash_speed = 2;
	initial_dash_speed = 2.5
	air_max_speed = 3;
	
	armour_timer++;
	
	if armour_timer >= 120 {
		king_armour = false;
		armour_timer = 0;
		user_event(0)
		char_height = 75;
	    walk_speed = 2;
	    dash_speed = 4;
	    initial_dash_speed = 4.25;
	    air_max_speed = 4;
	    armour_cooldown = 120;
	    exit;
	}
	
	switch (state) {
		case PS_PARRY_START:
		set_state(prev_state)
		super_armor = true;
		can_shield = false;
		break;
		default: break;
    }
}
if armour_cooldown > 0 {
	armour_cooldown--;
}

if queen_active && piece == "Q" {
	if queen_timer > 0 && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2) {
		queen_timer--;
	} else if queen_timer == 0 {
		queen_active = false;
        pawn_meter = 0;
	}
}
/*
if queen_active {
	if !(piece_id != undefined && piece_id.piece == "Q") {
		var hue_timer = abs(dsin(timer*3));
		var hue_r = hue_timer*194
		var hue_g = hue_timer*119
		var hue_b = 0
		outline_color = [hue_r, hue_g, hue_b]
		init_shader();
	} else {
		outline_color = [hue_r, hue_g, hue_b]
		init_shader();
	}
}
*/

var Qstates = [PS_IDLE, PS_IDLE_AIR, PS_JUMPSQUAT, PS_FIRST_JUMP, PS_DOUBLE_JUMP, PS_WALL_JUMP, PS_WALK, PS_WALK_TURN, PS_DASH_START, PS_DASH, PS_DASH_STOP, PS_DASH_TURN, PS_CROUCH]
var returntopawn = false;
for (var i = 0; i < array_length(Qstates); i++) {
	if state == Qstates[i] && piece == "Q" && queen_timer <= 0 {
		returntopawn = true;
	}
}

if returntopawn {
	if free set_state(PS_ATTACK_AIR)
	else set_state(PS_ATTACK_GROUND)
	state_timer = 0;
	window = 3;
	window_timer = 20;
	attack = AT_FSPECIAL_2;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && special_pressed && !up_down && !left_down && !right_down {
	if special_counter == 1 && down_down {
        if piece_id != undefined && instance_exists(piece_id) && !piece_id.perform_attack {
            piece_id.perform_attack = true;
            piece_id.attack_timer = 0;
            piece_id.window_timer = 0;
        }
    }
    if special_counter == 1 && piece_id != undefined && instance_exists(piece_id) {
        piece_id.progress_attack = true;
    }
}

//compatibility
//user_event(9)

//chess ai
//user_event(1);

/*
with oPlayer {
	if id != other.id {
		if attack_down other.attack_down = true;
		if left_down other.left_down = true;
		if right_down other.right_down = true;
		if up_down other.up_down = true;
		if down_down other.down_down = true;
	}
}
*/

//TRAILER STUFF, DELETE LATER
/*
move_cooldown[AT_JAB] = 60;
with oPlayer {
	if id != other.id {
		var rate = 6;
		var spr = asset_get("empty_sprite")
		switch other.trailer_phase {
			case 0: break;
			case 1: other.trailer_frame = 0; other.trailer_x = x - 46; other.trailer_y = y - 118; visible = false; break;
			case 2: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 2)+1) break;
			case 3: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 1)+4) break;
			case 4: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 3)+6) break;
			case 5: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 1)+10) break;
			case 6: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 1)+12) break;
			case 7: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 2)+14) break;
			case 8: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 2)+17) break;
			case 9: other.trailer_frame = 20; break;
			case 10: other.trailer_frame = 21; break;
			case 11: other.trailer_frame = floor(clamp(other.trailer_timer/rate, 0, 1)+22) break;
			case 12: other.trailer_frame = 24; break;
			case 13: other.trailer_frame = 25; visible = true break;
		}
		if state == PS_RESPAWN && other.trailer_phase > 12 {
			visible = false
			other.trailer_dead = true;
		}
		if other.trailer_dead {
			visible = false;
			x = room_width/2;
			y = room_height/2 - 100;
		}
		other.trailer_timer++;
	}
}
*/