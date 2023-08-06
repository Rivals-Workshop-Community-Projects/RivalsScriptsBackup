atk = AT_FSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 0);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("chai_ready"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 8);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);

window_num ++; //throw
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));

window_num ++; //throw hold
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 2);

window_num ++; //whifflag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////


hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 13);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 43);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 43);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.08);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 14);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -43);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 83);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 2.5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 129);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 16);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -50);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -43);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 65);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 83);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.85);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 2.5);
//set_hitbox_value(atk, hitbox_num, HG_EFFECT, 11);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 321);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hitbox_num);