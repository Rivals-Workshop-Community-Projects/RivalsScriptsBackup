//La Reina fspecial.gml
var edit_attack = AT_FSPECIAL;
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 4);
set_attack_value(edit_attack, AG_OFF_LEDGE, 1);



e_window = 1; //Anticipation
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 20);//changed from 15 to 20
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, -6);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, sound_get("pixabay_elastic_bounce"));
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 18);

e_window = 2; //Startup
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 8);

e_window = 3; //Dash forward
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 10);

//Whiff
e_window = 4;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 20);// originally 12
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_WHIFFLAG, 1);//Added whifflag


// Spinaround
set_window_value(edit_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, 5, AG_WINDOW_LENGTH, 14);//changed from 18 to 9
set_window_value(edit_attack, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(edit_attack, 5, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(edit_attack,1);

set_hitbox_value(edit_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 1, HG_SHAPE, 0);
set_hitbox_value(edit_attack, 1, HG_WINDOW, 3);
set_hitbox_value(edit_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(edit_attack, 1, HG_LIFETIME, 4);
set_hitbox_value(edit_attack, 1, HG_HITBOX_X, 20);
set_hitbox_value(edit_attack, 1, HG_HITBOX_Y, -35);
set_hitbox_value(edit_attack, 1, HG_WIDTH, 48);
set_hitbox_value(edit_attack, 1, HG_HEIGHT, 52);
set_hitbox_value(edit_attack, 1, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(edit_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(edit_attack, 1, HG_ANGLE, 30);
set_hitbox_value(edit_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(edit_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(edit_attack, 1, HG_BASE_HITPAUSE, 0);
//set_hitbox_value(edit_attack, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(edit_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(edit_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 34);
set_hitbox_value(edit_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(edit_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(edit_attack, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(edit_attack, 1, HG_TECHABLE, 3); // 3 = Cannot tech or bounce
set_hitbox_value(edit_attack, 1, HG_THROWS_ROCK, 1);
