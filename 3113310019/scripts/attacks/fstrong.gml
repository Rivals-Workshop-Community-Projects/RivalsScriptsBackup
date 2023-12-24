set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 3);

// sweet
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 86);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

// sour
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 86);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("melonimpact2"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

// above
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -72);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);