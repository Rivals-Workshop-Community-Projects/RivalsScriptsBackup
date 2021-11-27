if (is_master_player) exit; //efficiency: don't load attacks on master player

//minun's uspecial.

set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("m_uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 10);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);


//startup 1 (this window is skipped when the move is chained into)
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("uspec_prep"));

//startup 2
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("uspec_dash"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) - 1);

//zoom
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);


//recovery (chaining into 2nd uspecial happens here)
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);

//fall
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7); //pratfall after
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH) + 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 24);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("uspec_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);

//sweetspot
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 7); //more damage than plusle's
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90); //upward angle
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6); //higher base, lower scaling than plusle's
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 157); //extra large
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USPECIAL_2, 2, HG_SDI_MULTIPLIER, 0.5); //less SDI



