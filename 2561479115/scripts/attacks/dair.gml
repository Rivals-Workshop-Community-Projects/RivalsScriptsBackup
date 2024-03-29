set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR,8);

//first hit
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .25);//.4
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .06);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);//added
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1.5);//added

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 0);
//second hit
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 10);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .1);//.25
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .06);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);//added
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.5);//added

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);
//third hit
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 10);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .1);//.25
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .06);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_FORCE_FLINCH, 1);//added
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1.5);//added

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 2);
//final hit
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);//added

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 3);