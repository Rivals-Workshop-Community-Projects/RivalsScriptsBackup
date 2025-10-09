var curr_attack = AT_FSTRONG
var _num = 3;
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, _num, HG_HITBOX_X, 32);
set_hitbox_value(curr_attack, _num, HG_HITBOX_Y, -25);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 96);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, _num, HG_SHAPE, 0);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 3);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 30);
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(curr_attack, _num, HG_EFFECT, 0);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 4);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
//set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, 0);

//Kragg Assist
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
//Assist Stuff
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 2);
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
//Fireball
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, _num, HG_HITBOX_X, 60);
set_hitbox_value(curr_attack, _num, HG_HITBOX_Y, -26);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 90);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, _num, HG_SHAPE, 0);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 50);
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(curr_attack, _num, HG_EFFECT, 0);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 3);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 16);
//set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, 0);
set_hitbox_value(curr_attack, _num, HG_HITSTUN_MULTIPLIER, .5);

//Kragg Assist
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
//Assist Stuff
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, _num, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(curr_attack, _num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 2);

//Projectile Stuff
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, asset_get("zet_proj_spr"));
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, asset_get("zet_proj_frame1_mask"));

set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(curr_attack, _num, 41, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 60);