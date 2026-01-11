var atk = AT_DSTRONG;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //post start
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++; //hit
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);

num++; //endlag
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -36);
set_hitbox_value(atk, num, HG_HITBOX_Y, -26);
set_hitbox_value(atk, num, HG_WIDTH, 90);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, 28);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 92);
set_hitbox_value(atk, num, HG_HEIGHT, 56);
set_hitbox_value(atk, num, HG_PRIORITY, 4);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 140);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -26);
set_hitbox_value(atk, num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, num, HG_WIDTH, 94);
set_hitbox_value(atk, num, HG_HEIGHT, 72);
set_hitbox_value(atk, num, HG_PRIORITY, 4);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

set_num_hitboxes(atk, num);





var atk = AT_DSTRONG_2;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrongbig"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //post start
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++; //hit
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);

num++; //endlag
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -48);
set_hitbox_value(atk, num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, num, HG_WIDTH, 108);
set_hitbox_value(atk, num, HG_HEIGHT, 48);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 60);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, 34);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 114);
set_hitbox_value(atk, num, HG_HEIGHT, 62);
set_hitbox_value(atk, num, HG_PRIORITY, 4);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 140);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -44);
set_hitbox_value(atk, num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, num, HG_WIDTH, 84);
set_hitbox_value(atk, num, HG_HEIGHT, 98);
set_hitbox_value(atk, num, HG_PRIORITY, 4);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_bow_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

set_num_hitboxes(atk, num);