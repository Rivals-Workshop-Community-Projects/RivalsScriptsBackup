var curr_attack = AT_DATTACK
var _num = 1;
//Urgh
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 9999);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 30);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 50);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 1);
set_hitbox_value(curr_attack, _num, HG_SHAPE, 2);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 5); //Damage is based on base damage
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(curr_attack, _num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, _num, HG_ANGLE, 60);
set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PLASMA_SAFE, true);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_HIT_LOCKOUT, 0);
//set_hitbox_value(curr_attack, _num, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PARRY_STUN, true);
_num++;