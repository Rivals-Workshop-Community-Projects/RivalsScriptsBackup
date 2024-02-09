//La Reina dattack.gml
var edit_attack = AT_DATTACK
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 2);
/* set_attack_value(edit_attack, AG_OFF_LEDGE, 1); */
set_attack_value(edit_attack, AG_SPRITE, sprite_get("dattack"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 5);
set_attack_value(edit_attack, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//Startup
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, -0.5);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, -9.5);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//Falling attack window 1
e_window = 2;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 7);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, 6.5);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 4);

//Falling attack window 2
e_window = 3;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 9001);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 4);

// Spike attack
e_window = 4;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 9001);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 5);

//Endlag
e_window = 5;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 15);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_WHIFFLAG, 5);

// bounce
e_window = 6;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 20);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, -5);
set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 6);

set_num_hitboxes(edit_attack, 2);

var e_hitbox = 1;
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 7);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 18);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -40);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 64);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 42);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 75);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(edit_attack, e_hitbox, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 9);
set_hitbox_value(edit_attack, e_hitbox, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -26);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);

var e_hitbox = 2;
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 9001);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 24);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -24);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 58);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 42);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 10);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 270);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 22);
set_hitbox_value(edit_attack, e_hitbox, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);
