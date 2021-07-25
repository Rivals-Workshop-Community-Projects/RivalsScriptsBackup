//afterimage.

timer = 0;

if (player_id.attack != AT_FSPECIAL){
	sprite_index = player_id.sprite_index;
} else {
	sprite_index = sprite_get("fspecial_afterimage")
}

image_index = player_id.image_index;

spr_dir = player_id.spr_dir;