
draw_sprite(sprite_get("hud_2"), 0, temp_x + -20 + (hatch_amount/16), temp_y + -60);	
draw_sprite(sprite_get("hud"), 0, temp_x + -6, temp_y + -52);	
draw_debug_text(temp_x + 0, temp_y - 12, string(3000 - hatch_amount));
if(hatch_amount >= 3000){
   draw_sprite(sprite_get("special_ready"), 0, temp_x + 194, temp_y + -80);	 
   draw_sprite(sprite_get("hud_3"), 0, temp_x + 70, temp_y + -40);	 
}
if(charm_timer > 0){
   draw_debug_text(temp_x + 40, temp_y - 12, string("x2!!!")); 
}
if (eggdog_skin == true){
	    draw_sprite(sprite_get("eggdog_face"), 0, temp_x + 46, temp_y+20);
}
/* debug
draw_debug_text(temp_x + 200, temp_y - 32, string(enemy_knockback));
draw_debug_text(temp_x + 200, temp_y - 52, string(enemy_knockback_scaling));
draw_debug_text(temp_x + 200, temp_y - 72, string(enemy_damage));
draw_debug_text(temp_x + 160, temp_y - 72, string(counter_drop));
*/
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);