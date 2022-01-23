set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
switch (get_player_color(player)){
case 8:
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_leafy_hit3"));
break;

default:
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_singlezap1"));
break;
}

set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);

switch (get_player_color(player)){
case 8:
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_leafy_hit1"));
break;

default:
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_light1"));
break;
}

set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 8);
