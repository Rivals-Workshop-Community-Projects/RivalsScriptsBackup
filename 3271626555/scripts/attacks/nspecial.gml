set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 13);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("nspecial_charge"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

//Level 1 (Hold)
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Level 2 (Hold)
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Level 3 (Hold)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//Level 4 (Hold)
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);

//Level 5 (Hold)
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_GOTO, 12);

//Level 1 (Tap)
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_GOTO, 12);

//Level 2 (Tap)
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 12);

//Level 3 (Tap)
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_GOTO, 12);

//Level 4 (Tap)
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_GOTO, 12);

//Level 5 (Tap)
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 6);

//Active (Cast)
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_SFX, sound_get("nspecial_spawn"));

//Endlag
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_NSPECIAL, 2);

//Detection Hitbox
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 350);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 350);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);