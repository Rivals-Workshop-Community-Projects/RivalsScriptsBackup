//thank you delta :)


//Sinusuiodal pulsing
var phase, position;
phase = (get_gameplay_time()/30) mod (2*pi);
position = abs(sin(300))*0.4 + 0.6;

//Blendmode
var blend = gpu_get_blendmode();
gpu_set_blendmode(bm_add);

//Draw the glow
if (slow && state == 1 && type == 0 || slow && type == 1) {
	var precision;
	precision = (position-0.5)*40;
	if(type == 0){
		draw_glow(x, y, 15+(position*30*glowmodifier), c_black, colorvar, 1, precision);
	}else if(type == 1 && state == 1){
		draw_glow(x, y, 25+(position*30*glowmodifier), c_black, colorvar, 1, precision);
	}else if(type == 1 && state == 0){
		draw_glow(x, y + 20, 25+(position*30*glowmodifier), c_black, colorvar, 1, precision);
	}
}

//Reset
gpu_set_blendmode(blend);

if(current_owner != player_id.player && state == 1 && type == 0){
	if(has_rune("F") || player_id.all_runes){
		draw_sprite_ext(sprite_get("bubbleBomb_cheese_outline"), image_index, x, y, 1.1 *spr_dir  * size, 1.1 * size, image_angle, get_player_hud_color(current_owner), 1)
	}else{
		draw_sprite_ext(sprite_get("bubbleBomb_outline"), image_index, x, y, 1.1 *spr_dir  * size, 1.1 * size, image_angle, get_player_hud_color(current_owner), 1)
	}
}else if(current_owner != player_id.player && type == 1){
	if(state == 0 || state == 2){
		if(big){
			if(strong){
				outline_index = sprite_get("sawblade_strong_ground_outline")
			}else{
				outline_index = sprite_get("sawblade_big_ground_outline")
			}
		}else{
			outline_index = sprite_get("sawblade_small_outline")
		}
	}else if(state == 1){
		if(big){
			if(strong){
				outline_index = sprite_get("sawblade_strong_air_outline")
			}else{
				outline_index = sprite_get("sawblade_big_air_outline")
			}
		}else{
			outline_index = sprite_get("sawblade_small_outline")
		}
	}
	draw_sprite_ext(outline_index, drawframe_index, x, y, 1.1 * spr_dir * size, 1.1 * size, draw_angle, get_player_hud_color(current_owner), 1)
}

//Draw Sprite without fucking up collision rotation
if(type == 1){
	draw_sprite_ext(draw_index, drawframe_index, x, y, spr_dir * size, 1 * size, draw_angle, c_white, 1)
}
#define draw_glow(cx, cy, r, col1, col2, alpha, precision)

draw_primitive_begin(pr_trianglefan);
draw_vertex_color(cx, cy, col1, alpha);
var incre = (2*pi) / abs(precision);

for (var i = 0; i <= 2*pi; i+=incre)
{
    var pos;
    pos = [cos(i)*sign(precision), sin(i)*sign(precision)];
    draw_vertex_color(cx + (pos[0]*r), cy - (pos[1]*r), col2, 0);
}
draw_vertex_color(cx+(r*sign(precision)), cy, col2, 0);
draw_primitive_end();
