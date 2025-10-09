var curr_attack = AT_FSTRONG
var _num = 2;
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, _num, HG_HITBOX_X, 45);
set_hitbox_value(curr_attack, _num, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 95);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, _num, HG_SHAPE, 0);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 9);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 75);
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 149);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
//set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

//Kragg Assist
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
//Assist Stuff
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, _num, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(curr_attack, _num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 2);


//set_hitbox_value(curr_attack, _num, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PARRY_STUN, true);
_num++;