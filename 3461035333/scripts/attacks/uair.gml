set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);//5

//Startup
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);//8
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

//Active
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 13);//11
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);//55
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 45);//40
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 75);//80
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);//8
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .5);//.6
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8); //0.8

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 1.05); //0
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .3);//.4
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -82);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 40);//40
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 40);//30
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90); //75
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 10);//9
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .7);//.6
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 9);//8
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .6);//.5
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8); //0.8

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -33);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -43);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 1.05); //1.1
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 280);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .3);//.4
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 4, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 3);