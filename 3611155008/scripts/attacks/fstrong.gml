var atk = AT_FSTRONG;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
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
set_hitbox_value(atk, num, HG_HITBOX_X, 98);
set_hitbox_value(atk, num, HG_HITBOX_Y, -26);
set_hitbox_value(atk, num, HG_WIDTH, 52);
set_hitbox_value(atk, num, HG_HEIGHT, 28);
set_hitbox_value(atk, num, HG_PRIORITY, 8);
set_hitbox_value(atk, num, HG_DAMAGE, 9);
set_hitbox_value(atk, num, HG_ANGLE, 361);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 58);
set_hitbox_value(atk, num, HG_HITBOX_Y, -26);
set_hitbox_value(atk, num, HG_WIDTH, 90);
set_hitbox_value(atk, num, HG_HEIGHT, 28);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

set_num_hitboxes(atk, num);





var atk = AT_FSTRONG_2;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrongbig"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //post start
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
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
set_hitbox_value(atk, num, HG_HITBOX_X, 156);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 52);
set_hitbox_value(atk, num, HG_HEIGHT, 38);
set_hitbox_value(atk, num, HG_PRIORITY, 9);
set_hitbox_value(atk, num, HG_DAMAGE, 11);
set_hitbox_value(atk, num, HG_ANGLE, 40);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_bow_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 84);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 132);
set_hitbox_value(atk, num, HG_HEIGHT, 38);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 7);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 10);

set_num_hitboxes(atk, num);