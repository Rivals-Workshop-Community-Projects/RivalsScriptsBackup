set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, turbo_sound); //asset_get("sfx_swipe_heavy1")
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("rocket_hit_high")); //asset_get("sfx_swipe_medium1")
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 20);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);




set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME,5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 72);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 27);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));