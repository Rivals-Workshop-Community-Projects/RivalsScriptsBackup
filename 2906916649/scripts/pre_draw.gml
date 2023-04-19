shader_start();


var col_final = make_color_rgb(get_color_profile_slot_r( get_player_color(player), 1), get_color_profile_slot_g( get_player_color(player), 1), get_color_profile_slot_b( get_player_color(player), 1));

if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || state == PS_CROUCH) && (attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_NSPECIAL || state == PS_CROUCH)){
	if((window >= 2 && window <= 3)|| state_timer >= 2){
		if(InkTank <= MaxInkTank && InkTank > MinInkTank){
			rectDraw(x - 47 * spr_dir, y-24, 16 * spr_dir, -21*min(1, shown_meter_var/MaxInkTank), col_final);
			draw_sprite_ext(sprite_get("ink_tank"), 0, x - 50 * spr_dir , y - 60, 2 * spr_dir, 2, 0, c_white, 1 )
		} else {
			draw_sprite_ext(sprite_get("ink_tank"), 1, x - 50 * spr_dir , y - 60, 2 * spr_dir, 2, 0, c_white, 1 )
		}
	}
}

   
shader_end();




#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);

