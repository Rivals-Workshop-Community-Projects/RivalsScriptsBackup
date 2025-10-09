var curr_attack = AT_DSPECIAL
var _num = 1;
//Homing Missile
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 6);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 32);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 32);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 1);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 5); //Damage is based amount
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(curr_attack, _num, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(curr_attack, _num, HG_ANGLE, 90);
set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, HFX_ELL_BOOM_HIT);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, false);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_HIT_LOCKOUT, 0);
//set_hitbox_value(curr_attack, _num, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PARRY_STUN, true);
_num++;