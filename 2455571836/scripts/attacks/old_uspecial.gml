/*// notes:
// only tweaked some sound related things here. the magic happens in
// attack_update.gml

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("glace_hurt_box"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 1);

//part 1
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 3);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 8);

//part 2 (thank you in advance for commenting this)
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 15);
set_window_value(AT_USPECIAL, 5, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 2.0);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, sound_get("glace_land"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_USPECIAL,2);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -5);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 33);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 6);*/