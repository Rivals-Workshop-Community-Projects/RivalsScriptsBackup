set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));

// start up
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_swing_l"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);

//initial hit
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_swordspinl"));

//throw projectile
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 17);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_rise"));

//leap
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);//8
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -24);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 6);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_swordspinh"));

//speen 1
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

//speen 2
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);

//spike
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);

//fall
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 9);//10
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 28);//24

//land
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);

//end lag
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL, 9);//11

if(has_rune("C")){
    set_num_hitboxes(AT_USPECIAL, 9);
}

//intial hit

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("sfx_attack_m"));
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 102);

//multi hits

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 103);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_USPECIAL, 3, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 3, HG_EFFECT, 103);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_USPECIAL, 4, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 4, HG_TECHABLE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_EFFECT, 103);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_USPECIAL, 5, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_EFFECT, 103);

//strong spike

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 24);//32
set_hitbox_value(AT_USPECIAL, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, sound_get("sfx_attack_m"));
set_hitbox_value(AT_USPECIAL, 6, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 6, HG_EFFECT, 103);

if(has_rune("C")){
    set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 32);
}

//weak spike

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, .4);//.5
set_hitbox_value(AT_USPECIAL, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, sound_get("sfx_attack_m"));
set_hitbox_value(AT_USPECIAL, 7, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 7, HG_EFFECT, 103);

if(has_rune("C")){
    set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 32);
}

//launcher

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -37);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 45);//40
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 8);//7
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .9);//.8
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, sound_get("sfx_attack_h"));
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL, 8, HG_EFFECT, 102);

if(has_rune("C")){
    set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 40);//40
    set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 9);//7
    set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 1.1);//.8
}

//sword pseudo-projectile hitbox

set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 9, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 26);//26 or 9
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 10);//11
set_hitbox_value(AT_USPECIAL, 9, HG_FINAL_BASE_KNOCKBACK, 1);//5
set_hitbox_value(AT_USPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_USPECIAL, 9, HG_DRIFT_MULTIPLIER, .01);
set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_USPECIAL, 9, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_EFFECT, 103);
set_hitbox_value(AT_USPECIAL, 9, HG_IGNORES_PROJECTILES, 1);

if(has_rune("C")){
    set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 26);//26
    set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 10);//10
    set_hitbox_value(AT_USPECIAL, 9, HG_FINAL_BASE_KNOCKBACK, 2);//2
    set_hitbox_value(AT_USPECIAL, 9, HG_IGNORES_PROJECTILES, 0);
}

set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 10, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 10, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_EFFECT, 103);

//sword pseudo-projectile lingering

set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 17);//17
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 11, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 11, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 11, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 11, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 11, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 11, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, sound_get("sfx_attack_l"));
set_hitbox_value(AT_USPECIAL, 11, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 11, HG_EFFECT, 103);
set_hitbox_value(AT_USPECIAL, 11, HG_IGNORES_PROJECTILES, 1);

//sword grab projectile

// set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
// set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 6);
// set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -50);

// set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
// set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 9);
// set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -50);