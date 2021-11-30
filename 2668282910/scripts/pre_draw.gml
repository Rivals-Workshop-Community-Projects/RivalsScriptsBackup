//

//Draws the Plat sprite
if (state == PS_RESPAWN){
    draw_sprite_ext(sprite_get("plat_behind"), state_timer/2, x, y, 2, 2, 0, c_white, 1);
}

shader_start();

if (draw1 > 0){
	draw_sprite_ext(trail_effect, draw1_index, draw1_x, draw1_y, spr_dir, 1, 1, c_white, draw1);
}
if (draw2 > 0){
	draw_sprite_ext(trail_effect, draw2_index, draw2_x, draw2_y, spr_dir, 1, 1, c_white, draw2);
}
if (draw3 > 0){
	draw_sprite_ext(trail_effect, draw3_index, draw3_x, draw3_y, spr_dir, 1, 1, c_white, draw3);
}
if (draw4 > 0){
	draw_sprite_ext(trail_effect, draw4_index, draw4_x, draw4_y, spr_dir, 1, 1, c_white, draw4);
}
if (draw5 > 0){
	draw_sprite_ext(trail_effect, draw5_index, draw5_x, draw5_y, spr_dir, 1, 1, c_white, draw5);
}


if (infinite_ex == false){

if (ex_cooldown > 10){
    draw_sprite_ext(sprite_get("indicator"), ex_cooldown/30, x+35*spr_dir, y-70, 2, 2, 0, c_white, .5);
}

if (ex_cooldown > 0 && ex_cooldown <= 10){
    draw_sprite_ext(sprite_get("indicator"), 5, x+35*spr_dir, y-70, 2, 2, 0, c_white, .5);
}

}


shader_end();
