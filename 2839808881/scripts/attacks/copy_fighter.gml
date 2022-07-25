set_attack_value(AT_COPY_FIGHTER, AG_CATEGORY, 2);
set_attack_value(AT_COPY_FIGHTER, AG_SPRITE, sprite_get("ability_fighter"));
set_attack_value(AT_COPY_FIGHTER, AG_HURTBOX_SPRITE, sprite_get("ability_fighter_hurt"));
set_attack_value(AT_COPY_FIGHTER, AG_NUM_WINDOWS, 4);
set_attack_value(AT_COPY_FIGHTER, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_FIGHTER, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIGHTER, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_FIGHTER, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_FIGHTER, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_FIGHTER, 1, AG_WINDOW_SFX, sound_get("sfx_krdl_fighter_rising_break"));
set_window_value(AT_COPY_FIGHTER, 1, AG_WINDOW_SFX_FRAME, 11);

//active/rising
set_window_value(AT_COPY_FIGHTER, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIGHTER, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_COPY_FIGHTER, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_FIGHTER, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_COPY_FIGHTER, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_COPY_FIGHTER, 2, AG_WINDOW_HSPEED_TYPE, 2);

//active/rising
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_COPY_FIGHTER, 3, AG_WINDOW_VSPEED_TYPE, 2);

//endlag
set_window_value(AT_COPY_FIGHTER, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_COPY_FIGHTER, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_COPY_FIGHTER, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_COPY_FIGHTER, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_COPY_FIGHTER, 4);

set_hitbox_value(AT_COPY_FIGHTER, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_WIDTH, 53);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_ANGLE, 80);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_COPY_FIGHTER, 1, HG_HIT_SFX, sound_get("sfx_krdl_fighter_blow1"));

set_hitbox_value(AT_COPY_FIGHTER, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_WIDTH, 52);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_ANGLE, 90);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_COPY_FIGHTER, 2, HG_HIT_SFX, sound_get("sfx_krdl_fighter_blow1"));

set_hitbox_value(AT_COPY_FIGHTER, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_WIDTH, 52);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_HEIGHT, 67);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_ANGLE, 90);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_COPY_FIGHTER, 3, HG_HIT_SFX, sound_get("sfx_krdl_fighter_blow1"));

set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_WIDTH, 60);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_ANGLE, 80);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_COPY_FIGHTER, 4, HG_HIT_SFX, sound_get("sfx_krdl_fire_hit"));