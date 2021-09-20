// remote bomb

if object_index == oPlayer exit;

fake_sprite_index = sprite_get("bomb_idle");
fake_image_index = 0;
fake_image_angle = 0;

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("bomb_mask");

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

state = PS_IDLE;
state_timer = 0;
has_bounced = false;

prev_vsp = 0;
prev_hsp = 0;
was_free = false;

has_hit = false;

activation_queued = false;
bomb_lockout = false;
	
array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_bomb"); // icon to display
phone_offscr_index = 0; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 16; // approximate width/height of obj



// supersonic

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;

kb_adj = 8;
kb_dir = 0;
orig_knock = 0;

hit_lockout = 0;