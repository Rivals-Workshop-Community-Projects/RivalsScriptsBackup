if ("excitement" in self && !tab_is_dummy){


var exct_percent = (excitement/100);

switch (get_player_color(player)){

case 7:
draw_sprite_ext(sprite_get("nero_hud_base"), excited, temp_x, temp_y, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("nero_hud_bullets"), ammo, temp_x, temp_y, 2, 2, 0, c_white, 1);

if (!exct_has_healed)
draw_sprite_ext(sprite_get("nero_hud_healing"), 0, temp_x, temp_y, 2, 2, 0, c_white, 1);

for (j = 0; j < 10; j++){

        var meter_alpha = clamp((excitement - j*10)/10, 0.2, 1);



        
        
if (j < 5){
        if (excitement > j * 10){
        draw_sprite_ext(sprite_get("nero_hud_meter"), 0, (temp_x + 22) + (14*j), temp_y-6, 2, 2, 0, c_white, meter_alpha );
        }
}
else if (j < 10){
        if (excitement > j * 10){
        draw_sprite_ext(sprite_get("nero_hud_meter_exct"), 0, (temp_x + 92) + (18*(j - 5)), temp_y-6, 2, 2, 0, c_white, meter_alpha );
        }
}

gpu_set_blendmode(bm_normal);



}







if (get_training_cpu_action() != CPU_FIGHT)
draw_debug_text( temp_x + 30, temp_y-64, "TAUNT for Move list");

break;

case 8:
shader_start();
draw_sprite_ext(sprite_get("happybase"), excited, temp_x - 20, temp_y, 2, 2, 0, c_white, 1);
shader_end();

        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_set_alpha(0);
        draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
        // draw_sprite_ext(sprite_get("hud_meter_mask"), 0, temp_x+16, temp_y - 6, (2 * (excitement/100)), 2, 0, c_white, 1);

        draw_rectangle_color(temp_x+12,temp_y-10, temp_x+12 + (189 * exct_percent),temp_y - 22, c_black, c_black, c_black, c_black, false);

        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);


        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        if (excited)
        shader_start();
        draw_sprite_ext(sprite_get("happymeter"), 0, temp_x+14, temp_y-12, 2, 2, 0, c_white, 1);
        shader_end();
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);


draw_sprite_ext(sprite_get("happybullets"), ammo, temp_x - 20, temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("happyheal"), !exct_has_healed, temp_x - 20, temp_y, 2, 2, 0, c_white, 1);

break;



default:

if (excited)
shader_start();
draw_sprite_ext(sprite_get("hud_backplate"), excited, temp_x, temp_y, 2, 2, 0, c_white, 1);
shader_end();


draw_sprite_ext(sprite_get("hud_backplate2"), 0, temp_x, temp_y, 2, 2, 0, c_white, 1);


shader_start();
draw_sprite_ext(sprite_get("hud_bullets"), ammo, temp_x, temp_y, 2, 2, 0, c_white, 1);
shader_end();


        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_set_alpha(0);
        draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
        draw_sprite_ext(sprite_get("hud_meter_mask"), 0, temp_x+16, temp_y - 6, (2 * exct_percent), 2, 0, c_white, 1);
        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);


        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);

        if (excited)
        shader_start();
        draw_sprite_ext(sprite_get("hud_meter"), 0, temp_x, temp_y, 2, 2, 0, c_white, 1);
        shader_end();
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);



draw_sprite_ext(sprite_get("hud_base"), 0, temp_x, temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_healing"), !exct_has_healed, temp_x, temp_y, 2, 2, 0, c_white, 1);

if (get_training_cpu_action() != CPU_FIGHT)
draw_debug_text( temp_x + 30, temp_y-60, "TAUNT for Move list");

break;

}

if (fps < 59)
draw_debug_text(2,2, "FPS!!(" + string(fps) + ")");

}



