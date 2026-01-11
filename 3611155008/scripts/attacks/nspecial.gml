var atk = AT_NSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 22);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_SFX, sound_get("CharSFX_Bow_Preattack"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);

num++; //fire
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, num, AG_WINDOW_HSPEED, -4);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //end
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

num++; //charge extra
set_window_value(atk, num, AG_WINDOW_LENGTH, 25);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1)

num++; //charge extra extra
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //firebig
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, num, AG_WINDOW_HSPEED, -6);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

num++; //end
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("arrowstrong"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 40);
set_hitbox_value(atk, num, HG_HITBOX_X, 50);
set_hitbox_value(atk, num, HG_HITBOX_Y, -29);
set_hitbox_value(atk, num, HG_PROJECTILE_HSPEED, 30);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 30);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 6);
set_hitbox_value(atk, num, HG_LIFETIME, 8);
set_hitbox_value(atk, num, HG_HITBOX_X, 40 + room_width/2);
set_hitbox_value(atk, num, HG_HITBOX_Y, -29);
set_hitbox_value(atk, num, HG_WIDTH, room_width);
set_hitbox_value(atk, num, HG_HEIGHT, 30);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_SHAPE, 1);
set_hitbox_value(atk, num, HG_DAMAGE, 9);
set_hitbox_value(atk, num, HG_ANGLE, 40);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);

set_num_hitboxes(atk, num);