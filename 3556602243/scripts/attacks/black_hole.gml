var curr_attack = AT_NSPECIAL
var _num = 1;
//Black Hole
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 0);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 32);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, 0);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 35);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 3);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 70);
set_hitbox_value(curr_attack, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(curr_attack, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(curr_attack, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5);

set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("luna_proj"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_BLUE_SMALL);

_num++;