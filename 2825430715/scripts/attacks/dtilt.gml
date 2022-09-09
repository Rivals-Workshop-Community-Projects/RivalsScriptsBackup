set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("stump"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT, AG_CATEGORY, 2);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 12);


set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 44);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
