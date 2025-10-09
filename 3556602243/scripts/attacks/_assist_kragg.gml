var curr_attack = AT_FSTRONG
var _num = 1;
//Homing Missile
//set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 1);
//set_hitbox_value(curr_attack, _num, HG_LIFETIME, 120);
//set_hitbox_value(curr_attack, _num, HG_WIDTH, 20);
//set_hitbox_value(curr_attack, _num, HG_HEIGHT, 20);
//set_hitbox_value(curr_attack, _num, HG_PRIORITY, 1);
//set_hitbox_value(curr_attack, _num, HG_DAMAGE, 0); //Damage is based on base damage
//set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .8);
//set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, .8);
//set_hitbox_value(curr_attack, _num, HG_HITSTUN_MULTIPLIER, .5);
//set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
//set_hitbox_value(curr_attack, _num, HG_ANGLE, 90);
//set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, HFX_ELL_BOOM_HIT);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("missile"));
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, false);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, false);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, false);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(curr_attack, _num, HG_LIFETIME, 5);
set_hitbox_value(curr_attack, _num, HG_HITBOX_X, 41);
set_hitbox_value(curr_attack, _num, HG_HITBOX_Y, -43);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 84);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 70);
set_hitbox_value(curr_attack, _num, HG_SHAPE, 0);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 18);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 45);
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 155);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Kragg Assist
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
//Assist Stuff
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, _num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(curr_attack, _num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 2);


//set_hitbox_value(curr_attack, _num, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PARRY_STUN, true);
_num++;