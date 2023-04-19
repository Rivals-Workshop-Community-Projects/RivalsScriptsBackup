curr_attack = AT_DAIR;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dair"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 5);
//set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 0);
//set_attack_value(curr_attack, AG_LANDING_LAG, 6);
set_attack_value(curr_attack, AG_OFF_LEDGE, true);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//Start up
set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 9);

//Active
set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 21);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 2, AG_WINDOW_INVINCIBILITY, 2);


//Not Active
set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 24);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//Land
set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 24);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//Land
set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 20);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(curr_attack, 2);

//Spike
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 12);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 32);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 48);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 10);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 9);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 280);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);

//Late
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 18);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 12);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 36);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 52);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 10);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 2, HG_ANGLE, 60);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 301);
