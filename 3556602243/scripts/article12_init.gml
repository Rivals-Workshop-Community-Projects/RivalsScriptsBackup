//
sprite_index = sprite_get("ror_printer");
mask_index = sprite_get("ror_printer_mask");
image_index = 0;

can_be_grounded = true;
ignores_walls = false;

y = -room_height;
vsp = 12;

object_type = "printer";
touched_ground = false;
death_offset = 0;

image_xscale = 1;
image_yscale = 1;

scrapper_play_sfx = false;

depth = 24;

card_sprite = sprite_get("icons");
card_icon = 0;
ror_print_item = -4;
card_info = -4;

should_draw_cards = 0;
opacity_max = 15;

rarity = 0;
rarity_colors = [
	c_white,
	c_blue,
	c_purple,
	c_yellow
]

touching_player = false;
