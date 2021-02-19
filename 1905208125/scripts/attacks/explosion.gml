set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 134);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 89);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
//set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 8);
//set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


