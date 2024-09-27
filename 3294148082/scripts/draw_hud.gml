//draw_hud.gml

//draw_debug_text(temp_x,temp_y-20,string(clonetimer))
draw_sprite_ext(sprite_get("hudmeterbg"),0,temp_x+11,temp_y-8,91,1,0,c_white,1)

draw_sprite_ext(sprite_get("hudmeterfg"),0,temp_x+11,temp_y-8,(clamp(clonetimer,0,maxclonetimer)/maxclonetimer)*(91),1,0,c_white,1)
draw_sprite(sprite_get("hudmeter1"),0,temp_x+10,temp_y-34)
shader_start();
draw_sprite(sprite_get("hudface"),0,temp_x+10,temp_y-34)
if clonetimer >= maxclonetimer {
draw_sprite(sprite_get("hudface"),0,temp_x+10,temp_y-34)
    
} else {
draw_sprite(sprite_get("hudfacegray"),0,temp_x+10,temp_y-34)
}


shader_end();