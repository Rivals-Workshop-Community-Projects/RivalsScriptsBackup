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
