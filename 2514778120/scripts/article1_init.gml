//Swords

//Default Variables
uses_shader = true;

//Follower Variables
follow_speed = 4; //How fast it should follow
follow_friction = 0.2; //Stop friction once it reaches its destination.
max_follow_dist = 2; //How far the follower should follow the player while moving. 
follow_type = 0; //0 = Move to player; 1 = Stay put
walk_turn_time = 6; //How fast the follower will walkturn
follower_offset_x = 0;
follower_offset_y = 0;
follower_height = 64;
follower_arrow_offset = follower_height;
hurtbox_spr = sprite_get("sword_hurtbox");
hurtbox_mask = hurtbox_spr;
respawn_time = 15 * 60; //15 seconds
hitpoints_max = 35;

//Variables
air_friction = 0.1;
ground_friction = 0.5;
has_hit_player = 0;
nspecial_charge_timer = 0;
go_back = false;
dspecial_move = 0;

//Animation
sprite_type = 0; //0 = black; 1 = white;
idle_sprite = sword_get_sprite("idle");
idle_anim_speed = 0.18;
force_depth = 1;

//States
next_state = -1;
state = PS_SPAWN;
prev_state = PS_SPAWN;
state_timer = 0;
old_hsp = 0; //Used for hitpause
old_vsp = 0; //Used for hitpause

//Attacks
next_attack = -1;
attack = 0;
window = 0;
window_timer = 0;
attack_invince = 0;
attack_can_move = true;
committed = 0;
strong_charge = 0;
strong_charging = false;
hitpause = 0;

//Hit
last_hitbox = noone;
hit_id = noone;
invincible = 0;
hit_lockout = 0;
hbox_group = -1;
collision_box = sprite_get("sword_mask");
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
hit_player_id = noone;
orig_knock = 0;
hitstun = 0;
hitstun_full = 0;
bounced = false;
flinch_time = 0;
percent = 0;
super_armor = 0;
hitstun_grav = .5;
hit_ground = false

mask_index = collision_box;
fx_death = hit_fx_create(sprite_get("sword_deathfx"), 24);
fx_death2 = hit_fx_create(sprite_get("sword_deathfx2"), 32);

#define sword_get_sprite(name)
return sprite_get("sword" + string(sprite_type) + "_" + name)