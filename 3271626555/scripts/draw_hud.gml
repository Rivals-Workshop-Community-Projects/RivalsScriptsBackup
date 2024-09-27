//
//draw_sprite_ext(sprite_get("hud_meter_small"), stamina_cooldown, temp_x+3, temp_y-2, 3, 3, 0, c_white, 1);
//draw_sprite_ext(sprite_get("hud_meter_small2"), stamina, temp_x+3, temp_y-2, 3, 3, 0, c_white, 1);

draw_sprite_ext(sprite_get("hud_meter_back"), 0, temp_x+4, temp_y-22, 2, 2, 0, c_white, 1);
draw_sprite_part_ext(sprite_get("hud_meter_yellow"), 0, 0, 0, 2 + 96 - stamina_cooldown*3.2, 12, temp_x+4, temp_y-22, 2, 2, c_white, 1);
draw_sprite_part_ext(sprite_get("hud_meter_green"), 0, 0, 0, 2 + 96 - stamina*3.2, 12, temp_x+4, temp_y-22, 2, 2, c_white, 1);
draw_sprite_ext(sprite_get("hud_meter_front"), 0, temp_x+4, temp_y-22, 2, 2, 0, c_white, 1);

/* HUD STAMINA FORMULA
In the "draw_sprite_part_ext" funcs, the amount of stamina shown is
calculated through a formula in the "width" argument.
Here's how it works:

2 + 96 - stamina * 3.2
or
(First pixels of the sprite that aren't actually the stamina itself)
+
(Pixels of meter in the sprite)
-
(stamina variable used for HUD elenemnt)
*
(How much multiplication it takes to equal the meter pixels from the maximum stamina amount)
*/

//draw_debug_text(temp_x, temp_y-60, `enemy_hitbox_out: ${enemy_hitbox_out}`);
//draw_debug_text(temp_x, temp_y-40, `image_index: ${image_index}`);

if (state == PS_SPAWN) {
	if (indicator == true) {
		draw_debug_text(temp_x, temp_y-60, "Press PARRY to disable the");
		draw_debug_text(temp_x, temp_y-40, "Stamina Indicator");
	} else {
		draw_debug_text(temp_x, temp_y-40, "Stamina Indicator Turned Off!");		
	}
}