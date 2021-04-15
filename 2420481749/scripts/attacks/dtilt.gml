set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//looks at bobby
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 11);

//bobby tackles as Mario says hell yeah
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);

//last pose
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DTILT,1);

//Bobbert Omb
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hurt"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("bob"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, bob_hit);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 5.5);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, -1.8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
