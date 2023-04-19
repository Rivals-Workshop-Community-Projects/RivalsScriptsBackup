
//AT_FSPECIAL transitions to one of two 'extra' attacks when it hits a target.
//AT_FSPECIAL_2: used the first time fspecial hits a target
//AT_FSPECIAL_AIR: used for each following time fspecial hits a target - until bg touches the ground
//this loop copies the same values into both AT_FSPECIAL_2 and AT_FSPECIAL_AIR.

var this_attack = AT_FSPECIAL_2;

repeat (2) {
set_attack_value(this_attack, AG_CATEGORY, 2);
set_attack_value(this_attack, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_OFF_LEDGE, 1);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 12);
set_attack_value(this_attack, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(this_attack, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 18);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED, 5.6);
set_window_value(this_attack, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_VSPEED, 1);
set_window_value(this_attack, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);


set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 15);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED, -4);
set_window_value(this_attack, 2, AG_WINDOW_VSPEED, -4);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_attack, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(this_attack, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);


set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 15);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(this_attack, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_num_hitboxes(this_attack, 1);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 16);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 5);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -10);
set_hitbox_value(this_attack, 1, HG_WIDTH, 102);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 90);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 9);
set_hitbox_value(this_attack, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(this_attack, 1, HG_ANGLE, 60);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 7.25);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(this_attack, 1, HG_EFFECT, 6);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(this_attack, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(this_attack, 1, HG_IGNORES_PROJECTILES, 1);

//repeat and set all these variables for AT_FSPECIAL_AIR
this_attack = AT_FSPECIAL_AIR;
} //end repeat (2)


//then, specify changes unique to AT_FSPECIAL_AIR
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1); //no gravity changes on all windows.

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0); //no rising vspeed.
