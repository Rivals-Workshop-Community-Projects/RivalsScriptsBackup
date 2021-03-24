set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTILT, AG_AIR_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -11);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("BlueSwish2"));

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

if has_rune("C") {
    set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -13);
} else {
    reset_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED);
}

set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 17);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("Hit2"));

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 29);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("Hit2"));

//sweetspot
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -87);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 25);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("Hit1"));
