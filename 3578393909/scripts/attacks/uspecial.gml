var atk = AT_USPECIAL;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("dragons_breath"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 11);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 2);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, -13);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 2);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 9);


set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //grab
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 15);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 0);
set_hitbox_value(atk, hit_num, HG_ANGLE, 0);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hit_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hit_num++; //rocket blast
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, -40);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, 16);
set_hitbox_value(atk, hit_num, HG_WIDTH, 48);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hit_num, HG_HIT_LOCKOUT, 5);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hit_num, HG_ANGLE, 255);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.7); 
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_num_hitboxes(atk, hit_num);