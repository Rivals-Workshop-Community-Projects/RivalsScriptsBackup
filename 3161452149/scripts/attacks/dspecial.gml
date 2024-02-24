var at = AT_DSPECIAL;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(at, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(at, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 44);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 9);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 60);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 7);
set_hitbox_value(at, num, HG_SHAPE, 0);
set_hitbox_value(at, num, HG_ANGLE, 85);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(at, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(at, num, HG_FORCE_FLINCH, 2);
set_hitbox_value(at, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(at, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(at, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(at, num, HG_EXTRA_CAMERA_SHAKE, 1);

set_num_hitboxes(at, num);