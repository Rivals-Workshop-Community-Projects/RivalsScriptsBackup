//a

//house stuff
house_level = 1; //level

minions_spawn_max = 3; //minion max
minions_spawn_rn = 0;

minion_spawn_timer_rn = 0;
minion_spawn_timer_max = 170; //time until minions spawn while in idle

hp_max = get_match_setting( SET_TEAMS) ? 45 : 30; //health max
hp_rn = hp_max;
should_die = false;

player_id.houses_amount_rn += 1; //increase house count in player

thrown_hitbox_id = noone; //hitbox for when thrown
thrown_hitbox_type = 1; //thrown hitbox type (if it's dthrow, n/fthrow or uthrow)

grav_speed = 0.45;
ground_frict = 0.35;
air_frict = 0.02;

//base stuff
state = -1;
state_timer = 0;
//can_get_hit = true; //if house can get hit

//state timers
die_timer = 30;
hurt_timer = 40;
spawn_timer_spawn = 35;
spawn_timer_finish = 70;

//hitbox collision & detection
hit_hitbox = noone;
hit_hitbox_previous = noone;
hit_group = 0;
hit_group_previous = 0;
hit_attack = 0;
hit_attack_previous = 0;
hit_attack_cooldown = 0;

hit_cooldown = 0;

//nae nae cringe ori stop bashing my fucking article
unbashable = true;


//sprites
sprite_index = sprite_get("house_article_idle_lv"+string(house_level))
new_sprite = sprite_get("house_article_idle_lv"+string(house_level)) //for changing sprites per state
mask_index = sprite_get("house_article_mask")

idle_anim_speed = 0.15;
fall_anim_speed = 0.15;

//even more basic stuff
can_be_grounded = true;
ignores_walls = false;
spr_dir = player_id.spr_dir;