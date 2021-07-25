set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9); //old 4
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7); // old 10
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.5);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 11); // old 10
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);





set_num_hitboxes(AT_FAIR,2);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);//old 6
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.75);//old 0.65
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);




