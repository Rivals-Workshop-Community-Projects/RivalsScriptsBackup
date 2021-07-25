set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "Distraction Dance (Taunt)");

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 110);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("mus_dance_short"));


set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("sfx_funny_spike"));
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);

set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "I... Wh... I just... What?!");