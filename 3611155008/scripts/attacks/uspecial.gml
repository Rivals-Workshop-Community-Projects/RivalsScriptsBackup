var atk = AT_USPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++; //look for
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++; //grab
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++; //reel in
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);

num++; //endlag
set_window_value(atk, num, AG_WINDOW_TYPE, 7);
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 13);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, -20);
set_hitbox_value(atk, num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, num, HG_WIDTH, 40);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_SHAPE, 0);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_EXTRA_HITPAUSE, 40);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -20);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_SHAPE, 0);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 125);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .4);

set_num_hitboxes(atk, num);

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
set_hitbox_value(atk, num, HG_LIFETIME, 2);
set_hitbox_value(atk, num, HG_WIDTH, 200);
set_hitbox_value(atk, num, HG_HEIGHT, 20);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 0);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 0);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);