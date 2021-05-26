set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX,  asset_get("sfx_clairen_sword_deactivate"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 9);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -16);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 280);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);



