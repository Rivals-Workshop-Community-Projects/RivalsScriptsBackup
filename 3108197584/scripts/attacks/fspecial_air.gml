set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));


//1 startup
var num = 1;
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_SFX, sound_get("sfx_sniper_load"));
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

//2 fly idle
num++;
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_TYPE, 1 + 8*has_rune("M"));
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_LENGTH, 100);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

//3 fire fly
num++;
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

//4 endlag
num++;
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, num);


num = 1;
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_VISUAL_EFFECT, 1);

num++;
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_ANGLE, 45 - 135*has_rune("H"));
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_AIR, num, HG_VISUAL_EFFECT, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);