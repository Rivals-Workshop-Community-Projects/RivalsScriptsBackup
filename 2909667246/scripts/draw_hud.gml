if ("bells" not in self) exit;

draw_set_alpha(1)
shader_start();

if(instance_exists(Pocketed_Projectile)){
	draw_sprite_ext(pocket_hud_slot, 0, temp_x + 170, temp_y - 22,2,2,0,c_white,1);
	shader_end();
	with(Pocketed_Projectile.player_id){
		shader_start();
	}
	draw_sprite_ext(pocket_projectile_hud_sprite, pocket_projectile_hud_sprite_imageindex, temp_x + 170, temp_y - 22,2,2,0,c_white,1);
	shader_end();
}

shader_start();
var frame = round(uspec_fuel/30);frame = min(frame,9);frame = max(frame,0);
draw_sprite_ext(uspec_fuel_hud, frame, temp_x + 134, temp_y - 24,2,2,0,c_white,1);

shader_end();

if(sol)draw_sprite_ext(silky_icon, 0, temp_x + 218, temp_y + 34,2,2,0,c_white,1);

muno_event_type = 5;
user_event(14);