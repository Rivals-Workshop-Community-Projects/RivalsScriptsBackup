set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("nspecial"));
//set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 5);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);

//giga drain

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_EXTRA_2, 1, AG_USES_CUSTOM_GRAVITY , 1.0);
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("nspecialStart"));
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_rag_plant_shoot"));//sfx_rag_plant_eat
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH)-1);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 180);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 180);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 9);
//set_hitbox_value(AT_EXTRA_2, 1, HG_EFFECT, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 2);//7);//9);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));