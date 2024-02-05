set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//1 startup + charge 1
var num = 1;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotload1"));

//2 post start 1
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotfire1"));

//3 active 1
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 12);

//4 endlag1
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG, num, AG_WINDOW_GOTO, 8);

//5 post charge 2
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotfire2"));

//6 active 2
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 22);

//7 endlag 2 1
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 24);

//8 endlag 2 2
num++;
set_window_value(AT_FSTRONG, num, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_FSTRONG, num, AG_WINDOW_HAS_WHIFFLAG, 1);


set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, num);


set_num_hitboxes(AT_FSTRONG, 4);

var num = 1
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, num, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, num, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, num, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, num, HG_DAMAGE, 4 - 3*has_rune("C") + 4*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_FSTRONG, num, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, num, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_FSTRONG, num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_X, 75);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, num, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, num, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, num, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, num, HG_DAMAGE, 6 - 5*has_rune("C") + 6*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_FSTRONG, num, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, num, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_FSTRONG, num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, num, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, num, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, num, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, num, HG_DAMAGE, 6 - 5*has_rune("C") + 6*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_FSTRONG, num, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, num, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, num, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, num, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_X, 85);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, num, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, num, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, num, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, num, HG_DAMAGE, 8 - 7*has_rune("C") + 8*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_FSTRONG, num, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, num, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, num, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_MASK, sprite_get("shell_shot"));
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_SPRITE, sprite_get("shell_shot"));
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_FSTRONG, num, HG_LIFETIME, 240);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSTRONG, num, HG_HITBOX_Y, -11);
set_hitbox_value(AT_FSTRONG, num, HG_WIDTH, 1);
set_hitbox_value(AT_FSTRONG, num, HG_HEIGHT, 1);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, num, HG_PRIORITY, 0);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, num, HG_PROJECTILE_UNBASHABLE, 1);