set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("gun_reload"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("fair_unload"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);

set_num_hitboxes(AT_FAIR, 10);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1); //Multi hit
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("fair_hit"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_FAIR, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 5); //Final hit consume
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 55);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 5, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, sound_get("fair_finalhit"));
set_hitbox_value(AT_FAIR, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 2); //Bullet 1
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
//set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 90);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 70);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -105);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FAIR, 6, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_DESTROY_EFFECT, BulletHit1);

set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 2); //Bullet 2
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 90);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 80);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -80);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FAIR, 7, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_DESTROY_EFFECT, BulletHit1);

set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 2); //Bullet 3
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 90);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 90);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FAIR, 8, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_DESTROY_EFFECT, BulletHit1);

set_hitbox_value(AT_FAIR, 9, HG_HITBOX_TYPE, 2); //Bullet 4
set_hitbox_value(AT_FAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FAIR, 9, HG_LIFETIME, 90);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_X, 90);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FAIR, 9, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 9, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 9, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FAIR, 9, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_DESTROY_EFFECT, BulletHit1);

set_hitbox_value(AT_FAIR, 10, HG_HITBOX_TYPE, 2); //Bullet 5
set_hitbox_value(AT_FAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FAIR, 10, HG_LIFETIME, 90);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_X, 80);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_Y, 15);
set_hitbox_value(AT_FAIR, 10, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 10, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FAIR, 10, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_DESTROY_EFFECT, BulletHit1);