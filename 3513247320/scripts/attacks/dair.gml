var atk = AT_DAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, true);
set_attack_value(atk, AG_LANDING_LAG, 8);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 13);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, sound_get("dair"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 12);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_VSPEED, -4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 25);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 30);
set_hitbox_value(atk, hit, HG_HITBOX_X, 5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -10);
set_hitbox_value(atk, hit, HG_WIDTH, 40);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 8); // 6
set_hitbox_value(atk, hit, HG_ANGLE, 270);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.65); // .3
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 9); // 6
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("megaman_dair_proj"));
set_hitbox_value(atk, hit, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("megaman_dair_proj_collision"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(atk, hit, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(atk, hit, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(atk, hit, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_WRA_WIND_BIG);
set_hitbox_value(atk, hit, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hit, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit, HG_PROJECTILE_PARRY_STUN, 1);

set_num_hitboxes(atk, hit);