set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("red_dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("red_dspecial"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("Blue_Mode"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 85);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, blue_stab_3 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, sound_get("Hit2"));