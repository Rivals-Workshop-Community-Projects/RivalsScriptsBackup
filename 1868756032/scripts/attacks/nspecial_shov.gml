set_attack_value(AT_NSPECIAL_SHOV, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_SHOV, AG_SPRITE, sprite_get("AT_NSPECIAL_SHOV"));
set_attack_value(AT_NSPECIAL_SHOV, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL_SHOV, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_SHOV, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_SHOV_AIR"));
set_attack_value(AT_NSPECIAL_SHOV, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_SHOV_hurt"));

set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_SFX, asset_get("sfx_fishing_rod_cast"));
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_SHOV, 2, AG_WINDOW_TYPE, 1); //thing going down
set_window_value(AT_NSPECIAL_SHOV, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_SHOV, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_SHOV, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_SHOV, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_TYPE, 1); //alert
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_SFX, asset_get("sfx_fishing_rod_catch"));
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_TYPE, 1); //thing coming up
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_SFX, asset_get("sfx_fishing_rod_reel"));
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_SHOV, 5, AG_WINDOW_TYPE, 1); //endlag
set_window_value(AT_NSPECIAL_SHOV, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_SHOV, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_SHOV, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_SHOV, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_TYPE, 1); //success endlag
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOV, 6, AG_WINDOW_HSPEED_TYPE, 1);


set_num_hitboxes(AT_NSPECIAL_SHOV, 4);

set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PROJECTILE_SPRITE, sprite_get("hook_proj"));
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PROJECTILE_MASK, sprite_get("hook_proj"));
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PROJECTILE_VSPEED, 8);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_SHOV, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_SPRITE, sprite_get("hook_proj"));
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_MASK, sprite_get("hook_proj"));
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_SHOV, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_DAMAGE, -5);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HIT_SFX, asset_get("sfx_fish_collect"));
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_SPRITE, sprite_get("maxim_spr"));
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_MASK, sprite_get("maxim_spr"));
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_AIR_FRICTION, 0.08);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_SHOV, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);