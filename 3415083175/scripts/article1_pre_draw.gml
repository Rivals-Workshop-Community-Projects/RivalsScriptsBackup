//article1_pre_draw

var player_col = get_player_hud_color(player_id.player)

//lightning strike
if lightning_timer > 0 { 
    //draw_sprite_ext(sprite_get("cloud_lightning_back"), lightning_image_index, x, y, 1, 1, 0, c_white, 1)
    draw_sprite_general(sprite_get("cloud_lightning_back"), lightning_image_index, 0, 0, 256, lightning_draw_length/2, x - 128*dcos(lightning_angle), cloud_y + 128*dsin(lightning_angle), 2, 2, lightning_angle, c_white,c_white,c_white,c_white, lightning_image_index == 0 ? 0.5 : 1)
}

if state == 2 && state_timer > 1 {
    draw_sprite_general(sprite_get("cloud_static"), timer/4, 0, 0, 256, lightning_draw_length/2, x - 128*dcos(static_angle), cloud_y + 128*dsin(static_angle), 2, 2, static_angle, c_white,c_white,c_white,c_white, 1)
}

if sprite_index == sprite_get("cloud_idle") && player_id.in_ditto {
    draw_sprite_ext(sprite_get("cloud_idle_mask"), image_index, x, y+2, 2, 2, 0, player_col, 1)
}

//draw_rectangle_color(x - cloud_width/2, y, x + cloud_width/2, y - 204, c_white,c_white,c_black,c_black, false)