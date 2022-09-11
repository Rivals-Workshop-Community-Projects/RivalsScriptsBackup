set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("dgf"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("USTRONG_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, sound_get("ewgf"));

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED, 1);

set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 14); // 10
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 0.9)
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 16); // 10
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1)
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG_2, 2, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));


