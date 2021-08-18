//ground

if object_index == obj_stage_main exit;

x = get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH) / 2;
y = get_stage_data(SD_Y_POS) - 20;
y = room_height / 2;

origin_x = 320;
origin_y = 272;

draw_off_x = 0;
draw_off_y = 144;

var sprite_name = "";
var temp_para = 0;

switch(depth){
	case 0: // Ground
		sprite_name = "ground";
		depth = 27;
		temp_para = 0;
		break;
	case 1: // BG 1
		sprite_name = "bg1";
		depth = 30;
		temp_para = 5;
		break;
	case 2: // BG 2
		sprite_name = "bg2";
		depth = 31;
		temp_para = 10;
		break;
	case 3: // BG 3
		sprite_name = "bg3";
		depth = 32;
		temp_para = 15;
		break;
	case 4: // BG 4
		sprite_name = "bg4";
		depth = 33;
		temp_para = 20;
		break;
	case 5: // BG 5
		sprite_name = "bg5";
		depth = 34;
		temp_para = 25;
		break;
	case 6: // BG 6
		sprite_name = "bg6";
		depth = 35;
		temp_para = 30;
		break;
}

sprite_change_offset(sprite_name, origin_x, origin_y);

parallax_x = temp_para;
parallax_y = temp_para;

parallax_x /= -100;
parallax_y /= -100;

sprite_index = asset_get("empty_sprite");
sprite_drawn = sprite_get(sprite_name);