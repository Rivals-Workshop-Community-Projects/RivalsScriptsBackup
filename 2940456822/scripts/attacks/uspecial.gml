curr_attack = AT_USPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 4);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1); //Swing
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curr_attack, 2, AG_WINDOW_VSPEED, -12);
set_window_value(curr_attack, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_HSPEED, 5);
set_window_value(curr_attack, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 7); //Rise
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 20);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(curr_attack, 4);

//1
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 20);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 65);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT,HFX_ZET_FIRE);

//1
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 2, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 20);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 65);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, 2, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, HFX_ZET_FIRE);

//1
set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 3, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 3, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 3, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 3, HG_HITBOX_X, 20);
set_hitbox_value(curr_attack, 3, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 3, HG_HEIGHT, 65);
set_hitbox_value(curr_attack, 3, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 3, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, 3, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(curr_attack, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 3, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 3, HG_VISUAL_EFFECT, HFX_ZET_FIRE);

//Final
set_hitbox_value(curr_attack, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(curr_attack, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 4, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 4, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 4, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 4, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 4, HG_HITBOX_X, 20);
set_hitbox_value(curr_attack, 4, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 4, HG_HEIGHT, 65);
set_hitbox_value(curr_attack, 4, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 4, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 4, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 4, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(curr_attack, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 4, HG_BASE_HITPAUSE, 11);
set_hitbox_value(curr_attack, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 4, HG_VISUAL_EFFECT, HFX_ZET_FIRE_BIG);



