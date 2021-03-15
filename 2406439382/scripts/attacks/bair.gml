set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);


set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -8 - has_rune("D") * 3.5); 

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140 + has_rune("J") * 40 );
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 3);