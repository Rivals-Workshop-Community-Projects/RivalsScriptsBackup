set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);


set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7); //6
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5); //4
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//at

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2); //Active 1 //3
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_dream_star"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 2); //Active 2 //3
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_dream_star"));

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_may_arc_hit"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 3); //Active 3 //3
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 9);//8
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);

//r

set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 4); 

//1st hit ground hit
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 18); //23
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 45); //47
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 81);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_orb_miss"));

//1st hit main hit
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -82); //-82
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 45); //55
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 45); //55
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 160);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_miss"));

//2nd hit
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -86);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 180);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_orb_miss"));

//3nd hit
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -36);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -69);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);//88
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.05); //1.1
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, lumihitfx1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_holy_lightning"));