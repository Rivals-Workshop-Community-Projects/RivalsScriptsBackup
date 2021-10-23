set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

var ig = 1;

//StartUp
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 5);

ig++;

//Down Special Logic Frame
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

ig++;

//Down Special Cooldown
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_LENGTH, 15); //from 20
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig = 1;
set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, ig, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, ig, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, ig, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, ig, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, ig, HG_HEIGHT, 80);

ig++;

set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, ig, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, ig, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, ig, HG_WIDTH, 110);
set_hitbox_value(AT_DSPECIAL, ig, HG_HEIGHT, 110);
set_hitbox_value(AT_DSPECIAL, ig, HG_VISUAL_EFFECT, 304);

//END
