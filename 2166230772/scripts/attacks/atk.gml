//this is the bullet
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 40);//41


set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bullet"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4.5);//4.8

set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);

set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);


//this is the spark
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);//41


set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 32);

set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);


//this is the explosion
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 6);


set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 380);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 380);

set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);


//this is the trailhitbox
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 9);

set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 240);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 240);

set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);








