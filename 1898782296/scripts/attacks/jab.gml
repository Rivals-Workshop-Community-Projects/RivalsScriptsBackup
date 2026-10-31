set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, jab_sprite);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_AIR_SPRITE, jab_sprite);

//Startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Shoot 1
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("small_shoot"));

//Endlag 1
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);

// Startup 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_VSPEED, -10);
set_window_value(AT_JAB, 4, AG_WINDOW_VSPEED_TYPE, 2);

//Shoot 2
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("small_shoot"));

//Endlag final
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4)
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.35)
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 100);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, jab_proj_sprite);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, sprite_get("jab_proj"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DESTROY_EFFECT, jab_fx);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("hit_smb2"));
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.1);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5)
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.35)
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, jab_proj_sprite);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, sprite_get("jab_proj"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DESTROY_EFFECT, jab_fx);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("hit_smb2"));
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);