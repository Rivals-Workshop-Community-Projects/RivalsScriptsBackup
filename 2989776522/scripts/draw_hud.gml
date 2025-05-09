// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

shader_start();

draw_sprite_ext(nspec_meter, 1, temp_x + 50, temp_y + 2, 2, 2, 0, c_white, 1);
var length = (nspecial_charge*0.01/2);length = min(length,2);
draw_sprite_ext(nspec_meter, nspecial_meter_hud, temp_x + 50, temp_y + 2, length, 2, 0, c_white, 1);
draw_sprite_ext(nspec_meter, 0, temp_x + 50, temp_y + 2, 2, 2, 0, c_white, 1);
if(nspecial_charge >= 400)draw_sprite_ext(nspec_meter, 5, temp_x + 50, temp_y + 2, 2, 2, 0, c_white, ease_sineInOut(0,1,get_gameplay_time(),20));

if(instance_exists(the_eggpawn) || eggpawn_cooldown > 0){
	draw_sprite_ext(eggpawn_icon_spr, eggpawn_icon, temp_x + 130, temp_y - 34, 2, 2, 0, c_black, 0.3);
}else{
	draw_sprite_ext(eggpawn_icon_spr, eggpawn_icon, temp_x + 130, temp_y - 34, 2, 2, 0, c_white, 1);
}
if(instance_exists(the_eggpawn2) || eggpawn_cooldown2 > 0){
	draw_sprite_ext(eggpawn_icon_spr, eggpawn_icon, temp_x + 166, temp_y - 34, 2, 2, 0, c_black, 0.3);
}else{
	draw_sprite_ext(eggpawn_icon_spr, eggpawn_icon, temp_x + 166, temp_y - 34, 2, 2, 0, c_white, 1);
}

if(!inside_mech){
	if(!can_summon_mech){
		draw_sprite_ext(eggmobile_icon_spr, 0, temp_x - 6, temp_y - 34, 2, 2, 0, c_black, 0.3);
	}else{
		draw_sprite_ext(eggmobile_icon_spr, 0, temp_x - 6, temp_y - 34, 2, 2, 0, c_white, 1);
	}
}

shader_end();

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);