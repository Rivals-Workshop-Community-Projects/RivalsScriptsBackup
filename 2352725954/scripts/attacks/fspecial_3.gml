set_attack_value(AT_FSPECIAL_3, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_3, AG_SPRITE, sprite_get("fspecial_3"));
set_attack_value(AT_FSPECIAL_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL_3, AG_AIR_SPRITE, sprite_get("fspecial_3"));
set_attack_value(AT_FSPECIAL_3, AG_HURTBOX_SPRITE, sprite_get("fspecial_3_hurt"));

set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_SFX, sound_get("sfx_chakthrow"));
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_GOTO, 2);

//Neutral Throw
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//Up Throw
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//Down Throw
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_FSPECIAL_3, 2);

//Fast Chakram
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_WIDTH, 43);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_KNOCKBACK_SCALING, 0.50);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HIT_SFX, sound_get("sfx_swordmedium"));
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_SPRITE, sprite_get("fspec3_proj"));
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);

//Slow Chakram
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_LIFETIME, 72);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_WIDTH, 43);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HEIGHT, 43);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HIT_SFX, sound_get("sfx_swordlight"));
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_SPRITE, sprite_get("fspec3_proj"));
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_HSPEED, 4.33);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);