var atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

// WINDOWS 1 - 5: SET UP WAYPOINT

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_flareo_rod"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 6);

win_num++; //charge
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 60);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_flareo_rod"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 29);

win_num++; //smack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 1);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 3);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hit_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 52);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hit_num, HG_WIDTH, 64);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hit_num, HG_ANGLE, 50);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hit_num, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hit_num);