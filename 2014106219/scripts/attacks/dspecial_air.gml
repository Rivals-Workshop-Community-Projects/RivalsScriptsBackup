set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sword-brandish"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 26);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//landing

set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_DSPECIAL_AIR, 5);

//clean
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 32);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("sword-hit2"));

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, sound_get("sword-hit2"));

//land
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));