set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// First startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_sml"));
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 5);

// First active
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

// Second startup
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_sml"));
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 3);

// Second active
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

// Third startup
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_sml"));
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX_FRAME, 3);

// Third active
set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);

// Endlag
set_window_value(AT_NAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,3);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 110);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 4)
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, small_hit1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("soap_tail_hit_sml"));
set_hitbox_value(AT_NAIR, 1, HG_BUBBLE_ANGLE, 90)
set_hitbox_value(AT_NAIR, 1, HG_BUBBLE_KNOCKBACK, 5)
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("soap_tail_hit_sml_alt"));
set_hitbox_value(AT_NAIR, 2, HG_BUBBLE_ANGLE, 180)
set_hitbox_value(AT_NAIR, 2, HG_BUBBLE_KNOCKBACK, 5)

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, medium_hit1);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("soap_tail_hit_med_alt"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 3, HG_BUBBLE_ANGLE, 90)
set_hitbox_value(AT_NAIR, 3, HG_BUBBLE_KNOCKBACK, 5)