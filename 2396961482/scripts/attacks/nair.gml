set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);//5
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 8);//6
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);//this should be here, not during active frames

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);//this isnt needed
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);//4
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);//5
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .25);//this is new
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
//set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);//this isnt needed
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);//4
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 80);//60
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);//40
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 27);//15
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -25);//-25
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .5);//.4
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);//8
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .25);//this is new
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);


