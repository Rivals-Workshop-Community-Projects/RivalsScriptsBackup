set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

var ig = 1;

//StartUp
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_DSPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));

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
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig = 1;
set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, ig, HG_DAMAGE, 5);
//set_hitbox_value(AT_DSPECIAL, ig, HG_EFFECT, 1); //Burn
set_hitbox_value(AT_DSPECIAL, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, ig, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, ig, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, ig, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, ig, HG_WIDTH, 200);
set_hitbox_value(AT_DSPECIAL, ig, HG_HEIGHT, 200);
