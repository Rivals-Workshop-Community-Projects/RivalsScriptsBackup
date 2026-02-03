set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial3"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial3_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("mfx_star"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1); //Vanishing forward
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, -0.1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_GOTO, 4);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1); //Hard knee out
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, 0.1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("fspecial_ground"));
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_GOTO, 4); //Not a window

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1); //Idling after dash
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_GOTO, 10); //Not a window

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1); //Hard knee into punch
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
if (attack_button == 0){
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
}
if (attack_button == 1){
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
}
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

/*
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("mfx_star"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1); //Flying forward knee
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 16);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("fspecial_ground"));

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1); //Missed
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 11);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_GOTO, 10);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1); //Hard punch
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
*/

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1); //Knee
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 275);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("fspecial2_knee"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1); //Punch!
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 99);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 99);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 340);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);