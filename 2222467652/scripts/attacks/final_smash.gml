set_attack_value(50, AG_CATEGORY, 2);
set_attack_value(50, AG_SPRITE, sprite_get("jab"));
set_attack_value(50, AG_NUM_WINDOWS, 3);
set_attack_value(50, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(50, AG_MUNO_ATTACK_NAME, "Final Smash");

set_window_value(50, 1, AG_WINDOW_LENGTH, 25);
set_window_value(50, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(50, 1, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(50, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(50, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(50, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(50, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(50, 2, AG_WINDOW_LENGTH, 28);
set_window_value(50, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(50, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(50, 2, AG_WINDOW_HSPEED, 5);
set_window_value(50, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(50, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(50, 3, AG_WINDOW_LENGTH, 18);
set_window_value(50, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(50, 3, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(50, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(50, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(50, 3, AG_WINDOW_VSPEED, 1);

set_num_hitboxes(50, 1);

set_hitbox_value(50, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(50, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(50, 1, HG_WINDOW, 2);
set_hitbox_value(50, 1, HG_LIFETIME, 20);
set_hitbox_value(50, 1, HG_HITBOX_X, 10);
set_hitbox_value(50, 1, HG_HITBOX_Y, -30);
set_hitbox_value(50, 1, HG_WIDTH, 60);
set_hitbox_value(50, 1, HG_HEIGHT, 55);
set_hitbox_value(50, 1, HG_PRIORITY, 2);
set_hitbox_value(50, 1, HG_DAMAGE, 10);
set_hitbox_value(50, 1, HG_ANGLE, 35);
set_hitbox_value(50, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(50, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(50, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(50, 1, HG_EXTRA_HITPAUSE, 300);
set_hitbox_value(50, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(50, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(50, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(50, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(50, 2, HG_WINDOW, 2);
set_hitbox_value(50, 2, HG_LIFETIME, 8);
set_hitbox_value(50, 2, HG_HITBOX_X, 10);
set_hitbox_value(50, 2, HG_HITBOX_Y, -30);
set_hitbox_value(50, 2, HG_WIDTH, 200);
set_hitbox_value(50, 2, HG_HEIGHT, 100);
set_hitbox_value(50, 2, HG_PRIORITY, 2);
set_hitbox_value(50, 2, HG_DAMAGE, 15);
set_hitbox_value(50, 2, HG_ANGLE, 40);
set_hitbox_value(50, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(50, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(50, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(50, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(50, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(50, 2, HG_MUNO_HITBOX_MISC_ADD, "Inflicts Green Fire (4%)");
set_hitbox_value(50, 2, HG_HITBOX_GROUP, 2);