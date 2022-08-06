set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swish_weak"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_num_hitboxes(AT_FSTRONG, 0);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 600);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("green_shell"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("green_shell"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("green_shell_hurt"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, shell_destroy);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("ShellHit"));

set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_MISC_ADD, "Hsp goes from 10 to 15 after being parried. Damage and Knockback values are halved when in the air. Has 100 frames of cooldown.");
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_MISC_ADD, "There's a actually 6 more frames of startup after the number mentioned above.");
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH)));