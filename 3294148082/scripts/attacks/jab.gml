var curatk = AT_JAB;

set_attack_value(curatk, AG_SPRITE, sprite_get("jab"));
set_attack_value(curatk, AG_HURTBOX_SPRITE, sprite_get("ihurt"));
//JAB 1 (windows 1 - 3)
var curwindow = 1; //windup
set_window_value(curatk, curwindow, AG_WINDOW_LENGTH, 8);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curatk, curwindow, AG_WINDOW_HAS_SFX, 1);
set_window_value(curatk, curwindow, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curatk, curwindow, AG_WINDOW_SFX_FRAME, 4);

curwindow += 1; //attack
set_window_value(curatk, curwindow, AG_WINDOW_LENGTH, 8);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curatk, curwindow, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(curatk, curwindow, AG_WINDOW_HSPEED, 2);

curwindow += 1; //endlag
set_window_value(curatk, curwindow, AG_WINDOW_LENGTH, 8);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(curatk, curwindow, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(curatk, curwindow, AG_WINDOW_CANCEL_FRAME, 2);

//JAB 3 (windows 7 - 9)
curwindow += 1; //windup
set_window_value(curatk, curwindow, AG_WINDOW_LENGTH, 6);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curatk, curwindow, AG_WINDOW_HAS_SFX, 1);
set_window_value(curatk, curwindow, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(curatk, curwindow, AG_WINDOW_SFX_FRAME, 1);

curwindow += 1; //attack
set_window_value(curatk, curwindow, AG_WINDOW_LENGTH, 3);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(curatk, curwindow, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(curatk, curwindow, AG_WINDOW_HSPEED, 3);

curwindow += 1; //endlag (jabs don't use whifflag)
set_window_value(curatk, curwindow, AG_WINDOW_LENGTH, 10);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curatk, curwindow, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(curatk, curwindow, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(curatk, AG_NUM_WINDOWS, curwindow);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var curhitbox = 1; //attack 1
set_hitbox_value(curatk, curhitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(curatk, curhitbox, HG_HITBOX_GROUP, curhitbox);
set_hitbox_value(curatk, curhitbox, HG_WINDOW, 2);
set_hitbox_value(curatk, curhitbox, HG_LIFETIME, 2);
set_hitbox_value(curatk, curhitbox, HG_HITBOX_X, 34);
set_hitbox_value(curatk, curhitbox, HG_HITBOX_Y, -28);
set_hitbox_value(curatk, curhitbox, HG_WIDTH, 48);
set_hitbox_value(curatk, curhitbox, HG_HEIGHT, 24);
set_hitbox_value(curatk, curhitbox, HG_PRIORITY, 2);
set_hitbox_value(curatk, curhitbox, HG_DAMAGE, 3);
set_hitbox_value(curatk, curhitbox, HG_ANGLE, 40);
set_hitbox_value(curatk, curhitbox, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(curatk, curhitbox, HG_BASE_HITPAUSE, 3);
set_hitbox_value(curatk, curhitbox, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curatk, curhitbox, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(curatk, curhitbox, HG_FORCE_FLINCH, 1);

curhitbox += 1; //attack 3
set_hitbox_value(curatk, curhitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(curatk, curhitbox, HG_HITBOX_GROUP, curhitbox);
set_hitbox_value(curatk, curhitbox, HG_WINDOW, 5);
set_hitbox_value(curatk, curhitbox, HG_LIFETIME, 2);
set_hitbox_value(curatk, curhitbox, HG_HITBOX_X, 40);
set_hitbox_value(curatk, curhitbox, HG_HITBOX_Y, -52);
set_hitbox_value(curatk, curhitbox, HG_WIDTH, 44);
set_hitbox_value(curatk, curhitbox, HG_HEIGHT, 54);
set_hitbox_value(curatk, curhitbox, HG_PRIORITY, 2);
set_hitbox_value(curatk, curhitbox, HG_DAMAGE, 4);
set_hitbox_value(curatk, curhitbox, HG_ANGLE, 100);
set_hitbox_value(curatk, curhitbox, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curatk, curhitbox, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(curatk, curhitbox, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curatk, curhitbox, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(curatk, curhitbox, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(curatk, curhitbox, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curatk, curhitbox, HG_VISUAL_EFFECT, 301);

set_num_hitboxes(curatk, curhitbox);