set_attack_value(AT_UAIR_G, AG_CATEGORY, 1);
set_attack_value(AT_UAIR_G, AG_SPRITE, sprite_get("uairg"));
set_attack_value(AT_UAIR_G, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR_G, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR_G, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR_G, AG_HURTBOX_SPRITE, sprite_get("uairg_hurt"));

//uairg start
set_window_value(AT_UAIR_G, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR_G, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR_G, 1, AG_WINDOW_SFX_FRAME, 14);

//uairg active
set_window_value(AT_UAIR_G, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR_G, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR_G, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//uairg end
set_window_value(AT_UAIR_G, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR_G, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR_G, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR_G, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR_G, 4);

//swipe upper
set_hitbox_value(AT_UAIR_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR_G, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR_G, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_UAIR_G, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UAIR_G, 1, HG_WIDTH, 75);
set_hitbox_value(AT_UAIR_G, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UAIR_G, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR_G, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_UAIR_G, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR_G, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR_G, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR_G, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR_G, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR_G, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR_G, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//swipe lower
set_hitbox_value(AT_UAIR_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR_G, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR_G, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR_G, 2, HG_HITBOX_X, 63);
set_hitbox_value(AT_UAIR_G, 2, HG_HITBOX_Y, -79);
set_hitbox_value(AT_UAIR_G, 2, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR_G, 2, HG_HEIGHT, 61);
set_hitbox_value(AT_UAIR_G, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR_G, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_UAIR_G, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR_G, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR_G, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR_G, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR_G, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR_G, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR_G, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//swipe sour 
/*
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR_G, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR_G, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_X, 37);
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_Y, -81);
set_hitbox_value(AT_UAIR_G, 3, HG_WIDTH, 51);
set_hitbox_value(AT_UAIR_G, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR_G, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR_G, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_UAIR_G, 3, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR_G, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR_G, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_UAIR_G, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR_G, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR_G, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR_G, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
*/
//sweetspot stick
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR_G, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR_G, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_X, 59);
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_UAIR_G, 3, HG_WIDTH, 33);
set_hitbox_value(AT_UAIR_G, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_UAIR_G, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR_G, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR_G, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_UAIR_G, 3, HG_ANGLE, 270);
set_hitbox_value(AT_UAIR_G, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR_G, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR_G, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR_G, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR_G, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_UAIR_G, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));