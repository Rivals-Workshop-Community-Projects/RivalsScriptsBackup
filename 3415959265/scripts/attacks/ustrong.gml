atk = AT_USTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //attack windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_saya_artcblast2"));

window_num ++; //attack scoop
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);


window_num ++; //multi hit
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 14);


window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);


//Install windows XP 7-10

window_num ++; //Slam windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //Slam attack start
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);


window_num ++; //Banana Slamma
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);


window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 34);



set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //scoop
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -61);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 62);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 86);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 55);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 51);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_wind_medium"));


hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -78);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 58);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_wind_medium"));


hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -78);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_wind_medium"));


hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -78);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 66);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 65);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_wind_medium"));





hitbox_num++; //launcher
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 73);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 72);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


hitbox_num++; //Slam hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 9);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 62);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 63);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_big);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion_blow2"));


set_num_hitboxes(atk, hitbox_num);