if(spark_timer > 0){
    spark_timer--;
    var spark_effect = (5 - spark_timer % 10) / 10;
    gpu_set_fog(true, c_teal, true, false);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x, y + 2 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x, y - 2 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x + 4, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    draw_sprite_ext(sprite_index, image_index, x, y + 4 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    draw_sprite_ext(sprite_index, image_index, x - 4, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    draw_sprite_ext(sprite_index, image_index, x, y - 4 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    gpu_set_fog(true, c_teal, false, true);
}
gpu_set_fog(false, c_teal, false, false);

if(state == PS_ATTACK_GROUND && attack == AT_DATTACK){
    draw_sprite_ext(sprite_index, image_index, x - spr_distance * spr_dir, y + draw_y, 2 * spr_dir, 2, 0, c_white, 0.6);
    draw_sprite_ext(sprite_index, image_index, x - spr_distance * spr_dir * 2, y + draw_y, 2 * spr_dir, 2, 0, c_white, 0.3);
}