//article1_post_draw.gml
/*draw_debug_text(x, y - 20, "state: " + string(state));
draw_debug_text(x, y, string(hitbox_y));
draw_debug_text(x, y + 20, "generate_spr_name: " + generate_spr_name)


if (state >= 9 && hitbox_sprite_index != noone) {
//if (state >= 9 && spr_neutral != noone) {
    draw_sprite_ext(hitbox_sprite_index, hitbox_image_index, hitbox_x, hitbox_y, 2, 2, 0, c_white, 1);
    
    //draw_sprite(spr_neutral, hitbox_image_index, hitbox_x, hitbox_y);
}
*/



if (state >= 21) {
    var double_spr_dir = spr_dir * 2;
    for (var i = 0; i < 3; i++) {
        draw_sprite_ext(roller_spr, i, roller_segment_draw_x[i], roller_segment_draw_y[i], double_spr_dir, 2, 0, c_white, roller_visible);
    }
    draw_sprite_ext(roller_avery_spr, roller_avery_image_index, hitbox_x, hitbox_y, double_spr_dir, 2, 0, c_white, 1);
    draw_sprite_ext(roller_spr, 3, roller_segment_draw_x[3], roller_segment_draw_y[3], double_spr_dir, 2, 0, c_white, roller_visible);
    //draw_debug_text(x, y, string(roller_avery_image_index));
}
else if (state == 20 && state_timer > 0) {
    var double_spr_dir = spr_dir * 2;
    draw_sprite_ext(roller_spr, 4, hitbox_x, hitbox_y, double_spr_dir, 2, 0, c_white, 1);
    draw_sprite_ext(roller_avery_spr, roller_avery_image_index, hitbox_x, hitbox_y, double_spr_dir, 2, 0, c_white, 1);
}
else if (state >= 9 && hitbox_sprite_index != noone) {
    draw_sprite_ext(hitbox_sprite_index, hitbox_image_index, hitbox_x, hitbox_y, 2, 2, 0, c_white, 1);
}

if (state >= 3 && state <= 8) {
    draw_sprite_ext(spr_pillar, 0, x, y, power_level * 2, 1000, 0, player_id.peacock_main_color, 0.1);
}