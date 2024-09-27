//extra bg layers
bg_layer = spawn_variables[0];
paralax_amount = spawn_variables[1] * 0.1;
paralay_amount = spawn_variables[2] * 0.1;

scroll = spawn_variables[3] * 0.01;
scroll_x = 0;

image_xscale = 2;
image_yscale = 2;

sprite_index = asset_get("empty_sprite");
scroll_sprite_index = asset_get("empty_sprite");

switch bg_layer {
	case 0:
		sprite_index = sprite_get("sky");
		x -= 500;
		y -= 50;
		image_xscale = 50;
	break;
	case 1:
	case 2:
	case 3:
	case 4:
		sprite_index = sprite_get("hills_" +string(bg_layer));
	break;
	case 5:
		scroll_sprite_index = sprite_get("exclouds_1");
	break;
	case 6:
		scroll_sprite_index = sprite_get("exclouds_2");
	break;
	
	case 7:
		sprite_index = sprite_get("bg_ex");
		y -= 5;
	break;
	case 8:
		scroll_sprite_index = sprite_get("banzai");
	break;
}