set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("extra1_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("fspec_nine"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 161);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 65);

set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 11);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 170);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 80);