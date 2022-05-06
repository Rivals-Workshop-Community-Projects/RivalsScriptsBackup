set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));


//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("sfx_at_kick_01"));
//set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);



//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_UTILT, 7);

var _dmg = 11;
var _kb = 9;       // 12 when non-lethal victores are implemented
var _kbscale = 0.7; // 0.38 when non-lethal victories are implemented
var _hitpause = 7;
var _hpscale = 0.6; // 0.5 when non-lethal victories are implemented
var _ang = 90;
var _hitsfx = sound_get("sfx_hit_punch_ko");


// Initial - Start

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 57);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);


// Initial - Smear

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
//set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 67);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
//set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 27);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);


// Initial - End

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
//set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 49);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 3);
//set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -59);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 32);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 37);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);


// Lingering

var _dmg = 8;
//var _kb = 12;
//var _kbscale = 0.4;
var _hitpause = 7;
var _ang = 95;
var _hitsfx = sound_get("sfx_hit_punch_ko");

set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 49);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -59);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 32);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 37);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, _dmg);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, _ang);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, _kb);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, _kbscale);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, _hitpause);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, _hpscale);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, _hitsfx);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);
