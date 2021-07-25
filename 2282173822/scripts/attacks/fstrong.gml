set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_COOLDOWN, strong_cooldown_max);
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 0); // -32
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45); // 60
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
// set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, spr_fstrong_proj);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 0); //overwritten in atk update
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.14);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 3.4); // 3.2
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
// set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);