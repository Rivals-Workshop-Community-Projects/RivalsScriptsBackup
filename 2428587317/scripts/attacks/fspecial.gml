set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialair"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecialair_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"));//_start
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -15);
//set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 32);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 0);//
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, .5);//
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .001);//
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tornado"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("tornado"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .05);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.08);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -4.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


/*
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tornado"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -5);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 38);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 0);//
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, .5);//
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .001);//
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .05);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.08);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -4.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));*/