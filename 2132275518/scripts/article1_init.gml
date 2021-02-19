//General enemy object
enum TARGETING {
    NEAR,
    CUSTOM,
    FAR,
    RANDOM,
    LOW,
    HIGH
}

prev_hsp = 0;
prev_vsp = 0;

//These variables are required for the boss to work.
done_intro = false;
start_fight = false;
hitpoints_max = 1;
hitpoints = hitpoints_max;
    
if (obj_stage_main.hard_mode)
    hp_threshold = hitpoints_max * 0.65;
else
    hp_threshold = hitpoints_max * 0.5;
hp_threshold_hit = false;

knockback_adj = 1;
hitstun = 0;
hitpause = 0;

gravity_speed = 0.45;
hitstun_grav = 0.45;

grav = 0;

despawn_range = -1;
despawned = false;
dead = false;

//enemy_id = 0;

invincible = false;
hurtbox_id = noone;
parent = id;

player_count_resistance = 1;
activate_kill_effect = false;
hurtbox_group = 0;

ai_target = noone;
target_behavior = TARGETING.NEAR;

last_hbox = noone;
current_hbox_group = 0;
last_hbox_group = -1;
last_hittime = get_gameplay_time();
last_player_hit = 1000;
last_hit_by = noone;
current_hbox = noone;
last_hurt_group = -1;
hit_cooldown = 0;
orig_knock = 0;
should_make_shockwave = false;

//Character compatibility
wet = false; //For Wizard