set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

// Not hit Endlag
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

// Hit version
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, -3);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_CANCEL_FRAME, 1);


set_num_hitboxes(AT_BAIR, 2);

//Back Hit
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Front Hit
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_BAIR, 2, HG_SDI_MULTIPLIER, 1);
