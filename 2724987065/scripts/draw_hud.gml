// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

// gauge stuff
maskHeader();
draw_sprite(sprite_get("gauge_mask"), 0, temp_x+106, temp_y-30);
maskMidder();
draw_sprite_ext(sprite_get("gauge_bg"), 0, temp_x+26, temp_y-110, 1, 1, 0, $3E147F, 1);
draw_sprite_ext(sprite_get("gauge_texture"), 0, temp_x+106, temp_y-30, 1, 1, gauge_angle, c_white, 1);
draw_sprite_part_ext(sprite_get("gauge_bg"), 0, 0, 0, 160-round((4*d_gauge)/25), 160, temp_x+26 + (round((4*d_gauge)/25)), temp_y-110, 1, 1, $5A3730, 1);
maskFooter();
draw_sprite(sprite_get("gauge_outline"), 0, temp_x+106, temp_y-30);
if move_cooldown[AT_EXTRA_1] > 0 && d_gauge == 1000 {
    draw_sprite_part_ext(sprite_get("gauge_outline"), 1, 0, 0, round((160/600)*move_cooldown[AT_EXTRA_1]), 160, temp_x+26, temp_y-110, 1, 1, c_white, abs(cos(degtorad(gauge_angle%360))));
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);


// the mask stuff is literally from the munophone idk
#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);