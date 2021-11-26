with (player_id) shader_end();

if (poison_seed = 0){
draw_set_alpha(radius_view_timer - 0.6);
draw_circle_color( x, y , effect_radius, 4188323,4188323,false)
draw_set_alpha(1);

draw_set_alpha(radius_view_timer);
gpu_set_blendmode(bm_add);
draw_circle_color( x, y , effect_radius + 30, 52858 ,c_black,false);
gpu_set_blendmode(bm_normal);
draw_circle_color( x, y , effect_radius , 4188323 , 4188323 ,true);
draw_circle_color( x, y , effect_radius - 1 , 4188323 , 4188323 ,true);
draw_circle_color( x, y , effect_radius - 2, 4188323 , 4188323 ,true);
draw_circle_color( x, y , effect_radius - 3 , 4188323 , 4188323 ,true);
draw_set_alpha(1);
}


if (poison_seed = 1){
draw_set_alpha(radius_view_timer - 0.4);
draw_circle_color( x, y , effect_radius, 11285130,11285130,false)
draw_circle_color( x, y , effect_radius, 8199498 ,c_black,false);
draw_set_alpha(1);

draw_set_alpha(radius_view_timer);
gpu_set_blendmode(bm_add);
draw_circle_color( x, y , effect_radius + 30, 11285130 ,c_black,false);
gpu_set_blendmode(bm_normal);
draw_circle_color( x, y , effect_radius , 11285130 , 11285130 ,true);
draw_circle_color( x, y , effect_radius - 1 , 11285130 , 11285130 ,true);
draw_circle_color( x, y , effect_radius - 2, 11285130 , 11285130 ,true);
draw_circle_color( x, y , effect_radius - 3 , 11285130 , 11285130 ,true);
draw_set_alpha(1);
}

with (player_id) shader_start();