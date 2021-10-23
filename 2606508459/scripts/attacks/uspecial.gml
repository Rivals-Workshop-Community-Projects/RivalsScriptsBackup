set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 7);

var ig = 1;

//Up Special Start
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 5);

ig++;

//Up Special Hit 1
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 5);

ig++;

//Up Special Hit 2
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 6);

ig++;

//Up Special Rise
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED, uspecial_air_max_speed);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

ig++;

//End
set_window_value(AT_USPECIAL, ig, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED, uspecial_air_max_speed);
set_window_value(AT_USPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_USPECIAL, 4);
ig = 1;

//Hit 1A
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Hit 1B
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -3);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Hit 2
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 31);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -17);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 94);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 98);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Hit 3 sweet
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, ig, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_X, 29);
set_hitbox_value(AT_USPECIAL, ig, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USPECIAL, ig, HG_WIDTH, 93);
set_hitbox_value(AT_USPECIAL, ig, HG_HEIGHT, 121);
set_hitbox_value(AT_USPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, ig, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, ig, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, ig, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_USPECIAL, ig, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USPECIAL, ig, HG_ANGLE_FLIPPER, 0);

//END