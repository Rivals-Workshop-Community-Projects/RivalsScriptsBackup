// draw_hud will draw things on the hud.
shader_start();
draw_sprite_stretched(spr_gauge_bar,0,temp_x+50,temp_y-12,(meter/metermax)*max_bar_width,6);
draw_sprite_ext(spr_gauge,sub_gauge,temp_x+194,temp_y+12,1,1,0,-1,1);
shader_end();
//draw_sprite_ext(spr_gauge_bar,0,temp_x+50,temp_y-14,72,1,0,-1,1);
