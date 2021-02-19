set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_tauntspin"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 6);

//throw and spin
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//grab
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("sfx_tauntswipe"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 7);

//strike a pose~!
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_WHIFFLAG, 1); //:trollsmile:

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 45);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("sfx_swordlight"));
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_proj"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 2.5);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_AIR_FRICTION, 0.025);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);