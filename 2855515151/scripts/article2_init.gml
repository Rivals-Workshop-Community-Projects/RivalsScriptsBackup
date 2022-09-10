sprite_index = sprite_get("fspecial_projectile_start");
player_id.hat_object = id;
grav = 0.2
ignores_walls = false;
state = 0;
state_timer = 0;
lock_state = false;
spr_dir = player_id.spr_dir;

mask_index = sprite_get("hat_mask");

//DinoBros' New code
if (player_id.hat_health <= 0) {
	player_id.hat_health = 0;
	health = player_id.hat_health; //Health before death
} else {
	health = player_id.hat_health; //Health before death
}
grab_start_up = 15; //How many frames are in start up.
grab_whiff = 16; //How many frames are in start up.
grab_rumble_sfx_frame = 20;
grab_rumble_sfx_played = false;
grab_throw_start = 36; //Start of throw
grab_end = 49; //Start of whiff
grab_speed = 5; //Speed of the animation
hatted_id = -4;
hitstop = 0;
hat_ready = true;

//Animation speeds for the hat states.
state_anim_speeds = [0.26,0.3,0,0.2];

//Whether the hat's anim should stop on the last frame of the animation for each state.
state_stop_at_last = [false, true, true, false];

//current hitbox that is active
linked_hitbox = noone;

ignored_players[0] = false;
with(oPlayer){
 other.ignored_players[player] = false;
}

hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}

my_hitbox = noone;
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.