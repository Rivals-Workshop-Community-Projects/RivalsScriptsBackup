set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, sound_get( "freezeFrame" ));

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_FSTRONG_2,3);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 57);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 197);

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, -210);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 197);

set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_HITPAUSE, 40);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, 197);
