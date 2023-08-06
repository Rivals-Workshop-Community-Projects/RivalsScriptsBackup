//indicator draw for arrows
with pHitBox {
	if player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1 && !was_parried {
		draw_indicator(proj_angle, 0);
	}
}

#define draw_indicator(angle, index)
var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;

if instance_number(asset_get("camera_obj")) == 0 return;

var camera_x = get_instance_x(asset_get("camera_obj")) - (view_get_wview() / 2)
var camera_y = get_instance_y(asset_get("camera_obj")) - (view_get_hview() / 2)

if (x < camera_x - 30) {
    offX = camera_x + 35;
    if (y > camera_y + view_get_hview() - 60) {
        offY = camera_y + view_get_hview() - 85;
        offIndex = 1;
        offRot = -90;
    } else if (y < camera_y + 35) {
        offY = camera_y + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = y;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > camera_x + view_get_wview() + 30) {
    offX = camera_x + view_get_wview() - 35;
    if (y > camera_y + view_get_hview() - 60) {
        offY = camera_y + view_get_hview() - 85;
        offIndex = 1;
        offRot = 0;
    } else if (y < camera_y + 35) {
        offY = camera_y + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = y;
        offIndex = 0;
        offRot = 90;
    }
} else if (y > camera_y + view_get_hview() - 60) {
    offX = x;
    offY = camera_y + view_get_hview() - 85;
    offIndex = 0;
    offRot = 0;
} else if (y < camera_y + 35) {
    offX = x;
    offY = camera_y + 35;
    offIndex = 0;
    offRot = 180;
}

if (offX != undefined) {
	draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(player), 1);
	var arrow_index = 16 - round(angle/45);
	
	dir = spr_dir;
	if bullet_state == PS_DEAD {
	    dir = 1;
	}
	draw_sprite_ext(sprite_get("arrow_offscreen"), arrow_index, offX, offY, dir, -dir, 0, c_white, 1);
}