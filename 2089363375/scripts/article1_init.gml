//The cat acts similar to Luma.

//Default Variables
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

//Follower Variables
pet_w = 24
run_speed = 3;
max_run_dist = 24;
follow_type = 0; //0 = Move immediately to the player; 1 = slowly move to the target position
float_timer = 0;
float_time_max = 45;
death_timer = 0;
attack_timer = 0;
hitstun = 0;
stunned = 0;
respawn_cooldown = 10 * 60;
hitpoints_max = 35;
hitpoints = hitpoints_max;
go_back = true;
invincible = false;

idle_spr = sprite_get("cat_idle");
idle_anim_spd = 0.1;
run_spr = sprite_get("cat_walk");
run_anim_spd = 0.2;
wait_spr = sprite_get("cat_wait");
wait_anim_spd = 0.35;
turn_spr = sprite_get("cat_walkturn");
jump_spr = sprite_get("cat_jump");
hurt_spr = sprite_get("cat_hurt");
spinhurt_spr = sprite_get("cat_spinhurt");
parry_spr = sprite_get("cat_parry");
wait_spr = sprite_get("cat_wait");
spawn_spr = sprite_get("cat_spawn");
spawn_anim_spd = 0.2;
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

current_attack = 0; //This will get replaced with the player's attacks.
window = 0;
window_timer = 0;
window_check_player = false;
window_face_enemy = true;
window_sound_check = true;
window_follow_player = false;
started_attack = false;

/*
    The states are named as follows:
        idle
        run
        jump
        hurt
        parry
        attack
        wait (used when the player gets hurt)
        spawn
        dead
*/
state = "spawn";
state_timer = 0;
prev_hsp = 0;
prev_vsp = 0;
hitstop_max = 0;
attack_tap_timer = 0;
has_hit = false;
player_hitpause = false;
hitpause = 0;
effect_timer = 0;
done_attacking = false;

myhurtbox = instance_create(x, y, "obj_article2");
myhurtbox.parent = id;

hurtbox_spr = sprite_get("cat_hurtbox");

sprite_index = idle_spr;
mask_index = hurtbox_spr;
image_speed = 0;