set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 10);

//charge
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);

//whiff
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);

//grab
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_zetter_upb_hit"));
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//descend
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED, 14);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 20);

//land
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_SFX, sound_get("sfx_sideb"));
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 22);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("sfx_tech"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 260);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("sfx_explosion"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);