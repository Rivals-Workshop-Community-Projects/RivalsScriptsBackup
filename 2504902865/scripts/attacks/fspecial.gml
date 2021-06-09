set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH)-1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//whiff
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

///////////////////player grab
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH)-1);

//up
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, -12);


//fall
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 10);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 14);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, -6);


//////////////////////house
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSPECIAL,9,AG_WINDOW_LENGTH)-1);

//up
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED, -14);

//fall
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 10);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED, 10);

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_SFX, asset_get("sfx_watergun_splash"));
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSPECIAL,12,AG_WINDOW_LENGTH)-1);


set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_VSPEED, -6);

set_num_hitboxes(AT_FSPECIAL, 3);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, get_window_value(AT_FSPECIAL,2,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, get_window_value(AT_FSPECIAL,7,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, get_window_value(AT_FSPECIAL,12,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 105);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);