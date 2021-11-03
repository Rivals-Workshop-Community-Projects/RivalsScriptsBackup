set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("bonby_fstrong_draw"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("fstrongwood"));


set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("bonby_nair_spikehit"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 162);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("bonby_nair_spikehit"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 162);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("bonby_nair_spikehit"));
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 162);