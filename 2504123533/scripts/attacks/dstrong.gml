set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 2);// <-- make sure this accounts for ALL frames!
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 5);//<-- set this to a window that doesn't exist
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//This is the important window, as it HAS to be visually similar to both uncharged and charged
//when this window ends, it will split into either the uncharged or charged over in attack_update
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);//<-- needs to be at least 6, and higher numbers means more leeway to determine an uncharged/charged
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 7);

//This is the weak version of the move
//attack
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 1);

//Uncharged
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_swish_weak"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 0);

