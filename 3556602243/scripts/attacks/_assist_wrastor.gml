var curr_attack = AT_FSTRONG
var _num = 5;
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 15);
set_hitbox_value(curr_attack, _num, HG_HITBOX_X, 4);
set_hitbox_value(curr_attack, _num, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 50);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 50);
set_hitbox_value(curr_attack, _num, HG_SHAPE, 0);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 8);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 270);
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
//set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

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


