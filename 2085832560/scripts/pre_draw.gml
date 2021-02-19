//pre_draw.gml
shader_start();

if move_cooldown[AT_FSPECIAL] > 0 {
	
     draw_sprite(sprite_get("nobike"), (90 - move_cooldown[AT_FSPECIAL]) / 9, x , y + 20  );


}

if move_cooldown[AT_UTILT] > 0 {
	
     draw_sprite(sprite_get("nobike"), (120 - move_cooldown[AT_UTILT]) / 12, x , y + 20  );


}

shader_end();



///Dash 
