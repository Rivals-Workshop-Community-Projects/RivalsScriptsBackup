set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get( "endeaver" ));


set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);



set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, -2.5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get( "endeaver" ));


set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get( "acrobatics1" ));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 21);


set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START,25);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);







set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get( "archen_ping" ));
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);