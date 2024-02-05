set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//1 startup + charge 1
var num = 1;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotload1"));

//2 post start 1
num++;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotfire1"));

//3 active 1
num++;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 7);

//4 endlag1
num++;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 9);

//5 post charge 2
num++;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, num, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotfire2"));

//6 active 2
num++;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 16);

//7 endlag 2 1
num++;
set_window_value(AT_DSTRONG, num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, num, AG_WINDOW_ANIM_FRAME_START, 18);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, num);


set_num_hitboxes(AT_DSTRONG, 5);

var num = 1
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, num, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, num, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, num, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, num, HG_DAMAGE, 10 - 9*has_rune("C") + 10*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_DSTRONG, num, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, num, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, num, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, num, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_X, 105);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, num, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, num, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, num, HG_DAMAGE, 7 - 6*has_rune("C") + 7*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_DSTRONG, num, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, num, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, num, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, num, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, num, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, num, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, num, HG_DAMAGE, 10 - 9*has_rune("C") + 10*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_DSTRONG, num, HG_ANGLE, 140);
set_hitbox_value(AT_DSTRONG, num, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, num, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, num, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, num, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_X, -105);
set_hitbox_value(AT_DSTRONG, num, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, num, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, num, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, num, HG_DAMAGE, 7 - 6*has_rune("C") + 7*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_DSTRONG, num, HG_ANGLE, 130);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, num, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSTRONG, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_DSTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));