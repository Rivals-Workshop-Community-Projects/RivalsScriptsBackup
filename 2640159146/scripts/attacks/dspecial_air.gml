set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 0);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -0.01);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 11.5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 36); //Landing lag
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);

set_num_hitboxes(AT_DSPECIAL_AIR, 3); 

//spike
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 272); //292 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6); //7
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.8); //0.6//0.7
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 115);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));