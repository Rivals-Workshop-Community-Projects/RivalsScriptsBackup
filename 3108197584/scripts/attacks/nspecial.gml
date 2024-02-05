set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

//1 startup
var num = 1;
set_window_value(AT_NSPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_SFX, sound_get("sfx_shotload2"));

//2 hatch open
num++;
set_window_value(AT_NSPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 4);

//3 fire 1
num++;
set_window_value(AT_NSPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_HSPEED, -3);

//4 fire 2
num++;
set_window_value(AT_NSPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_HSPEED, -3);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_GOTO, 5);

//5 endlag
num++;
set_window_value(AT_NSPECIAL, num, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 13);

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, num);

var num = 1;
set_hitbox_value(AT_NSPECIAL, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, num, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_missile"));
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_missile_coll"));
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_NSPECIAL, num, HG_HITBOX_X, -10);
set_hitbox_value(AT_NSPECIAL, num, HG_HITBOX_Y, -47);
set_hitbox_value(AT_NSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, num, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, num, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, num, HG_VISUAL_EFFECT, missile_explode);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_DESTROY_EFFECT, missile_explode);
set_hitbox_value(AT_NSPECIAL, num, HG_HIT_SFX, sound_get("sfx_missile_hit"));

num++;
set_hitbox_value(AT_NSPECIAL, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, num, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, num, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_missile"));
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_missile_coll"));
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_NSPECIAL, num, HG_HITBOX_X, 22);
set_hitbox_value(AT_NSPECIAL, num, HG_HITBOX_Y, -47);
set_hitbox_value(AT_NSPECIAL, num, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, num, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, num, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, num, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, num, HG_VISUAL_EFFECT, missile_explode);
set_hitbox_value(AT_NSPECIAL, num, HG_PROJECTILE_DESTROY_EFFECT, missile_explode);
set_hitbox_value(AT_NSPECIAL, num, HG_HIT_SFX, sound_get("sfx_missile_hit"));

set_num_hitboxes(AT_NSPECIAL, num);