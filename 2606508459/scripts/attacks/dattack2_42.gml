set_attack_value(42, AG_CATEGORY, 2);
set_attack_value(42, AG_SPRITE, sprite_get("dattack"));
set_attack_value(42, AG_NUM_WINDOWS, 2);
set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

var ig = 1;

//Follow-up kick (1)
set_window_value(42, ig, AG_WINDOW_LENGTH, 9);
set_window_value(42, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(42, ig, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(42, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

ig++;

//Recovery (2)
set_window_value(42, ig, AG_WINDOW_LENGTH, 20);
set_window_value(42, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(42, ig, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(42, ig, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(42, ig, AG_WINDOW_VSPEED, -8);

set_num_hitboxes(42, 1);
ig = 1;

set_hitbox_value(42, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, ig, HG_WINDOW, 1);
set_hitbox_value(42, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(42, ig, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(42, ig, HG_LIFETIME, 8);
set_hitbox_value(42, ig, HG_HITBOX_X, 9);
set_hitbox_value(42, ig, HG_HITBOX_Y, -29);
set_hitbox_value(42, ig, HG_WIDTH, 73);
set_hitbox_value(42, ig, HG_HEIGHT, 69);
set_hitbox_value(42, ig, HG_SHAPE, 0);
set_hitbox_value(42, ig, HG_PRIORITY, 2);
set_hitbox_value(42, ig, HG_DAMAGE, 3);
set_hitbox_value(42, ig, HG_ANGLE, 100);
set_hitbox_value(42, ig, HG_BASE_KNOCKBACK, 8); // reduced kb to 6 from 8
set_hitbox_value(42, ig, HG_KNOCKBACK_SCALING, .4); // added kbs
set_hitbox_value(42, ig, HG_BASE_HITPAUSE, 6); // changed bhp to match kb
set_hitbox_value(42, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
set_hitbox_value(42, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(42, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(42, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(42, ig, HG_ANGLE_FLIPPER, 0); // no flipper, bad kero