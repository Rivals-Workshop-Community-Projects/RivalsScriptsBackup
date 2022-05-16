set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_LANDING_LAG, 12);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("embiggening"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 1);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7); //this is good hitpause for a very strong kill move
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_EXTENDED_PARRY_STUN, -1);
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 1);