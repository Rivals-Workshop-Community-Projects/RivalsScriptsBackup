set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);

//set_hitbox_value(AT_UTILT, 1, HG_MUNO_HITBOX_NAME, "Top Hit");

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 20);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 84);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 301)
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("utilttrans"));

//super hitbox storage for articles :)
//egg spew hitbox
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 20);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 84);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301)
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("utilttrans"));
//egg hitbox
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 20);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 301)
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("utilttrans"));
//set_hitbox_value(AT_UTILT, 2, HG_MUNO_HITBOX_NAME, "Bottom Hit");

/*set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 76);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 4);*/

//set_hitbox_value(AT_UTILT, 2, HG_MUNO_HITBOX_MISC_ADD, "In the original release of Sandbert, this hitbox never appears because its height is set to 0.");