//article1_post_draw.gml

//resets shader to the default colors (removes colormapping too)
with (player_id)
{
    shader_end();
    rainbow_ring_shader = false;
    user_event(15);
}

//temporary setup for when the ring is in the spawning state
if (!ring_is_useable && state != 2) draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, image_angle, c_black, 0.5);


//hitbox view lol
if (player_id.hbox_view) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, image_angle, c_white, 0.5);