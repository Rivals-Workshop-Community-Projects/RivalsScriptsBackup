set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_glide_start"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

//Initial Active Time
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

//Looping Frames
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);

//Aerial Endlag
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

//Landing Hitbox
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_ice_shatter"));

//Landing Endlag
set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, asset_get("sfx_waveland_eta"));

set_num_hitboxes(AT_DAIR, 4);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.65);
//set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, -1);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
//set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, hit_sprites[0]);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 125);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 100);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.35);
//set_hitbox_value(AT_DAIR4 2, HG_VISUAL_EFFECT, hit_sprites[0]);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));