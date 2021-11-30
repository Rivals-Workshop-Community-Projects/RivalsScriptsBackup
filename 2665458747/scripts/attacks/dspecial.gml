set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("Croaghurtbox"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .14);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, fighthit);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("dp-hit2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);