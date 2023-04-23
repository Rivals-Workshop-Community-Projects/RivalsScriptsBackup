// if attack == AT_NSPECIAL{
//     var closest_distance = 999999;
//     closest_player = noone;
//     with oPlayer{
//         if self != other.player_id && point_distance(x, y, other.x, other.y) < closest_distance{
//             closest_distance = point_distance(x, y, other.x, other.y);
//             other.closest_player = self;
//         }
//     }
//     if closest_player != noone{
//         bullet_angle = point_direction(x, y, closest_player.x, closest_player.y - (closest_player.char_height / 2));
//         var max_speed = 5;
//         hsp = lengthdir_x(max_speed, bullet_angle);
// 	    vsp = lengthdir_y(max_speed, bullet_angle);
//     }
// }

if attack == AT_NSPECIAL{
	//ID of closest player
	target_id = noone;
	
	//Whether to home or not.
	homing_state = PS_IDLE;
	
	//after # frames, start homing
	homing_trigger = 4; 
	
	//How many frames to home for
	homing_duration = 160;
	
	//Speed of the pellet
	max_speed = 7;
	
	//If the difference between the current vertical speed and the desired
	//homing speed if more than this, it will cap it at this.
	tracking_cap = 4;
	
	// Owning Player
	get_pID = player_id;
	
	//Intensity of tracking.
	tracking_intensity = has_rune("H")? 0.15:0.05;
	
	//Move forward
	hsp = max_speed * spr_dir;
}

particles = [];

if attack == AT_FSPECIAL && hbox_num == 5{
	can_hit = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
}