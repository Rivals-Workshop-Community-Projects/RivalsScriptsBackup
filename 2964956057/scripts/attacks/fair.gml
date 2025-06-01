var atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 9);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

var window_num = 0;

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 10);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

var hitbox_num = 0;

hitbox_num++; //first frame's sweetspot (only hits in the air)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 53);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 45);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 14);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, xlarge_wood_hfx);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 2);

hitbox_num++; //first frame's sourspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -37);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 65);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 118);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, has_rune("G")? 270:50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, has_rune("G")? 4:7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -100);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 30);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, has_rune("G")? 270:50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, has_rune("G")? 4:7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// hitbox_num++; second frame
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 10);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, 55);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 55);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 5);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .7);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .9);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hitbox_num);