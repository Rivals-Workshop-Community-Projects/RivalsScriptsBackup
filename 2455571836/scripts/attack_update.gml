//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL && window == 2 || attack == AT_DSPECIAL && window == 3){
	can_wall_jump = true;
}

if (attack == AT_USPECIAL && window == 3 || attack == AT_USPECIAL && window == 4 || attack == AT_USPECIAL && window == 5 || attack == AT_FSPECIAL && window == 3 || attack == AT_DSPECIAL && window == 2 || attack == AT_DSPECIAL && window == 3){
	can_shield = true;
}

if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    can_fast_fall = false;
}

if (phone_cheats[cheat_hit_faller] == 1 && attack == AT_FSPECIAL || phone_cheats[cheat_hit_faller] == 1 && attack == AT_DSPECIAL || phone_cheats[cheat_hit_faller] == 1 && attack == AT_USPECIAL){
	can_fast_fall = true;
}

//Jab
if (attack == AT_JAB && window == 2 && window_timer == 11){
        window = 7;
		window_timer = 0;
}

if (attack == AT_JAB && window == 4 && window_timer == 12){
        window = 7;
		window_timer = 2;
}

//Dash Attack
if (attack == AT_DATTACK){
	if (window == 2 && has_hit_player && jump_pressed){
        window = 3;
		window_timer = 10;
    }
}

//Neutral Air
if (attack == AT_NAIR){
	if (window == 3 && !has_hit_player || window == 5 && !has_hit_player){
        window = 6;
		window_timer = 0;
    }
}

//Down Air
if (attack == AT_DAIR){
	if (window == 2 && has_hit_player){
        old_vsp = -10;
    }
}

if (attack == AT_NSPECIAL){
        if (has_hit_player){
			iasa_script();
			move_cooldown[AT_NSPECIAL] = 20;
        }
    }

//Up Special
/*if (attack == AT_USPECIAL){
        move_cooldown[AT_USPECIAL] = 999;
    
    if (window == 5){ // check if this is in part 2 main state
    var crashhold = 0;
        if state = 6{ // sets window to 6, end of the window stuff
            window = 6;
            window_timer = 1;
        }
    }
}

if (attack == AT_USPECIAL){
	if (window == 3 && !free){
        window = 7;
		window_timer = 1;
    }
}*/

if (attack == AT_USPECIAL && window == 6){
        move_cooldown[AT_USPECIAL] = 999;
}

//Forward Special
if (attack == AT_FSPECIAL){
	if (window == 3 && !free){
        window = 9;
		window_timer = 1;
		destroy_hitboxes();
    }
}

if (attack == AT_FSPECIAL){
	if (window == 3 && has_hit_player){
        old_vsp = -15;
		window = 10;
		window_timer = 1;
		destroy_hitboxes();
    }
}

if (attack == AT_FSPECIAL){
	if (window == 3 && window_timer == 5){
		window = 3;
		window_timer = 0;
    }
}

if (attack == AT_FSPECIAL){
	if (window == 8 || window == 9 || window == 10){
		move_cooldown[AT_FSPECIAL] = 999;
	}
}

//Down Special
if (attack == AT_DSPECIAL){
	if (window == 1 && !free){
			vsp = -10;
			}
		}

//sets the super armor
if (attack == AT_DSPECIAL){
	if (window == 3 || window == 5 || window == 6){
		super_armor = true;
    }
}

if (attack == AT_DSPECIAL){
	if (window == 4 || window == 7 || window == 8 || window == 9){
		super_armor = false;
    }
}

//looks statue idle
if (attack == AT_DSPECIAL){
	if (window == 3 && window_timer == 5){
		window = 3;
		window_timer = 0;
    }
}

//makes it so the abrupt end doesn't transition to following frames
if (attack == AT_DSPECIAL){
	if (window == 4 && window_timer == 12){
		window = 9;
		window_timer = 7;
    }
}

//adds dspecial cooldown
if (attack == AT_DSPECIAL){
	if (window == 4 || window == 9){
	move_cooldown[AT_DSPECIAL] = 20;
	}
}

if (attack == AT_DSPECIAL){
	if (window == 3 && !free){
		window = 5;
		window_timer = 0;
	}
}

//checks if you done did it
/*if (attack == AT_DSPECIAL && window == 5 && has_hit_player && hit_player_obj.glace_Freeze == true ||
attack == AT_DSPECIAL && window == 6 && has_hit_player && hit_player_obj.glace_Freeze == true){
			window = 9;
			window_timer = 0;
	}*/

//Taunt
if (attack == AT_TAUNT)
{
if (window == 1 || window == 2){
	can_shield = true;
	}
}

if (attack == AT_TAUNT_2)
{
if (window == 1 && up_down){
	window = 2;
	window_timer = 0;
	}
}

if (attack == AT_TAUNT_2)
{
if (window == 1 && down_down){
	window = 4;
	window_timer = 0;
	}
}

if (attack == AT_TAUNT_2 && window == 2 && window_timer == 50)
{
if (taunt_down == 1){
	window = 2;
	window_timer = 0;
	}
else
{
	window = 3;
	window_timer = 0;
	}
}

if (attack == AT_TAUNT_2 && window == 4 && window_timer == 23)
{
if (taunt_down == 1){
	window = 4;
	window_timer = 0;
	}
else
{
	window = 3;
	window_timer = 0;
	}
}

/*
if (attack == AT_TAUNT)
{
// replace [num] with the window number you want to repeat in the taunt
if (taunt_down == 1){
    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
}
else
{
    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
}
}

if (attack == AT_TAUNT_2){
// replace [num] with the window number you want to repeat in the taunt
if (taunt_down == 1){
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 9);
}
else
{
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 0);
}
}*/

//Final Smash
if (attack == "49")
{
if (window == 2 && !free){
	window = 3;
	window_timer = 0;
	}
}