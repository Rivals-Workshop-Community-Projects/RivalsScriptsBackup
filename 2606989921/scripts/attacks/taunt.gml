set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_MSG_ALT_SPRITES, [sprite_get("taunt_alt1"), sprite_get("taunt_alt2")]);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 82);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("exe"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_TAUNT, 2, AG_WINDOW_GOTO, 7);

/// Hidden Reused frames for a "normal" taunt end
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 0);

// Perish Song hit
set_hitbox_value(AT_TAUNT, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 11, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 11, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 11, HG_PRIORITY, 8);
set_hitbox_value(AT_TAUNT, 11, HG_DAMAGE, 153);
set_hitbox_value(AT_TAUNT, 11, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 11, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_TAUNT, 11, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_TAUNT, 11, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_TAUNT, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 11, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT, 11, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_TAUNT, 11, HG_HIT_SFX, asset_get("sfx_war_horn"));
set_hitbox_value(AT_TAUNT, 11, HG_VISUAL_EFFECT, HFX_POM_YELL_BIG);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_DESTROY_EFFECT, 1); //none
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_PARRY_STUN, 0);