set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 124);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 3); 
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("blank_sheet"));
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, sprite_get("blank_sheet"));
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FTILT, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FTILT, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);