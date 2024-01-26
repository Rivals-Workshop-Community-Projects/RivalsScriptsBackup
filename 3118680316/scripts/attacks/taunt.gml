set_attack_value(AT_TAUNT, AG_SPRITE,  get_player_color(player) == 25 ? sprite_get("taunt_glitch") : sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);

// Into position
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);

// Walk to stretch
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);

// Stretch
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 66);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 11);

// Recover
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 5);

// Rune footstool hitbox
// It's in taunt cuz that's funny
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_TAUNT, 1, HG_BUBBLE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 1, HG_BUBBLE_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, splash_hit);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("soap_tail_hit_med"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);