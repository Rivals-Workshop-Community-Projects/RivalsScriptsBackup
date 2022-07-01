// Hedge Clip Hitbox

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 1)
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 30);

set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 10 * 32);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 2 * 32);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, 50);

set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, /*sprite_get("skullon")); //*/asset_get("empty_sprite"));

