set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("secret"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 400);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 33);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("amongus_card_accepted"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 399);

set_num_hitboxes(AT_TAUNT_2,1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 399);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 25);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, sound_get("bat"));