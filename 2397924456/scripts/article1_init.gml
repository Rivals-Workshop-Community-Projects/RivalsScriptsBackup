sprite_index = player_id.spr_legion_idle;
image_index = 1;
mask_index = player_id.spr_legion_mask;

visible = (player_id.state != PS_RESPAWN && player_id.state != PS_DEAD) || get_gameplay_time() < 2;
was_visible = 1;

real_x = x;
real_y = y;

bot_y = y;

player_dist = 1;
max_dist = 1;

moving = 0;
anchored = 0;

sync = 1;
type = 0; // 0 sword 1 arrow 2 arm 3 beast 4 axe

ignores_walls = 0;



state = PS_IDLE;
state_timer = 0;
exist_timer = 0;

attack = 0;
window = 0;
window_timer = 0;



walking = 0;
turning = 0;



health_ratio = 30;
max_health = 30 * health_ratio;
legion_health = max_health;
target_health = noone;

walk_opac = 0;
see_thru = 0;
controlled = 0;

dash_target_x = x;
dash_target_y = y;
dash_buffer = 0;
dash_timer = 0;



orig_depth = depth;



badly_damaged = 0;



can_damage_player = 1;

stopped_sounds = [];



// supersonic

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 2;
kb_dir = 0;
orig_knock = 0;

hit_lockout = 0;