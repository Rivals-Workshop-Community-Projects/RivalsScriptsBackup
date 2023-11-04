if (attack == AT_FSPECIAL_2 and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)) {
    draw_sprite_ext(sprite_get("fspecial_2_effect_" + string(blook_record + 1)), image_index, x, y, spr_dir, 1, 0, c_white, 1)
}

if (instance_exists(record_player_obj)){
    var record = record_player_obj.blook_record + 1;
    draw_sprite_ext(sprite_get("notes_" + string(record)), effect_frame, x, y, 1, 1, 0, c_white, 0.6);
    with record_player_obj draw_indicator(0, 0)
}

draw_sprite(sprite_get(`hud_record_${blook_record + 1}`), 0, x, y - 10 - char_height - hud_offset)




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
	
	draw_sprite_ext(sprite_get("arrow_offscreen"), 0, offX, offY, 1, 1, 0, c_white, 1);
}