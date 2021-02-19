//article1_init
init = 0;
sprite_index = sprite_get("nspecial_proj");

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;

// stolen from NyxTheShield because coding is hard :(
hsp_previous = 0;
vsp_previous = 0;
last_hitbox = -1000;
last_hitbox_group = -420;
last_attack_id = -987;
last_id_group = -100;
last_player = -100;

// Giik
projectile = 1;
hitboxed = 0;

// my own vars
// ball_drawing_angle = 0;
last_whacked_by = player_id;
last_whacked_by_id = -1;
max_hsp = 13;
max_vsp = 13;
play_bounce_sound = true;
bounce_sound_timer = 0;
stored_hsp = 0;
stored_vsp = 0;
hitpause_timer = 0;

has_collided = false; // fixes the problem of creating a visual effect on every frame when colliding with the lava wall
ready_to_destroy = false;
attack_id = 0;
particle_timer = 0;
speed_kb = 0; //knockback that will be based on speed
hitbox_timer = 0;
ball_timer = 0;

spr_dir = 1;
ballGrav = 0.2;
grounded = false;
last_hitter = noone;
lifespan = 600;

// test, remove later?
timer = 0;
player_id.newMagmaBall = self
timeout=0

if (place_meeting(x, y, asset_get("obj_article3"))){
    // x += 48*player_id.spr_dir;
}
