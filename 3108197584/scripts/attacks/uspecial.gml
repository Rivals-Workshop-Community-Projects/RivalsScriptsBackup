set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);

var num = 1;
set_window_value(AT_USPECIAL, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, num, AG_WINDOW_SFX, sound_get("sfx_uspecial_charge"));
set_window_value(AT_USPECIAL, num, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, num, AG_WINDOW_HSPEED_TYPE, 1);

num++;
set_window_value(AT_USPECIAL, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, num, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, num, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, num, AG_WINDOW_HSPEED_TYPE, 1);

num++;
set_window_value(AT_USPECIAL, num, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, num, AG_WINDOW_VSPEED, -20);
set_window_value(AT_USPECIAL, num, AG_WINDOW_VSPEED_TYPE, 2);

num++;
set_window_value(AT_USPECIAL, num, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, num, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, num, AG_WINDOW_ANIM_FRAME_START, 11);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, num);

var num = 1;
set_hitbox_value(AT_USPECIAL, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, num, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, num, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, num, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, num, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, num, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, num, HG_HITPAUSE_SCALING, .8);

num++;
set_hitbox_value(AT_USPECIAL, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, num, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, num, HG_HITBOX_Y, 20);
set_hitbox_value(AT_USPECIAL, num, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, num, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, num, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, num, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL, num, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, num, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, num, HG_HITPAUSE_SCALING, .8);

set_num_hitboxes(AT_USPECIAL, num);