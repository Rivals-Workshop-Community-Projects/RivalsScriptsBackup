set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("taunt1"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("y_e_a_h"));

set_num_hitboxes(AT_FTHROW,2);
/*
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FTHROW, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 1);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 84);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FTHROW, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, -1);

