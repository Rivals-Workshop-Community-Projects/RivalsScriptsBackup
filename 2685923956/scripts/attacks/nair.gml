set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

//st
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);//5
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

//st2
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, sound_get("spin_1"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 2);

//at
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
//2nd and 3rd sounds are played in attack_update.gml

//hold
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

//rec
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_NAIR, 2);

//early
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 71);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);//75
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);//5
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

//late (stronger)
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 66);//70
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);//75
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.65);//0.5
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);//6
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.6);//0.2
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));







