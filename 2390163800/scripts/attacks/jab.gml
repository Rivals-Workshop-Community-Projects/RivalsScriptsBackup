set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 1);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get( "jab_car" ));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_THROWS_ROCK, 1);