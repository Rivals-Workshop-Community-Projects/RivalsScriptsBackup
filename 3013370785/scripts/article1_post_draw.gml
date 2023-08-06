//article1_post_draw.gml

var drawx = x;
var drawy = y;
/*
//indicator draw
if state == PS_IDLE || state == PS_SPAWN {
	draw_indicator(0);
}
*/
draw_sprite_index = sprite_index

//bomb prime
if item == 3 {
	draw_sprite_index = sprite_get("item_bomb")
	if timer > 0 draw_sprite_ext(draw_sprite_index, 1, x, y, spr_dir*image_xscale, image_yscale, fake_angle, c_white, 1)
	//if state == 0 draw_sprite_ext(mask_index, 0, x, y, spr_dir, 1, 0, c_white, 0.5)
	if state == 1 {
		draw_sprite_ext(draw_sprite_index, 2, x, y, spr_dir, 1, fake_angle, c_white, 1 - (state_timer/6) mod 2)
		draw_sprite_ext(draw_sprite_index, 3, x, y, spr_dir, 1, fake_angle, c_white, (state_timer - 30)/20)
	}
}

//recall stuff
script = 2
user_event(0)

#define draw_indicator(angle)
var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;
if (x < view_get_xview() - 10) {
    offX = view_get_xview() + 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = -90;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = y;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > view_get_xview() + view_get_wview() + 10) {
    offX = view_get_xview() + view_get_wview() - 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = 0;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = y;
        offIndex = 0;
        offRot = 90;
    }
} else if (y > view_get_yview() + view_get_hview() + 0) {
    offX = x;
    offY = view_get_yview() + view_get_hview() - 85;
    offIndex = 0;
    offRot = 0;
} else if (y < view_get_yview() + 10) {
    offX = x;
    offY = view_get_yview() + 35;
    offIndex = 0;
    offRot = 180;
}

if (offX != undefined) {
	draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(player), 1);
	draw_sprite_ext(sprite_get("article_offscreen"), 0, offX, offY, 1, 1, 0, c_white, 1);
}

#define onscreen(x, y)
var offset = 50;
if (x > view_get_xview() - offset) && (x < view_get_xview() + view_get_wview() + offset) && (y < view_get_yview() + view_get_hview() + offset) && (y > view_get_yview() - offset) {
	return true;
} else {
	return false;
}