set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_EXTRA_2, AG_USES_CUSTOM_GRAVITY, 1);

//Alright let's spin
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

//SPEEN
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 0);

//ACK TO
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 0);

//Recovery :)
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, fx_smallhit2 );
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("bhit_medium_2"));