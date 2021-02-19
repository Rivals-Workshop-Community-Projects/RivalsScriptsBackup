spr_dir = player_id.spr_dir;

if player_id.object_index != oPlayer player_id = player_id.player_id;

sprite_index = player_id.spr_luma_spawn;
image_index = 0;
mask_index = player_id.spr_luma_hurtbox;

ignores_walls = 0;

state = PS_SPAWN;
state_timer = 0;
exist_timer = 0;

attack = 0;
window = 0;
window_timer = 0;

hsp = 6 * spr_dir;

// sound_play(player_id.sfx_ssbu_rosa_swing_2)

should_die = 0;



// supersonic

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 10;
kb_dir = 0;
orig_knock = 0;

hit_lockout = 0;