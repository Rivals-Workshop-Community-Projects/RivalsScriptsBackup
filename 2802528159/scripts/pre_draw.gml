if(stored_spark == true){
    if(spark_shader < 1){
        spark_shader += 0.04;
    }else{
        spark_shader = -1;
    }
    gpu_set_fog(true, c_purple, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x, y + 2, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x, y - 2, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x - 2, y, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1);
    draw_sprite_ext(sprite_index, image_index, x + 4, y + 4, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x + 4, y, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x + 4, y - 4, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x, y + 4, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x, y - 4, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x - 4, y + 4, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x - 4, y, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    draw_sprite_ext(sprite_index, image_index, x - 4, y - 4, 2 * spr_dir, 2, spr_angle, c_purple, abs(spark_shader) + 0.1 - 0.5);
    gpu_set_fog(false, c_purple, 0, 1);
}else{
    gpu_set_fog(false, c_purple, 0, 1);
}

shader_start();
if(anger_state == 2){
    radar_alpha += (radar_alpha < 0.5? 0.05: 0);
}else{
    radar_alpha -= (radar_alpha > 0? 0.05: 0);
}

if(state != PS_RESPAWN){
	draw_sprite_ext(sprite_get("radar_sphere"), 0, radar_posx, radar_posy, 2, 2, 0, c_white, radar_alpha - (state_timer % 2) / 12);
}
shader_end();