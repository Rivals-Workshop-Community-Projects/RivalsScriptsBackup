//if (state == PS_HITSTUN){
//    with (pHitBox){
//        if (player == other.player){
//            if (attack == AT_DSPECIAL && hbox_num == 2){
//                can_hit_self = true;
//            }
//        }
//    }
//}
//else{
//    with (pHitBox){
//        if (player == other.player){
//            if (attack == AT_DSPECIAL && hbox_num == 2){
//                can_hit_self = false;
//            }
//        }
//    }
//}


//star cooldown stuff
if (star_cooldown > 0){
	star_cooldown--;
}

if (star_cooldown < 0){
	star_cooldown = 0;
}


//runes
if (has_rune("A")){
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14);
}

if (has_rune("B")){
   set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 11);
}

if (has_rune("C")){
    nspecial_thing = 1;
    
    set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 50);
}

if (has_rune("E")){
    max_djumps = 4;
}

if (has_rune("F")){
    fspec_on_hit_cooldown = 0;
}

if (url != 2234517080){
	player = -1;
	spawn_hit_fx(x,y,0);
}


if (has_rune("G")){
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
    fspec_speed = 16;
}

if (has_rune("I")){
    set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 17);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 16);
}

if (has_rune("J")){
    initial_dash_speed = 7;
    dash_speed = 6.5;
    
    leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 6.5; //the maximum hsp you can accelerate to when in a normal aerial state
}

if (has_rune("K")){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -14);
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 28);
	set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 12);
	
	move_cooldown[AT_DSPECIAL] = 0;
	should_clamp = false;
}




if (has_rune("L")){
    set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
    set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 5);

    set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2);

    set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 4);
}

if (has_rune("M")){
    if (soft_armor > 0){
        super_armor = true;
    }
    else if (attack != AT_NSPECIAL){
        super_armor = false;
    }
}

if (has_rune("O")){
    set_attack_value(AT_BAIR, AG_LANDING_LAG, 5);
    set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 4);
    
    set_attack_value(AT_DAIR, AG_LANDING_LAG, 5);
    set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 5);
    
    set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
    set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 3);

    set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
    set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 4);

    set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
    set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
}
