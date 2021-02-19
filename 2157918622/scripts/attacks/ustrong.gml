set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1); // charging
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1); // release
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_may_whip1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5); 

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1); // first hit in front of Cupcake
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2); 

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1); // spinning hits above Cupcake
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1); // endlag
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_USTRONG,4);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1); // weak hit in front
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -61);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 118);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 100);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2); // first above hit
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 92);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3); // second above hit
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -109);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 88);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4); // final strong hit
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -112);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 93);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, smallheartFX);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));