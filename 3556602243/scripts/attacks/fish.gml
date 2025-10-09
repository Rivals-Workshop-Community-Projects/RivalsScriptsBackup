var curr_attack = AT_USTRONG
var _num = 1;
//fish
set_hitbox_value(curr_attack, _num, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, _num, HG_WINDOW, 2);
set_hitbox_value(curr_attack, _num, HG_LIFETIME, 300);
set_hitbox_value(curr_attack, _num, HG_WIDTH, 45);
set_hitbox_value(curr_attack, _num, HG_HEIGHT, 45);
set_hitbox_value(curr_attack, _num, HG_HITBOX_Y, -90);
set_hitbox_value(curr_attack, _num, HG_PRIORITY, 1);
set_hitbox_value(curr_attack, _num, HG_DAMAGE, 8);
set_hitbox_value(curr_attack, _num, HG_ANGLE, 85);
set_hitbox_value(curr_attack, _num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(curr_attack, _num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, _num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, _num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(curr_attack, _num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT, 150);
set_hitbox_value(curr_attack, _num, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(curr_attack, _num, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(curr_attack, _num, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_SPRITE, sprite_get("fish"));
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_HSPEED, -4);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(curr_attack, _num, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(curr_attack, _num, HG_EXTENDED_PARRY_STUN, false);

_num++;