set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
if (!has_rune("A")){
set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
} else if (has_rune("A")){
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
}

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
if (!has_rune("A")){
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
} else if (has_rune("A")){
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 11);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
}

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
if (!has_rune("A")){
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
} else if (has_rune("A")){
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
}

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
if (!has_rune("A")){
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 3.9);
} else if (has_rune("A")){
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 5.5);
}
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_MUNO_HITBOX_NAME, "Early Hit");
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
if (!has_rune("A")){
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 0);
} else {
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 10);
}
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DATTACK, 2, HG_MUNO_HITBOX_NAME, "Late Hit");
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));