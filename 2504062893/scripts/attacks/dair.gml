set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
// set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, snd_Dair_hit);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, snd_Dair_hit);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, snd_Dair_hit);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, snd_Dair_hit);

//finisher
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 78);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 90);
// set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
// set_hitbox_value(AT_DAIR, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
