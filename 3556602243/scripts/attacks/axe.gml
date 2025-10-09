var curr_attack = AT_USPECIAL
var _num = 1;
//Axe
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 9999);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 50);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 50);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 99);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 0); //Damage is based on base damage
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, _num, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, 301);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 90);
set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("suicho_axe"));
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, false);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_HIT_LOCKOUT, 0);
//set_hitbox_value(curr_attack, _num, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PARRY_STUN, true);
_num++;