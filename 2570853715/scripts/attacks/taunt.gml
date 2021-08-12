set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "fumo (taunt)");
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("projectile_invis"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("fumo"));

set_num_hitboxes(AT_TAUNT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_MUNO_HITBOX_NAME, "fumo");
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, -90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("spike"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);

set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "fumo");