// moving backgrounds
var sprite name = "";
var temp_para_x = 0;
var temp_para_y = 0;

x_speed = 0;
death_check = 0;

if get_instance_x( self ) < room_width/4 { depth = 0; }
if get_instance_x( self ) > room_width/4 { depth = 1; }

switch(depth){
	case 0: // Fish2
		sprite_name = "fish2";
		temp_para_x = -.88;
		temp_para_y = -.80;
		x = -room_width/4;
		x_offset = 288;
		y_offset = 170+64;
		x_speed = 2;
		depth = 37;
		break;
	case 1: // Fish1
		sprite_name = "fish1";
		temp_para_x = -.64;
		temp_para_y = -.58;
		x = room_width/2 + room_width/4;
		x_offset = 244;
		y_offset = 118+64;
		x_speed = -1;
		depth = 39;
		break;
}

parallax_x = temp_para_x;
parallax_y = temp_para_y;

time = 0;
move_x = 0;

sprite_index = asset_get("empty_sprite");
sprite_drawn = sprite_get(sprite_name);