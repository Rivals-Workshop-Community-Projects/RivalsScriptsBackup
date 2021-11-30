set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 3);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_VSPEED, -10);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);

//attack
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//land
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, sound_get("bowomp"));

//endlag
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//whiff
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 10); 
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 68); 
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 48); 
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2); 
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270); 
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10); 
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 88); 
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 62); 
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9); 
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90); 
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1); 
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);