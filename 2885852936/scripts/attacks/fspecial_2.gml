set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_2_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_2_air_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_hurt"));

//start / create
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 11);
//set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

//controll
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("MMset"));
//set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 30);
//set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//end
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

set_num_hitboxes(AT_FSPECIAL_2, 3);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, -25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 11);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, hfx_lightning);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.18);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 82);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .1);
//set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .05);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);