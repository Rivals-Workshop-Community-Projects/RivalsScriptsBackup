var atk = AT_FSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //dash
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //miss
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, num, AG_WINDOW_HSPEED, 4);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

num++; //charge startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //charge
set_window_value(atk, num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //charge post start
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //boom
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //end
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 26);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 12);
set_hitbox_value(atk, num, HG_HITBOX_X, -20);
set_hitbox_value(atk, num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 120);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_EXTRA_HITPAUSE, 30);

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
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_WIDTH, 30 + 120*has_rune("B"));
set_hitbox_value(atk, num, HG_HEIGHT, 30 + 120*has_rune("B"));
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 120);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);