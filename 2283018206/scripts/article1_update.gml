var target_alpha = 0.6;

switch(state){
	case -1:
		instance_destroy();
		exit;
		break;
	case 0: //Spawning (from bike)
		if (state_timer == 0){
			hsp = player_id.hsp;
			vsp = player_id.vsp;
			x = round(x);
			y = round(y);
		}
		sprite_index = player_id.spr_ball_compress;
		var s_t_max = image_number * 5;
		image_index = lerp(0, image_number, state_timer / (s_t_max + 1));
		if (state_timer == s_t_max){
			setState(1);
			image_index = image_number - 1;
			// sound_play(asset_get("sfx_absa_cloud_place"))
		}
		target_alpha = 1;
		hsp *= 0.9;
		vsp *= 0.9;
		break;
	case 1: //Idle
		sprite_index = player_id.spr_ball_idle[1];
		followPlayer();
		break;
	case 2: //Despawning
		spr_dir = player_id.spr_dir;
		sprite_index = player_id.spr_ball_compress;
		var s_t_max = (image_number - 2) * 3 + 5;
		image_index = ceil(lerp(image_number - 2, -1, state_timer / s_t_max + 1));
		if (state_timer >= s_t_max){
			player_id.bike_vfx_time = player_id.bike_vfx_time_max;
			sound_play(asset_get("mfx_star"));
			instance_destroy();
			exit;
		}
		if player_id.bike{
			x = lerp(x, player_id.x, 0.2);
			y = lerp(y, player_id.y - 16, 0.2);
		}
		target_alpha = 1;
		break;
	case 3: //Spawning (from thin air)
		sprite_index = player_id.spr_ball_expand;
		var s_t_max = image_number * 5;
		image_index = ceil(lerp(image_number - 1, -1, state_timer / s_t_max + 1));
		if (state_timer >= s_t_max){
			setState(1);
			image_index = 0;
		}
		followPlayer();
		break;
	case 4: //NSpecial animation
		sprite_index = player_id.spr_ball_idle[player_id.nspecial_spin + 1];
		x = lerp(x, player_id.x + 64 * player_id.spr_dir, 0.3);
		y = lerp(y, player_id.y - 28 + player_id.nspecial_spin * 20 * 0 + player_id.vsp, 0.6);
		// y += (player_id.nspecial_charge % 8 < 4) * 8 - 4;
		depth = player_id.depth - 1;
		target_alpha = 1;
		if !(player_id.phone_attacking && player_id.attack == AT_NSPECIAL){
			setState(1);
		}
		break;
}



image_alpha = lerp(image_alpha, target_alpha, 0.25);

ignores_walls = state != 0;



state_timer++;



#define followPlayer

var x_off = -32;
var y_off = -64;
var target_x = round(player_id.x + x_off * player_id.spr_dir);
var target_y = player_id.y + y_off;
var sin_thing = sin(state_timer / 15) * 2;
var amt = 0.2;

x = round(lerp(x, target_x, amt));
y = lerp(y, target_y, amt) + sin_thing;

if abs(x - target_x) < 1 x = target_x;
if abs(y - target_y + sin_thing) < 1 y = target_y + sin_thing;

x = round(x);

spr_dir = player_id.spr_dir;



#define setState(n_s)

state = n_s;
state_timer = 0;