set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dattack_scoot"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dattack_scoot"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dattack_scoot_hurt"));
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_ice_uspecial_jump"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 11);

//smear
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//active
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

//endlag
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .45);


set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 17);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -9);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 57);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 31);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 59);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_FINAL_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));