//QCF laser weak
if (command[0,0]==3) and (attack_pressed) {
    spr_dir=command[0,3];
    attack=AT_EXTRA_1;
}

//QCF laser medium
if (command[0,0]==3) and (special_pressed) {
    spr_dir=command[0,3];
    attack=AT_EXTRA_2;
}

//QCF laser strong
if (command[0,0]==3)  and (left_strong_pressed or right_strong_pressed) {
    spr_dir=command[0,3];
    attack=AT_EXTRA_3;
}


if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_EXTRA_1 && free){
    attack = AT_FSPECIAL_2;
}

if (attack == AT_EXTRA_2 && free){
    attack = AT_FSPECIAL_2;
}

if (attack == AT_EXTRA_3 && free){
    attack = AT_FSPECIAL_2;
}

if (attack == AT_DSPECIAL && free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_DSPECIAL_2 && free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_DSPECIAL_AIR && free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_USPECIAL_GROUND && free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_DSTRONG_2 && free){
    attack = AT_USPECIAL_2;
}

//bubbles god mode

var alt_cur = get_player_color(player);

if (alt_cur == 18){
	move_cooldown[AT_USPECIAL] = -10000
	move_cooldown[AT_FSPECIAL] = -10000
	move_cooldown[AT_FSPECIAL_AIR] = -10000
	set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));


set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("nynya"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0)
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0)
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("wush"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
}

