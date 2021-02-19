set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1); //slide startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1); //slide
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1); //kick startup
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1); //kick
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1); //endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_DATTACK, 5);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 54);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DATTACK, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 31);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 46);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 11);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -82);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 37);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, -23);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -74);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 32);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
