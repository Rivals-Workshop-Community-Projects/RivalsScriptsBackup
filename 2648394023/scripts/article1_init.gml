mask_index = sprite_get("prism_mask");
sprite_index = asset_get("empty_sprite");

ignores_walls = 0;

state = PS_SPAWN;
state_timer = 0;
exist_timer = 0;

fake_sprite_index = sprite_get("prism_spawn");
fake_image_index = 0;
fake_image_angle = 0;
fake_x = 0;
fake_y = 0;

last_arrow = noone;
last_reticle = noone;

grabbed_player = noone;

array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_example"); // icon to display
phone_offscr_index = 0; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 16; // approximate width/height of obj



hit_lockout = 0;

// supersonic
hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;