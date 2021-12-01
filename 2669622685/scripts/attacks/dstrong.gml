set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//chargeup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_absa_dashup"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_GOTO, 2);

//normal start
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("taunt_bounce"));

//normal hit
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_absa_jab1"));

//normal endlag
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 8);

//static start
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, sound_get("taunt_bounce"));

//static hit
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));

//static endlag
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

//normal hit
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 13); 
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 3); 
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -22); 
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 100); 
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 52); 
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361); 
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.10); 
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8); 
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("elechurt_heavy"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);

//static hit
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 13); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 4); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -22); 
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 142); 
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 51); 
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 17);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 50); 
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.20); 
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("elechurt_extreme"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 8);