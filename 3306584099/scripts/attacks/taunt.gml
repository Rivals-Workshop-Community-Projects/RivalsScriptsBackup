set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//#region Tomoko's data
//Startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 8);

//Loop
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Woken up by Somnio
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_TAUNT, 6, AG_WINDOW_GOTO, 2);

//End
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 16);
//#endregion

//#region Weapon's data
weapon_attack_spr[AT_TAUNT] = sprite_get("taunt_w");
weapon_xoffset[AT_TAUNT] = 0;
weapon_yoffset[AT_TAUNT] = 0;

weapon_window_min[AT_TAUNT] = 8;
weapon_window_max[AT_TAUNT] = 10;

set_window_value(AT_TAUNT, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH));
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 9, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 10, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAME_START, 6);