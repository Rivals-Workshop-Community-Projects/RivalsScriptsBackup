

set_attack_value(AT_AIR_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_AIR_DSPECIAL, AG_SPRITE, sprite_get("air_dspecial"));
set_attack_value(AT_AIR_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_AIR_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_AIR_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_AIR_DSPECIAL, AG_AIR_SPRITE, sprite_get("air_dspecial"));
set_attack_value(AT_AIR_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("air_dspecial_hurt"));
//set_attack_value(AT_AIR_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_LENGTH, 11); //9
set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_wra"));

set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_LENGTH, 99);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 10.5);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_VSPEED, 18);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_glide_featherout"));

set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2.0);

set_window_value(AT_AIR_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIR_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_AIR_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_AIR_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_AIR_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);


set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.0);




set_num_hitboxes(AT_AIR_DSPECIAL, 1);


set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_LIFETIME, get_window_value(AT_AIR_DSPECIAL, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_Y, 30);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

