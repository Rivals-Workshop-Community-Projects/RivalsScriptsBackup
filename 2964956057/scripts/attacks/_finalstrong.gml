var atk = 49;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("_final_strong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("_final_strong_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 69);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("unt_slice"));

window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -15);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 150);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 10);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 15);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 120);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -50);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -50);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 9);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 15);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 135);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 70);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -50);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 10);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 15);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

set_num_hitboxes(attack, hitbox_num);