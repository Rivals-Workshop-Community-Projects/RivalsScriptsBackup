set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 5); // 4
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5); // 4
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4); // 2

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1); 
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3); 
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10); // 7
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,4);


set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3); // 3
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 4); // -40
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -52); // -40
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60); // 70
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 54); // 70
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4); // 5
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4); // 2
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
;