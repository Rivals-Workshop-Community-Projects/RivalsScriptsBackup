set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("fspecial2_landing"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_NAME, "Fspecial 2 Landing");

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("Held Side Special landing"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 85);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.60);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("sfx_kiIMPACT"));
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, vfx_ki_impact);