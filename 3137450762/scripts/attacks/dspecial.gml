//La Reina dspecial.gml
var edit_attack = AT_DSPECIAL;
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 6);
set_attack_value(edit_attack, AG_OFF_LEDGE, false);
set_attack_value(edit_attack, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

e_window = 1; //Anticipation 1
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

e_window = 2; //Anticipation 2
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 4);

e_window = 3; //Hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 5);

e_window = 4; //SLAMMA JAMMA
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 12);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land"));

e_window = 5; //Recoil Transition
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, -6);

e_window = 6; //Recoil Hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 3 );
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 15);


set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 83);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 59);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
