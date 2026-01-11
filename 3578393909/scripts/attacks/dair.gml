var atk = AT_DAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_02"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 14);

win_num++; //attack 1
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, -2);


win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, 50);
set_hitbox_value(atk, hit_num, HG_WIDTH, 64);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hit_num, HG_ANGLE, 270);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.7); 
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hit_num);