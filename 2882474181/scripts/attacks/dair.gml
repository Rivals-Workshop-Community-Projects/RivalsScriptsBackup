set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//start
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("wind"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 0);

//down!
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 14);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0);

//spin
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("swing_shadowball"));

//bonk
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX, sound_get("hit_iron"));

//getup!!
set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//getup!!
set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_VSPEED, -3);


set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 84);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit_punch3"));
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.9);