//NSpecial Outline
if (get_gameplay_time() % 30 > 20){
    if (chungusCharge > 100){
        outline_color = [75, 150, 75];
    }
    else if (chungusCharge > 50){
        outline_color = [50, 100, 50];
    }
}
else{
    outline_color = [0, 0, 0];
}

init_shader();

if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
    move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    if (UpSpecialHitReset){
        move_cooldown[AT_USPECIAL] = 0;
        UpSpecialHitReset = false;
    }
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    char_height = 52;
}
else if (attack == AT_UAIR){
    if (char_height < 88 && window == 1 && window_timer > 11){
        char_height += 12;
    }
    else if (char_height > 52 && window > 3 && window_timer >= 6){
        char_height -= 6;
    }
}
else if (attack == AT_UTILT){
    if (char_height <= 60 && (window == 1 && window_timer >= 3)){
        char_height += 4;
    }
    else if (char_height > 52 && window == 3 && window_timer >= 8){
        char_height -= 2;
    }
}
if (char_height < 52){
    char_height = 52;
}




//====Runes====
//=============
if (has_rune("A")){
    initial_dash_speed = 9;
    dash_speed = 14;
    air_max_speed = 10;
}

if (has_rune("C")){
    max_djumps = 2;
}

/*if (has_rune("F")){


}*/

if (has_rune("E")){

    knockback_adj = 0.75;
}


if (has_rune("K")){
    set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 3);

    set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);

    set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 0);

    set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .75);
}

if (has_rune("M")){
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);

    set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 12);

    set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 15);

    set_hitbox_value( AT_DSTRONG, 1, HG_EFFECT, 8);
    set_hitbox_value( AT_DSTRONG, 2, HG_EFFECT, 8);
    set_hitbox_value( AT_DSTRONG, 3, HG_EFFECT, 8);
    set_hitbox_value( AT_DSTRONG, 4, HG_EFFECT, 8);
    set_hitbox_value( AT_DSTRONG, 5, HG_EFFECT, 8);
}

if (has_rune("B")){

    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
}

if (has_rune("H")){

    set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10);

    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 10);

}
/*if (has_rune("I")){




}*/

if get_gameplay_time() < 120 { //DinoBros Secret Alt + Debug Mode
	if taunt_down && special_down && left_down {
		debugCan = 1
	}
	if taunt_down && special_down &&right_down { //Anime Lounge Girl Alt
		set_color_profile_slot( 10, 0, 224, 224, 224 ); //metal1
		set_color_profile_slot( 10, 1, 214, 214, 214 ); //metal2
		set_color_profile_slot( 10, 2, 194, 194, 194 ); //metal3
		set_color_profile_slot( 10, 3, 156, 156, 156 ); //metal4
		set_color_profile_slot( 10, 4, 62, 247, 255 ); //shirt2
		set_color_profile_slot( 10, 5, 62, 247, 255 ); //Cup
		set_color_profile_slot( 10, 6, 255, 218, 127 ); //Eyes
		set_color_profile_slot( 10, 7, 255, 239, 204 ); //tire
	}
}


if (has_rune("J")){

    set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 1);

    set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
}

if (has_rune("L")){

    set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 0);
    set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 0);
    set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 0);


    set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
    set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);

    set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .9);

    set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .9);
}
