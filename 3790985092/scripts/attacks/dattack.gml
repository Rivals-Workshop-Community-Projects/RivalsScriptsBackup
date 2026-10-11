set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.25);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.25);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(AT_DATTACK, 1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//projectiles
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 24);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, fx_sweetspot);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1") );
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("proj1"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_GRAVITY, .5); //.5 //.25
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_VSPEED, -4); //-4 //-2
set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 24);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, fx_sweetspot);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1") );
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, sprite_get("proj1"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GRAVITY, .5); //.5 //.25
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_VSPEED, -4); //-4 //-2
set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GROUND_BEHAVIOR, -1);