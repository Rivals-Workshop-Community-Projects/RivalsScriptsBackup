var atk = AT_DSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);

num++; //look for
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);

num++; //grab
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num=1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_WIDTH, 100);
set_hitbox_value(atk, num, HG_HEIGHT, 100);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 1);
set_hitbox_value(atk, num, HG_SHAPE, 0);
set_hitbox_value(atk, num, HG_ANGLE, 30);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_bow_big);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_WIDTH, 100);
set_hitbox_value(atk, num, HG_HEIGHT, 100);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_SHAPE, 0);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_bow_big);