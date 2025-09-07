var atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 10);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 3);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 5);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 6);


win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 9);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 14);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -25);
set_hitbox_value(atk, hit, HG_WIDTH, 40);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);
set_hitbox_value(atk, hit, HG_PRIORITY, 10);
set_hitbox_value(atk, hit, HG_DAMAGE, 0);
set_hitbox_value(atk, hit, HG_ANGLE, 60);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hit, HG_TECHABLE, 1);
set_hitbox_value(atk, hit, HG_THROWS_ROCK, 2);

set_num_hitboxes(atk, hit);