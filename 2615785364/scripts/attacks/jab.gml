set_attack_value(AT_JAB, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("wheesh"));

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .52);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, fx_ringhit1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("slam1"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, -46);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -18);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("ring"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, sprite_get("ring"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);