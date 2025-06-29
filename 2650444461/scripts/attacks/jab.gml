set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, true);

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HITPAUSE_FRAME, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);

//pokeball
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 20);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, pokeball_sprite);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 6.25);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_AIR_FRICTION, .015);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);