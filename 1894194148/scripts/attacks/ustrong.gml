//AR USTRONG

set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USTRONG, AG_LANDING_LAG, 12);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//usc   uss   usa   usr
//0-1:2 2-3:2 4-6:3 7-11:5

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 5); //4
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_land_light"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 22); //20
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

set_num_hitboxes(AT_USTRONG, 2);//3

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -57);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);//75
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);//10
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);//1.05
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);//6
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);//1.4
//set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -12);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 33);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);//4
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.35);//.65
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);//1
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

/*set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 52);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));*/



















