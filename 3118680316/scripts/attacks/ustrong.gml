set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("soap_tail_whoosh_sml"));

// Startup
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("soap_chomp"));

// Bite
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// Fall
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

// Endlag
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG,2);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BUBBLE_KNOCKBACK, 25);
set_hitbox_value(AT_USTRONG, 1, HG_BUBBLE_ANGLE, 90)
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -80);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, chomp_hit2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("soap_chomp_hit_big"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 10);

// Riser
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BUBBLE_KNOCKBACK, 15);
set_hitbox_value(AT_USTRONG, 2, HG_BUBBLE_ANGLE, 90)
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("soap_tail_hit_sml"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);