set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("grab"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("grab"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("grab_hurt"));

//startup
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

//active
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Endlag
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//Grab Success
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 80);
set_window_value(AT_NTHROW, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 4, AG_WINDOW_CANCEL_FRAME, 40); //after this point you can no longer change grab outcome

//Grab
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, get_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 1);

//========================================================================
// Grab outcomes
var hbox_num = 1;
var current_window = 4;
//========================================================================
//Grab Outcome: Frozen + Burning
current_window++;
MSG_GRAB_FROSTBURN_WINDOW = current_window;
set_anim(current_window, 3);

hbox_num++;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 4);
set_hitbox_value(AT_NTHROW, hbox_num, HG_TECHABLE, 3);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 270);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EFFECT, 1); //Burn
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EXTRA_HITPAUSE, 3);
hbox_num++;
MSG_GRAB_FREEZE_HITBOX = hbox_num;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_TECHABLE, 3);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 270);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EFFECT, 5); //Freeze
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EXTRA_HITPAUSE, 3);

//========================================================================
// Grab Outcome: Leech Seed Bug
current_window++;
MSG_GRAB_LEECHSEED_WINDOW = current_window;
set_anim(current_window, 3);

hbox_num++;
MSG_GRAB_LEECHSEED_HITBOX = hbox_num;

//needed 4 different hitboxes because Dan doesnt like me setting poison variable directly
for (var i = 0; i < 4; i++)
{
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_WINDOW, current_window);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_LIFETIME, 1);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_HITBOX_X, 25);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_HITBOX_Y, -25);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_WIDTH, 70);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_HEIGHT, 60);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_PRIORITY, 6);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_DAMAGE, 1);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_ANGLE, 85);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_EFFECT, 10); //Mark doesnt work apparently
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_KNOCKBACK_SCALING, 0.3);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(AT_NTHROW, hbox_num + i, HG_EXTRA_HITPAUSE, 3);
    if (i == 0) 
    {
        set_hitbox_value(AT_NTHROW, hbox_num + i, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
        set_hitbox_value(AT_NTHROW, hbox_num + i, HG_VISUAL_EFFECT, 198);
    }
}
hbox_num += 3;
//========================================================================
// Grab Outcome: SELF DESTRUCT
current_window++;
MSG_GRAB_EXPLOSION_WINDOW = current_window;
set_anim(current_window, 5);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);

hbox_num++;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 5);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 120);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 120);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 20);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_NTHROW, hbox_num, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_NTHROW, hbox_num, HG_VISUAL_EFFECT, 4);
//========================================================================
// Grab Outcome: NEGATIVE_DAMAGE
current_window++;
MSG_GRAB_NEGATIVE_WINDOW = current_window;
set_anim(current_window, 3);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);

hbox_num++;
MSG_GRAB_NEGATIVE_HITBOX = hbox_num;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//========================================================================
// Grab Outcome: Broken A.C.E.
current_window++;
MSG_GRAB_BROKEN_WINDOW = current_window;
set_anim(current_window, 3);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);

hbox_num++;
MSG_GRAB_BROKEN_HITBOX = hbox_num;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);

//Base stats only. governed by A.C.E. mechanic, see msg_construct_moves.gml
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DRIFT_MULTIPLIER, 0.6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_SDI_MULTIPLIER, 0.6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EFFECT, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HIT_SFX, asset_get("sfx_swipe_heavy2"));
set_hitbox_value(AT_NTHROW, hbox_num, HG_VISUAL_EFFECT, HFX_ORC_WATER_LIGHT);
//========================================================================
// Grab Outcome: GLITCH_TIME
current_window++;
MSG_GRAB_GLITCHTIME_WINDOW = current_window;
set_window_value(AT_NTHROW, current_window, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_ANIM_FRAMES, -8);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);

hbox_num++;
MSG_GRAB_GLITCHTIME_HITBOX = hbox_num;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HIT_SFX, asset_get("sfx_swipe_heavy2"));
//========================================================================
// Grab Outcome: REVERSE_BASH
current_window++;
MSG_GRAB_ANTIBASH_WINDOW = current_window;
set_anim(current_window, 25);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_CANCEL_FRAME, 15)
set_window_value(AT_NTHROW, current_window, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_NTHROW, current_window, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"))

hbox_num++;
MSG_GRAB_ANTIBASH_HITBOX = hbox_num;
//see ORI bash
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, hbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HIT_SFX, asset_get("sfx_ori_bash_launch"));
set_hitbox_value(AT_NTHROW, hbox_num, HG_VISUAL_EFFECT, 110); //Ori large
//========================================================================
// Grab Outcome: VANISH
current_window++;
MSG_GRAB_VANISH_WINDOW = current_window;
set_window_value(AT_NTHROW, current_window, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_ANIM_FRAMES, -8);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);

hbox_num++;
MSG_GRAB_VANISH_HITBOX = hbox_num;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NTHROW, hbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 1);
//========================================================================
// Grab Outcome: COLLIDER
current_window++;
MSG_GRAB_COLLIDER_WINDOW = current_window;
set_anim(current_window, 7);
set_window_value(AT_NTHROW, current_window, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_NTHROW, current_window, AG_WINDOW_SFX, sound_get("jacobs_ladder"))
set_window_value(AT_NTHROW, current_window, AG_WINDOW_INVINCIBILITY, 1);

hbox_num++;
MSG_GRAB_COLLIDER_HITBOX = hbox_num;
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WINDOW, current_window);
set_hitbox_value(AT_NTHROW, hbox_num, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, hbox_num, HG_WIDTH, 70);
set_hitbox_value(AT_NTHROW, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, hbox_num, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_ANGLE, 73);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, hbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, hbox_num, HG_BASE_HITPAUSE, 2);
//========================================================================

set_num_hitboxes(AT_NTHROW, hbox_num);
//Filling in this array with the info above
//List of Grab outcomes
var grab_frostburn =  { name:"3A", window:MSG_GRAB_FROSTBURN_WINDOW,  sound:sound_get("grab1")};
var grab_leechseed =  { name:"49", window:MSG_GRAB_LEECHSEED_WINDOW,  sound:sound_get("grab2")};
var grab_explode =    { name:"99", window:MSG_GRAB_EXPLOSION_WINDOW,  sound:sound_get("grab3")};
var grab_negative =   { name:"DC", window:MSG_GRAB_NEGATIVE_WINDOW,   sound:sound_get("grab4")};

msg_grab_broken_outcome.window = MSG_GRAB_BROKEN_WINDOW; //see failsafe in init.gml
var grab_glitchtime = { name:"00", window:MSG_GRAB_GLITCHTIME_WINDOW, sound:sound_get("grab0")};
var grab_antibash =   { name:"F1", window:MSG_GRAB_ANTIBASH_WINDOW,   sound:sound_get("grab5")};
var grab_vanish =     { name:"17", window:MSG_GRAB_VANISH_WINDOW,     sound:sound_get("grab3")};
var grab_collider =   { name:"64", window:MSG_GRAB_COLLIDER_WINDOW,   sound:sound_get("grab1")};

msg_grab_pointer = 0;
//standard rotation of grabs
msg_grab_rotation = [grab_leechseed, //front,
                     grab_explode,   //up, 
                     grab_negative,  //back, 
                     grab_frostburn];//down 

//rest is broken/glitched
msg_grab_queue = [msg_grab_broken_outcome,
                  msg_grab_broken_outcome,
                  grab_glitchtime,
                  grab_antibash,
                  grab_vanish,
                  grab_explode,
                  grab_collider];

if (msg_yellow_mode)
{
    //alternate rotation of grabs
    msg_grab_rotation = [grab_antibash,  //front,
                         grab_explode,   //up, 
                         grab_vanish,    //back, 
                         grab_collider]; //down 

    //rest is broken/glitched
    msg_grab_queue = [msg_grab_broken_outcome,
                      grab_glitchtime,
                      grab_negative,
                      grab_negative,
                      grab_frostburn,
                      grab_leechseed,
                      grab_explode];
}

exit;
//debug only
var debug = msg_grab_broken_outcome;
   msg_grab_queue = [debug];
   msg_grab_rotation = [debug,
                        debug,
                        debug,
                        debug];

//============================================
// Sets basic outcome window animation variables
#define set_anim(window, length)
{
    #macro GRAB_HOLD_FRAME 5
    set_window_value(AT_NTHROW, window, AG_WINDOW_LENGTH, length);
    set_window_value(AT_NTHROW, window, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_NTHROW, window, AG_WINDOW_ANIM_FRAME_START, GRAB_HOLD_FRAME);
}