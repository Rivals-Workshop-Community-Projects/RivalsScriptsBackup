set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));


//1 startup
var num = 1;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED_TYPE, 1);

//2 dive
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED_TYPE, 1);

//3 dive loop
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_TYPE, 9);
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED_TYPE, 1);

//4 dive hit
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_SFX, sound_get("sfx_shotload1"));

//5 hit 2 charge
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_SFX, sound_get("sfx_shotfire2"));

//6 hit 2 fire
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED, -2);
set_window_value(AT_DAIR, num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED, -12);
set_window_value(AT_DAIR, num, AG_WINDOW_VSPEED_TYPE, 2);

//7 endlag
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DAIR, num, AG_WINDOW_GOTO, 18);

//8 air cancel
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_DAIR, num, AG_WINDOW_GOTO, 18);

//9 land cancel
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 33);
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 34);
num++;
set_window_value(AT_DAIR, num, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, num, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_DAIR, num, AG_WINDOW_GOTO, 18);

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_DAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, num, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, num, HG_LIFETIME, 12);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, num, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, num, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, num, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, num, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, num, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, num, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, num, HG_HITPAUSE_SCALING, .05);
set_hitbox_value(AT_DAIR, num, HG_EXTRA_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

num++
set_hitbox_value(AT_DAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, num, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, num, HG_LIFETIME, 9);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, num, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, num, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, num, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, num, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, num, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, num, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, num, HG_HITPAUSE_SCALING, .05);
set_hitbox_value(AT_DAIR, num, HG_EXTRA_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

num++
set_hitbox_value(AT_DAIR, num, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, num, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, num, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_Y, 30);
set_hitbox_value(AT_DAIR, num, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, num, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, num, HG_DAMAGE, 8 - 7*has_rune("C") + 8*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_DAIR, num, HG_ANGLE, -70);
set_hitbox_value(AT_DAIR, num, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DAIR, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

num++
set_hitbox_value(AT_DAIR, num, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, num, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, num, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, num, HG_HITBOX_Y, 60);
set_hitbox_value(AT_DAIR, num, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, num, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, num, HG_DAMAGE, 8 - 7*has_rune("C") + 8*has_rune("E")*!has_rune("C"));
set_hitbox_value(AT_DAIR, num, HG_ANGLE, -70);
set_hitbox_value(AT_DAIR, num, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DAIR, num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, num, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

set_num_hitboxes(AT_DAIR, num-1);