set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(49, AG_NUM_WINDOWS, 9);

set_window_value(49, 1, AG_WINDOW_LENGTH, 5);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_start"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Transformation
set_window_value(49, 2, AG_WINDOW_LENGTH, 16);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_big"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 15);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 12);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(49, 3, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

//Slam
set_window_value(49, 4, AG_WINDOW_LENGTH, 15);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(49, 4, AG_WINDOW_SFX_FRAME, 14);
set_window_value(49, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

//Slam Active
set_window_value(49, 5, AG_WINDOW_LENGTH, 3);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(49, 5, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

//Dash Startup
set_window_value(49, 6, AG_WINDOW_LENGTH, 25);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(49, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 6, AG_WINDOW_SFX, asset_get("sfx_mol_huge_explode"));
set_window_value(49, 6, AG_WINDOW_SFX_FRAME, 14);
set_window_value(49, 6, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_VSPEED_TYPE, 1);

//Dash
set_window_value(49, 7, AG_WINDOW_LENGTH, 6);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(49, 7, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(49, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 8, AG_WINDOW_LENGTH, 54);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(49, 8, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 8, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(49, 8, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag
set_window_value(49, 9, AG_WINDOW_LENGTH, 45);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(49, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 9, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 5);
set_hitbox_value(49, 1, HG_LIFETIME, 3);
set_hitbox_value(49, 1, HG_HITBOX_X, 68);
set_hitbox_value(49, 1, HG_HITBOX_Y, -90);
set_hitbox_value(49, 1, HG_WIDTH, 412);
set_hitbox_value(49, 1, HG_HEIGHT, 174);
set_hitbox_value(49, 1, HG_PRIORITY, 4);
set_hitbox_value(49, 1, HG_DAMAGE, 15);
set_hitbox_value(49, 1, HG_ANGLE, 361);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_HIT_SFX,  asset_get("sfx_blow_heavy2"));

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 7);
set_hitbox_value(49, 2, HG_LIFETIME, 60);
set_hitbox_value(49, 2, HG_HITBOX_X, 50);
set_hitbox_value(49, 2, HG_HITBOX_Y, -90);
set_hitbox_value(49, 2, HG_WIDTH, 380);
set_hitbox_value(49, 2, HG_HEIGHT, 174);
set_hitbox_value(49, 2, HG_PRIORITY, 4);
set_hitbox_value(49, 2, HG_DAMAGE, 19);
set_hitbox_value(49, 2, HG_ANGLE, 361);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 2, HG_HIT_SFX,  asset_get("sfx_burnconsume"));
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, smokeconsume_fx_bot);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_Y_OFFSET, 32);
