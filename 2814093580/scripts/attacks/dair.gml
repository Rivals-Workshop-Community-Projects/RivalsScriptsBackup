set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14 );
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2 );
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 13 );
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3 );
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2 );
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1") );
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1 );
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4 );
set_window_value(AT_DAIR, 3, AG_WINDOW_CANCEL_TYPE, 1 );
set_window_value(AT_DAIR, 3, AG_WINDOW_CANCEL_FRAME, 1 );
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 7 );
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5 );


set_num_hitboxes(AT_DAIR,1);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, -1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_COLLISION_SPRITE, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, hit_fx_create( sprite_get("yummy"), 32 ));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_coin_collect"));
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("donut"));
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_MASK, sprite_get("donut"));
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_AIR_FRICTION, 0.11);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_HSPEED, 5);