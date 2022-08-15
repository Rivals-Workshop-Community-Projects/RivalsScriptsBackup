set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);//10
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);//6
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);//this should be here, not during active window


set_num_hitboxes(AT_NAIR,2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 27);//30
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 59);//50
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 37);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);//8
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);//6
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .8);//.6
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .8);//.25
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, lanternfx);
// set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20)
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 28);//30
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 42);//50
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);//8
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);//6
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .6);//.6
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .35);//.25
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, lanternfx);
// set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20)
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));//sfx_infinidagger
//set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 6);

//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304); //1 //nvm that looked bad
