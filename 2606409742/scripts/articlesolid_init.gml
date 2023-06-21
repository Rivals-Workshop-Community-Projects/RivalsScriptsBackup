if "phone" not in player_id{
	// this code turns the "solid article" into a "phone article", so that, for
	// all intents and purposes, it won't interact with any solid article code.
	// instead, it can now draw the phone's big screen while the phone is in
	// sleep mode.
	sprite_index = asset_get("empty_sprite");
	mask_index = asset_get("empty_sprite");
	uses_shader = false;
	orig_player_id = player_id;
	player_id = noone;
	num = "phone";
	depth = 7;
	x = 0;
	y = 10000;
	exit;
}

// your solid article code can go here!

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("cryonis_mask");

image_yscale = 10;
y = room_height / 2;

cracked = false;
cracked_timer = 0;
cracked_timer_max = 1; // used to be 15

exist_timer = 0;

white_opac = 1;
	
array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_cryonis"); // icon to display
phone_offscr_index = 0; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 32; // approximate width/height of obj



// supersonic

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;

kb_adj = 8;
kb_dir = 0;
orig_knock = 0;

hit_lockout = 0;