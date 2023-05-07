if ("bells" not in self) exit;

draw_set_alpha(1)
shader_start();

if(instance_exists(Pocketed_Projectile)){
	if(alt == 31){
		draw_sprite_ext(sprite_get("nspecial_pocket_hud_mc"), 0, temp_x + 170, temp_y - 22,2,2,0,c_white,1);
	}else{
		draw_sprite_ext(sprite_get("nspecial_pocket_hud"), 0, temp_x + 170, temp_y - 22,2,2,0,c_white,1);
	}
	shader_end();
	//if(Pocketed_Projectile.player_id != self){
		with(Pocketed_Projectile.player_id){
			shader_start();
		}
	/*}else{
		shader_start();
	}*/
	draw_sprite_ext(pocket_projectile_hud_sprite, pocket_projectile_hud_sprite_imageindex, temp_x + 170, temp_y - 22,2,2,0,c_white,1);
	shader_end();
}

shader_start();
var frame = round(uspec_fuel/30);frame = min(frame,9);frame = max(frame,0);
draw_sprite_ext(sprite_get("uspecial_fuel"), frame, temp_x + 134, temp_y - 24,2,2,0,c_white,1);
//draw_debug_text(temp_x + 105, temp_y - 6, string(uspec_fuel));

/*draw_sprite(sprite_get("bells_coin"), 0, temp_x + 170, temp_y - 2);
draw_debug_text(temp_x + 185, temp_y - 6, string(bells));*/

shader_end();

if(sol){
    draw_sprite_ext(sprite_get("icon_gip"), 0, temp_x + 218, temp_y + 34,2,2,0,c_white,1);
}

muno_event_type = 5;
	user_event(14);