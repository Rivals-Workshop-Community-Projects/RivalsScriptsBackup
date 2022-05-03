set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, true);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_NO_PARRY_STUN, true);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
// set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 12);
// set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_num_hitboxes(AT_DATTACK,2);

//Spring
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 700);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_SPRITE, sprite_get("spring"));
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_DESTROY_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DATTACK, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_DATTACK, 1, HG_EFFECT, 9);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));