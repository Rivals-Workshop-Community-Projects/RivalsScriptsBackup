set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//1 startup + charge 1
var num = 1;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotload1"));

//2 post start 1
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotfire1"));

//3 active 1
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 8);

//4 endlag1
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 10);

//5 post charge 2
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USTRONG, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, num, AG_WINDOW_SFX, sound_get("sfx_shotfire2"));

//6 active 2
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 18);

//7 endlag 2 1
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 20);

//8 endlag 2 2
num++;
set_window_value(AT_USTRONG, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, num, AG_WINDOW_ANIM_FRAME_START, 24);


set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, num);


set_num_hitboxes(AT_USTRONG, 3);

var num = 1
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, num, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, num, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_Y, -125);
set_hitbox_value(AT_USTRONG, num, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, num, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, num, HG_DAMAGE, 5 - 4*has_rune("C") + 5*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_USTRONG, num, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, num, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, num, HG_KNOCKBACK_SCALING, .01);
set_hitbox_value(AT_USTRONG, num, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_USTRONG, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_USTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_USTRONG, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, num, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(AT_USTRONG, num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++;
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, num, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, num, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, num, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, num, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, num, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, num, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, num, HG_DAMAGE, 7 - 6*has_rune("C") + 7*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_USTRONG, num, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, num, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USTRONG, num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_USTRONG, num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_USTRONG, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));