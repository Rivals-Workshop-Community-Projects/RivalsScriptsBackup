set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 18);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_strong"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 74);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 276); // wa ????
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 74);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70); // wa ????
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -106);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 276); // wa ????
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);