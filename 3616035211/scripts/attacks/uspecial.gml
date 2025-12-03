var atk = AT_USPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 35);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_swallow"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, num, AG_WINDOW_SFX, sound_get("skunkburst"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

//active
num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 7);
set_window_value(atk, num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, num, AG_WINDOW_VSPEED, -18);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -12);
set_hitbox_value(atk, num, HG_WIDTH, 155);
set_hitbox_value(atk, num, HG_HEIGHT, 73);
set_hitbox_value(atk, num, HG_PRIORITY, 3);
set_hitbox_value(atk, num, HG_DAMAGE, 10);
set_hitbox_value(atk, num, HG_EFFECT, 0);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

set_num_hitboxes(atk, num);