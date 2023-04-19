//AR FAIR [WIP]

set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair2"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);//5


set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("SWFS5"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR, 4);

var dmg_base = 6
var ang_base = 90
var bkb_base = 8
var kbg_base = 0.5
var vfx_base = 110
var sfx_base = asset_get("sfx_blow_medium2")
var bhp_base = 8
var hpg_base = 0.5

//2nd from top
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 61);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, dmg_base);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, ang_base);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, bkb_base);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, kbg_base);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, bhp_base);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, hpg_base);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, vfx_base);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sfx_base);

//3rd from top
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, 7);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 31);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, dmg_base);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, ang_base);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, bkb_base);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, kbg_base);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, bhp_base);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, hpg_base);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, vfx_base);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sfx_base);

//bottom furthest
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 63);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 28);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 38);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, dmg_base);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, ang_base);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, bkb_base);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, kbg_base);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, bhp_base);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, hpg_base);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, vfx_base);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sfx_base);

//top (behind hit)
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 43);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, dmg_base);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, ang_base);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, bkb_base);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, kbg_base);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, bhp_base);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, hpg_base);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, vfx_base);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sfx_base);




