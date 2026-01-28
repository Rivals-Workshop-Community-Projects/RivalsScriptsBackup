var atk = AT_USTRONG;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //post start
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++; //hit
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);

num++; //endlag
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -108);
set_hitbox_value(atk, num, HG_WIDTH, 30);
set_hitbox_value(atk, num, HG_HEIGHT, 36);
set_hitbox_value(atk, num, HG_PRIORITY, 8);
set_hitbox_value(atk, num, HG_DAMAGE, 8);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -70);
set_hitbox_value(atk, num, HG_WIDTH, 30);
set_hitbox_value(atk, num, HG_HEIGHT, 70);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

set_num_hitboxes(atk, num);





var atk = AT_USTRONG_2;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrongbig"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //post start
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++; //hit
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);

num++; //endlag
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -170);
set_hitbox_value(atk, num, HG_WIDTH, 30);
set_hitbox_value(atk, num, HG_HEIGHT, 36);
set_hitbox_value(atk, num, HG_PRIORITY, 9);
set_hitbox_value(atk, num, HG_DAMAGE, 10);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 10 + has_rune("F"));
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1.2 + .1*has_rune("F"));
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_bow_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -102);
set_hitbox_value(atk, num, HG_WIDTH, 32);
set_hitbox_value(atk, num, HG_HEIGHT, 150);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 9 + has_rune("F"));
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .9 + .1*has_rune("F"));
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

set_num_hitboxes(atk, num);