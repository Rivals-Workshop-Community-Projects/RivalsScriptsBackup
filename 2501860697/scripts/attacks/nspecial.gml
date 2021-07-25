set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));


set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_pop"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_absa_uair"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 10);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);


set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_absa_kickhit"));
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 10);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 27);


set_num_hitboxes(AT_NSPECIAL, 2);


set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.0);



