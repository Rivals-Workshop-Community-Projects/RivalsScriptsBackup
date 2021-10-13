//a

//minion stuff
minion_house = noone;
minion_level = 1; //level

attack_timer_rn = 0;
attack_timer_max = 180; //time until minions spawn while in idle

hp_max = get_match_setting( SET_TEAMS) ? 24 : 12; //health max
hp_rn = hp_max;
should_die = false;

attack_hitbox_id = noone; //hitbox for when attacking
window = 0;
window_timer = 0;
window_length = 16;
attack_window_frame_first = 0;
attack_window_frame_last = 0;
dspec_dir = 0;
dspec_boost = 1;

is_moving = false;
air_frict = 0.02;
air_accel = 0.2;
base_accel = air_accel;
field_accel = 0.3;
air_max_speed = 2.25;
base_max_speed = air_max_speed;
field_max_speed = 3.5;

target_player = noone;

is_throw_minion = false;

overworking_active = false;
overworking_bonus = 0.50;



//base stuff
state = 1;
state_timer = 0;
//can_get_hit = true; //if house can get hit

//state timers
die_timer = 30;
hurt_timer = 40;
stun_timer = 150;

//hitbox collision & detection
hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
hit_lockout = 0;

//nae nae cringe ori stop bashing my fucking article
unbashable = true;


//sprites
sprite_index = sprite_get("minion_article_idle_lv"+string(minion_level))
new_sprite = sprite_get("minion_article_idle_lv"+string(minion_level)) //for changing sprites per state
mask_index = sprite_get("minion_article_mask")

idle_anim_speed = 0.15;


//even more basic stuff
can_be_grounded = true;
ignores_walls = false;
spr_dir = 1;