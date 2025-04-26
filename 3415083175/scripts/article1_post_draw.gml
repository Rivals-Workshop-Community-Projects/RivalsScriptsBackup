//article1_post_draw

var player_col = get_player_hud_color(player_id.player)

//lightning strike
if lightning_timer > 0 { 
    //draw_sprite_ext(sprite_get("cloud_lightning_front"), lightning_image_index, x, y, 1, 1, 0, c_white, 1)
    if lightning_image_index >= 1 && lightning_image_index <= 4 {
        draw_sprite_ext(sprite_get("cloud_idle_flashed"), image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 2 - lightning_timer/6)
    }
    draw_sprite_general(sprite_get("cloud_lightning_front"), lightning_image_index, 0, 0, 256, lightning_draw_length/2, x - 128*dcos(lightning_angle), cloud_y + 128*dsin(lightning_angle), 2, 2, lightning_angle, c_white,c_white,c_white,c_white, lightning_image_index == 0 ? 0.5 : 1)
}

var drawx = x;
var drawy = cloud_y;

//indicator draw
if state != 9 && state != 0 {
	draw_indicator(0);
}


#define draw_indicator(angle)
var drawx = x;
var drawy = cloud_y + 20;

var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;
if (x < view_get_xview() - 10) {
    offX = view_get_xview() + 35;
    if (drawy > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = -90;
    } else if (drawy < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = drawy;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > view_get_xview() + view_get_wview() + 10) {
    offX = view_get_xview() + view_get_wview() - 35;
    if (drawy > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = 0;
    } else if (drawy < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = drawy;
        offIndex = 0;
        offRot = 90;
    }
} else if (drawy > view_get_yview() + view_get_hview() + 0) {
    offX = x;
    offY = view_get_yview() + view_get_hview() - 85;
    offIndex = 0;
    offRot = 0;
} else if (drawy < view_get_yview() + 10) {
    offX = x;
    offY = view_get_yview() + 35;
    offIndex = 0;
    offRot = 180;
}

if (offX != undefined) {
	draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 2, 2, offRot, get_player_hud_color(player), 1);
	draw_sprite_ext(sprite_get("article_offscreen"), 0, offX, offY, 2, 2, 0, c_white, 1);
}

#define onscreen(x, y)
var offset = 50;
if (x > view_get_xview() - offset) && (x < view_get_xview() + view_get_wview() + offset) && (y < view_get_yview() + view_get_hview() + offset) && (y > view_get_yview() - offset) {
	return true;
} else {
	return false;
}