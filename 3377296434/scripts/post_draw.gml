shader_start();
if (instance_exists(brick)){
    with brick draw_indicator(0, 0)
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_TAUNT){
		draw_sprite_ext(sprite_get("pose"), selected_pose, x, y, 1*spr_dir, 1, 0, c_white, 1);
	}
}

shader_end();
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
    if (y - 12 > camera_y + view_get_hview() - 60) {
        offY = camera_y + view_get_hview() - 56;
        offIndex = 1;
        offRot = -90;
    } else if (y - 12 < camera_y + 35) {
        offY = camera_y + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = y - 12;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > camera_x + view_get_wview() + 30) {
    offX = camera_x + view_get_wview() - 35;
    if (y - 12 > camera_y + view_get_hview() - 60) {
        offY = camera_y + view_get_hview() - 56;
        offIndex = 1;
        offRot = 0;
    } else if (y - 12 < camera_y + 35) {
        offY = camera_y + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = y - 12;
        offIndex = 0;
        offRot = 90;
    }
} else if (y - 12 > camera_y + view_get_hview() - 60) {
    offX = x;
    offY = camera_y + view_get_hview() - 56;
    offIndex = 0;
    offRot = 0;
} else if (y - 12 < camera_y + 35) {
    offX = x;
    offY = camera_y + 35;
    offIndex = 0;
    offRot = 180;
}

	

if (offX != undefined) {
	draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(player), 1);
	draw_sprite_ext(sprite_get("arrow_offscreen_default"), 0, offX, offY, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(get_player_color(player_id.player) == 0 ? sprite_get("arrow_offscreen_default"):sprite_get("arrow_offscreen"), 0, offX, offY, 1, 1, 0, c_white, 1);
}