set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialground"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 4); //this is normal landing lag for most aerials
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ice_fspecial_hit_ground"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

//active
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//recovery
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FSPECIAL,2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1); //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 6); //8, matches when the anim frame switches
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45); //this is a low angle for an aerial, you usually want to be above 45
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);//this is normal hitpause for a combo move
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .5)//this is normal hitpause scaling for a combo move
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
//set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 6); //combo aerial moves often have flipper 6, kill moves should not have this


set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2); //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 6); //8, matches when the anim frame switches
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 145);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 39);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45); //this is a low angle for an aerial, you usually want to be above 45
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);//this is normal hitpause for a combo move
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5)//this is normal hitpause scaling for a combo move
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, frost_fx);

//set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 6); //combo aerial moves often have flipper 6, kill moves should not have this