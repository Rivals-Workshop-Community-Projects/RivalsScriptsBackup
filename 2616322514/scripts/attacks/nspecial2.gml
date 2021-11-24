set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_NAME, "NSpecial");
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, -.5);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("sfx_shock_large"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);

set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 144);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 2);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 144);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 144);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, electric_hit);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, sound_get("sfx_electro_hit_med"));



set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "The first hitbox repeats itself up to 5 times");