// dropped spear

fake_sprite_index = sprite_get("spears");
fake_image_index = 1;
fake_image_angle = 0;

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("spears_mask");

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = PS_SPAWN;
state_timer = 0;

prev_vsp = 0;
prev_hsp = 0;
was_free = false;

stuck_angle = 0;
hint_opac = 0;

spear_durability = 0;
	
array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_spear"); // icon to display
phone_offscr_index = fake_image_index; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 32; // approximate width/height of obj