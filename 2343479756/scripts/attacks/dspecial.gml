set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
//set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
//set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspecial"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 0);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);

//spin

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);


set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("hit_med_1"));

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("hit_med_1"));






