set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_MISC, "Deals 5 hits if ATTACK or STRONG is held.");
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_ENDLAG, "13 (20) 
Held: 15 (23)");

//startup
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("sfx_delta_swipe4"));

//release
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1)
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

//held
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);

//active
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

//endlag
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);

set_num_hitboxes(AT_UAIR, 6);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 96);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 59);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hfx_small)
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -23);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 66);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 6, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, hfx_small)
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -66);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -66);


set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -66);


set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, hfx_big)