set_attack_value(46, AG_SPRITE, sprite_get("throwevi"));
set_attack_value(46, AG_NUM_WINDOWS, 3);
set_attack_value(46, AG_HURTBOX_SPRITE, hurtbox_spr);

//jab 1

set_window_value(46, 1, AG_WINDOW_LENGTH, 8);
set_window_value(46, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(46, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(46, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(46, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//active 1
set_window_value(46, 2, AG_WINDOW_LENGTH, 4);
set_window_value(46, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//recovery 1
set_window_value(46, 3, AG_WINDOW_LENGTH, 10);
set_window_value(46, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(46, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(46, 0);

//junk
set_hitbox_value(46, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(46, 1, HG_PROJECTILE_SPRITE, sprite_get("evidence"));
set_hitbox_value(46, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(46, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(46, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(46, 1, HG_WINDOW, 2);
set_hitbox_value(46, 1, HG_LIFETIME, 100);
set_hitbox_value(46, 1, HG_HITBOX_X, 60);
set_hitbox_value(46, 1, HG_HITBOX_Y, -38);
set_hitbox_value(46, 1, HG_WIDTH, 30);
set_hitbox_value(46, 1, HG_HEIGHT, 30);
set_hitbox_value(46, 1, HG_PRIORITY, 3);
set_hitbox_value(46, 1, HG_DAMAGE, 5);
set_hitbox_value(46, 1, HG_ANGLE, 75);
set_hitbox_value(46, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(46, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(46, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(46, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(46, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(46, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(46, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));