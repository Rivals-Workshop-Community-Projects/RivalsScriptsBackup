set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX, sound_get("dspecial_thump_strong"));
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DTHROW, 5, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 126);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 98);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 44);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .70);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DTHROW, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 20);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 320);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 9999);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DTHROW, 2, HG_EXTRA_HITPAUSE, 38);
set_hitbox_value(AT_DTHROW, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, sound_get("biglaunch"));