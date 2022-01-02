set_attack_value(AT_TAUNT_2 , AG_SPRITE, sprite_get("taunt_2"));
set_attack_value(AT_TAUNT_2 , AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT_2 , AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2 , AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt_2_hurt"));


set_window_value(AT_TAUNT_2 , 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2 , 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_TAUNT_2 , 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2 , 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2 , 1, AG_WINDOW_SFX, sound_get("pokkencharge"));
set_window_value(AT_TAUNT_2 , 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_TAUNT_2 , 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2 , 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT_2 , 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT_2 , 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2 , 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2 , 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_start"));

set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));
set_window_value(AT_TAUNT_2 , 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT_2 , 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2 , 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2 , 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2 , 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT_2 , 5, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_TAUNT_2 , 6, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_TAUNT_2 , 7, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2 , 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2 , 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2 , 7, AG_WINDOW_ANIM_FRAME_START, 21);

set_num_hitboxes(AT_TAUNT_2,2);

set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 4); //5->7
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW, -1);
set_hitbox_value(AT_TAUNT_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT_2, 2, HG_WIDTH, 54);
set_hitbox_value(AT_TAUNT_2, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_TAUNT_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_KNOCKBACK, 16); //5->7
set_hitbox_value(AT_TAUNT_2, 2, HG_KNOCKBACK_SCALING, 1.6);
set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_TAUNT_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);