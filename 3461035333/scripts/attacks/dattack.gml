set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DATTACK, AG_LANDING_LAG, 7);

var custom_friction = air_friction + 0.2;

//Startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);//7
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 5.2);//5.3
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

//Active
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -6);//-6
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

//Endlag
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 16);//14
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 30);//60
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 65);//5
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 75);//70
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);//6
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);//9
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.3);//0.6
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7); //8
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.3); //0.5
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 0.8);//0

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);//60
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 30);//80
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 75);//70
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);//6
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);//9
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.3);//0.6
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7); //8
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.3); //0.5
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 0.7);//1
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 0.8);//0
