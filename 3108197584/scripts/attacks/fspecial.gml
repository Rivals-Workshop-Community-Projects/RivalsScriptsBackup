set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));


//1 startup
var num = 1;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_SFX, sound_get("sfx_sniper_load"));

//2 sit idle
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 5);

//3 sit fire
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_GOTO, 8);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_VSPEED, 0);

//4 raise
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 6);

//5 walk loop
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HSPEED, 2);

//6 fire walk
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_GOTO, 9);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_VSPEED, 0);

//7 sit again
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_GOTO, 2);

//8 sit only endlag
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 24);

//9 endlag
num++;
set_window_value(AT_FSPECIAL, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 26);


set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, num);


num = 1;
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, num, HG_VISUAL_EFFECT, 1);

num++;
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, num, HG_VISUAL_EFFECT, 1);

num++;
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, num, HG_VISUAL_EFFECT, 1);

num++;
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, num, HG_VISUAL_EFFECT, 1);

num++;
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_MASK, sprite_get("shell_sniper"));
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_SPRITE, sprite_get("shell_sniper"));
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_FSPECIAL, num, HG_LIFETIME, 240);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_Y, -11);
set_hitbox_value(AT_FSPECIAL, num, HG_WIDTH, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_HEIGHT, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, num, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_UNBASHABLE, 1);

set_num_hitboxes(AT_FSPECIAL, 2);

num++;
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, num, HG_PROJECTILE_PARRY_STUN, 1);