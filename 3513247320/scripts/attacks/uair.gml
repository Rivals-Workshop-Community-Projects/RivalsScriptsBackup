var atk = AT_UAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, true);
set_attack_value(atk, AG_LANDING_LAG, 10);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 11);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, sound_get("dair"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 10);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_VSPEED, -4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 25);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 40);
set_hitbox_value(atk, hit, HG_HITBOX_X, 5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_WIDTH, 40);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 2);
set_hitbox_value(atk, hit, HG_ANGLE, 90);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, hit, HG_SDI_MULTIPLIER, .2);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("megaman_uair_proj"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(atk, hit, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(atk, hit, HG_PROJECTILE_AIR_FRICTION, 0.5);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_WRA_WIND_SMALL);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_bird_sidespecial_start"));
set_hitbox_value(atk, hit, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(atk, hit, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_PARRY_STUN, 1);

set_num_hitboxes(atk, hit);