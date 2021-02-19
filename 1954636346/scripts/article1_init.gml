sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("block");

if !is_aether_stage(){
	x = get_marker_x(1);
	y = get_marker_y(1);
}

start_x = x;
start_y = y;

hit_timer_max = 20;
hit_timer = 0;

has_gotten_hit = false;

spr_block = sprite_get("block");
spr_block_used = sprite_get("block_used");
sfx_block_hit = sound_get("block_hit");
sfx_life = sound_get("life");

size = 1;

fake_image_index = 0;

coin = noone;

text_y = 0;
text_vsp = 0;

respawn_timer = 0;
respawn_timer_max = 60;



spr_current = spr_block;

hit_count = 0;



debug = false; //always hittable

last_player = 1;