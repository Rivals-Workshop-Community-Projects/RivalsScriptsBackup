set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecground"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecground_hurt"));

//anger frame
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

//come on!
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//come on!2
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//duck/endlag
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//duck/endlag
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

//Bowser Jr
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 160);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, -48);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("bowserjr_tackle_projectile"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
