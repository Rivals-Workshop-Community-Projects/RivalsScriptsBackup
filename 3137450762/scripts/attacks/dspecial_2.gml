//La Reina dspecial_2.gml
//AKA Magnetize Chair, now on neutral special
var edit_attack = AT_DSPECIAL_2;
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("pullchair"));
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("pullchair_hurt"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 5);
//set_attack_value(edit_attack, AG_OFF_LEDGE, 1);


e_window = 1; //Anticipation
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));

e_window = 2; //Smear
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 1);

e_window = 3; //Magnetize Hold & Loop
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 9);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 36);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));

e_window = 4; //Smear
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 8);

e_window = 5; //recovery
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);

e_window = 6; // catch chair
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 15);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 10);
