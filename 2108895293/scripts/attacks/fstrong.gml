set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);


set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("ting"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);//4//5
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);//6//12
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("antici_5_fast"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);//2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, sound_get("lightshatter_3_2_quiet"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 14);//12
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 6);//5
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_FSTRONG, 2); 

//main hit
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 53);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 78);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);//49
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);//7.5//8
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);//0.97//1
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, lumihitfx1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

//early hit
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);//6
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 37);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 41);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);//49
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);//7.5
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.2);//0.97
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_holy_lightning"));






