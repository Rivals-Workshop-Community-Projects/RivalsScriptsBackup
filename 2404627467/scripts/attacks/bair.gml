set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);

set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_BAIR, 3);

//Close
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 96);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 138);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -72);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 144);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 138);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -96);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 192);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 138);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));