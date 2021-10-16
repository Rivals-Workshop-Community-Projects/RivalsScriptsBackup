set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 18); //25
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DATTACK, 10);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);//hilter
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 40);//45
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);//7
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 10, HG_WIDTH, 190);
set_hitbox_value(AT_DATTACK, 10, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 10, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 10, HG_ANGLE, 45);//361
set_hitbox_value(AT_DATTACK, 10, HG_BASE_KNOCKBACK, 6);//6
set_hitbox_value(AT_DATTACK, 10, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 10, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 10, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 10, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 10, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_DATTACK, 10, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_GROUP, 1);