set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_NAME, "FSpecial: Power Shell");
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC, "Shell spin that goes forward.
Can be charged to increase horizontal distance after release. Slightly slows fall if charging in the air.
Oh hit, Koopa Troopa will rebound off of either a wall, enemy or even their own Koopa Shell.
At full charge, this move gains a strong hitbox. It's weaker if Koopa is in the air, though.

(P.S. Turn on hitboxes and land Grounded FSpecial for an indicator on how to activate the Stylish taunt.)");

/*

IM IN THE HELL DIMENSION

HELP MEEEEEEEEEEEEEEEEEEEEEEEE

*/

// startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);

// shell hold (charge)
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

// shell release
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);

fspecActiveFrames = 18;

// active frames
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, (fspecActiveFrames) / 2 );
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);

// endlag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 29);

// ============
// impact frame
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 24);

// bounce backwards (loop a few times)
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);

// retreat back to idle (this is just window 6)

// =============
// stylish startup
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 34);

// stylish loop (spin 3 times)
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 36);

// stylish fail (MAKE UNIQUE FRAMES FOR THIS...?)
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 40);

// stylish success. transition into pose
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 40);

// stylish pose! so cool!
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 43);

set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 44);

// stylish go back to idle
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 45);

// bounce backwards (loop a few times)
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 29);


var fspecHitboxWidth = 28;
var fspecHitboxShape = 1;

set_num_hitboxes(AT_FSPECIAL, 3);

// Normal Travelling Hit
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Normal Travelling Hit");
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, fspecActiveFrames);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, fspecHitboxWidth);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, fspecHitboxWidth);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, fspecHitboxShape);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 85); // I am so sorry. However, Koopa is very stubby, so I think he kinda needs it.
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, vfx_shell_hit_med);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 6);


set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Full Charge Hitbox (Ground)");
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, fspecActiveFrames);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, fspecHitboxWidth);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, fspecHitboxWidth);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, fspecHitboxShape);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .8);
// set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, vfx_shell_hit_lrg);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Full Charge Hitbox (Ground)");
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, fspecActiveFrames);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, fspecHitboxWidth);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, fspecHitboxWidth);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, fspecHitboxShape);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, vfx_shell_hit_lrg);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 0);