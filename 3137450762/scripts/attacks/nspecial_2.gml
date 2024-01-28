//La Reina nspecial_2.gml
//AKA Rolling Girl, now on down special
var edit_attack = AT_NSPECIAL_2;
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("movetochair"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 4);
set_attack_value(edit_attack, AG_OFF_LEDGE, true);
set_attack_value(edit_attack, AG_AIR_SPRITE, sprite_get("movetochair"));
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("movetochair_hurt"));


e_window = 1; //Anticipation 1
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

e_window = 2; //Anticipation 2
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_VSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

e_window = 3; //Spin loop
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 12);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 10);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
//set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 8);

e_window = 4; //Bounce back 1
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(edit_attack, e_window, AG_WINDOW_HITPAUSE_FRAME, 8);

e_window = 5; //Recoil loop
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, HFX_ORI_BLUE_SMALL);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, hitfx_magnet_outward);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
