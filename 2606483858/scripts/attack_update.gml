//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//NSpecial
if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    //Charging Window
    if (window == 2){
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 18);
//        vsp = 1;
        note_counting = true;
        note_cont++;
        can_jump = true;
        if(shield_pressed){set_state(PS_IDLE);}
        
        //Finished Charging
        if (note_cont >= 70){    //You can change this number to make it be the total charge timer
            window = 5;
        }
        //Attack during Charge
        if (special_pressed){
            window = 3;
            window_timer = 1;
        }
    }
    //Not Charging
    if (window != 2){
        note_counting = false;
    }
    //Resets the Charge and hitboxes
    if (window == 4){
        note_cont = 0;
    }
}

//FSpecial
if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    can_move = false;
    //Charging Window
    if (window == 2){
        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
        vsp = 1;
        mic_counting = true;
        mic_cont++;
        can_jump = true;
        can_shield = true;

        
        //Finished Charging
        if (mic_cont >= 70){    //You can change this number to make it be the total charge timer
            window = 7;
        }
        //Attack during Charge
        if (special_pressed){
            window = 3;
            window_timer = 1;
        }
    }
    //Not Charging
    if (window != 2){
        mic_counting = false;
    }
    //Resets the Charge and hitboxes
    if (window == 5 || window == 6){
        mic_cont = 0;
        move_cooldown[AT_FSPECIAL] = 30;	//Change the cooldown here
    }
    //Makes so you don't move while using the move
    if (window > 2 && window < 9){
        vsp = 0;
        hsp = 0;
    }
    if(window == 6 && window_timer >= 21){if(free){set_state(PS_PRATFALL);}}
}

//USpecial
if (attack == AT_USPECIAL){
    can_fast_fall = false;
    //Start of the move
    if (window == 1){
        arrow_myself = false;
        
        
        
        //Sets the default Arrow
        if (window_timer < 12){
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 1);
            arrow_hitbox_num = 2;
        }
        //If Special is Hold, allow it to aim
        if (window_timer == 12 && special_down && arrow_off == false){
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 30);
            }
    }
    //Aiming the Arrow
    if (window == 2 && window_timer > 5){
            if (joy_pad_idle || up_down){
                    arrow_hitbox_num = 2;
                }
            if (!up_down && !down_down && right_down){
                    arrow_hitbox_num = 3;
                }
            if (down_down && !right_down && !left_down){
                    arrow_hitbox_num = 4;
                }
            if (!up_down && !down_down && left_down){
                    arrow_hitbox_num = 5;
                }
            if (!special_down){
                window_timer = 30;
            }
        }
    //Creating the Arrow
    if (window == 3 && window_timer == 1){
        //Destroys an arrow if its there
        if (arrow_off == true){
                arrow.state_timer = -5; 
                with (asset_get("pHitBox")){
                    if (attack == AT_USPECIAL && hbox_num == 1){
                        destroyed = true;
                    }
                }
            }
        //Creates the Arrow
        if (arrow_off == false && arrow_cooldown == 0){
            arrow_cooldown = 60;
            //If there's no Arrow made
                    arrow = instance_create( x, y, "obj_article2"); 
                    arrow.arrow_hitbox_num = arrow_hitbox_num;
            }
        }
        
    //Cooldown
    if (window == 3){
            move_cooldown[AT_USPECIAL] = 999;
        }
}

//DSpecial
if (attack == AT_DSPECIAL){
	//Counting
	if (window == 1){
        babe_counting = true;
        babe_cont++;
        can_jump = true;
        can_shield = true;
	}
	//Activation
	if (window == 2 && window_timer == 4){
		if (instance_exists(hotbabe)){
			create_hitbox(AT_DSPECIAL, 1, hotbabe.x-40*spr_dir, hotbabe.y);
			create_hitbox(AT_DSPECIAL, 2, hotbabe.x+40*spr_dir, hotbabe.y);
			hotbabe.state_timer = 1;
			hotbabe.image_index = 0;
			hotbabe.state = 2;
		}
		else {
			hotbabe = instance_create(floor(x),floor(y),"obj_article1");
		}
	}
}

if(!voice){
switch(attack){
    case AT_DSTRONG:
        if(window == 2 && window_timer == 6 && !hitpause){
        switch(get_player_color(player)){
            case 0:
            case 17:
            case 18:
            case 21:
            case 24:
            case 25:
            case 28:
            case 27:
            case 30:
            case 31:
            case 6:
            case 5:
            case 4:
            case 3:
            case 10:
                sound_play(sound_get("Euh_Short"))
            break;
            case 1:
                sound_play(sound_get("dad_o"))
            break;
            case 2:
                sound_play(sound_get("pico_o"))
            break;
            case 7:
                sound_play(sound_get("tricky_a"))
            break;
            case 8:
                sound_play(sound_get("pump_a"))
            break; 
            case 9:
                sound_play(sound_get("ruv"))
                shake_camera(5,5)
            break;
            case 11:
                sound_play(sound_get("liz_a"))
            break;
            case 12:
                sound_play(sound_get("matt_o"))
            break;
            case 13:
                sound_play(sound_get("whitty_e"))
            break;
            case 14:
                sound_play(sound_get("miku_i"))
            break;
            case 15:
                sound_play(sound_get("senpai_i"))
            break;
            case 16:
                sound_play(sound_get("king_a"))
            break;
            case 19:
                sound_play(sound_get("kapi_a"))
            break;
            case 20:
                sound_play(sound_get("garcello_u"))
            break;
            case 22:
                sound_play(sound_get("agoti_a"))
            break;
            case 23:
                sound_play(sound_get("tabi_a"))
            break;
            case 29:
                sound_play(sound_get("zardy_a"))
            break;
            case 26:
                sound_play(sound_get("tankman_a"))
            break;
        }
    }
    break;
    case AT_FSTRONG:
        if(window == 2 && window_timer == 1 && !hitpause){
        switch(get_player_color(player)){
            case 0:
            case 17:
            case 18:
            case 21:
            case 24:
            case 25:
            case 28:
            case 27:
            case 30:
            case 31:
            case 6:
            case 5:
            case 4:
            case 3:
            case 10:
                sound_play(sound_get("Ah_Short"))
            break;
            case 1:
                sound_play(sound_get("dad_a"))
            break;
            case 2:
                sound_play(sound_get("pico_a"))
            break;
            case 7:
                sound_play(sound_get("tricky_e"))
            break;
            case 8:
                sound_play(sound_get("pump_o"))
            break;
            case 9:
                sound_play(sound_get("ruv"))
                shake_camera(5,5)
            break; 
            case 11:
                sound_play(sound_get("liz_a"))
            break;
            case 12:
                sound_play(sound_get("matt_a"))
            break;
            case 13:
                sound_play(sound_get("whitty_a"))
            break;
            case 14:
                sound_play(sound_get("miku_a"))
            break;
            case 15:
                sound_play(sound_get("senpai_o"))
            break;
            case 16:
                sound_play(sound_get("king_a"))
            break;
            case 19:
                sound_play(sound_get("kapi_a"))
            break;
            case 20:
                sound_play(sound_get("garcello_e"))
            break;
            case 22:
                sound_play(sound_get("agoti_a"))
            break;
            case 23:
                sound_play(sound_get("tabi_e"))
            break;
            case 29:
                sound_play(sound_get("zardy_o"))
            break;
            case 26:
                sound_play(sound_get("tankman_e"))
            break;
        }
    }
    break;
    case AT_UTILT:
    case AT_UAIR:
        if(window == 1 && window_timer == 7 && !hitpause){
            switch(get_player_color(player)){ 
                case 0:
                case 17:
                case 18:
                case 21:
                case 24:
                case 25:
                case 28:
                case 27:
                case 30:
                case 31:
                case 6:
                case 5:
                case 4:
                case 3:
                case 10:
                    sound_play(sound_get("Ah_Short"))
                break;
                case 1:
                    sound_play(sound_get("dad_a"))
                break;
                case 2:
                    sound_play(sound_get("pico_a"))
                break;
                case 7:
                    sound_play(sound_get("tricky_e"))
                break;
                case 8:
                    sound_play(sound_get("pump_o"))
                break;
                case 9:
                    sound_play(sound_get("ruv"))
                    shake_camera(5,5)
                break;
                case 11:
                    sound_play(sound_get("liz_a"))
                break;
                case 12:
                    sound_play(sound_get("matt_a"))
                break;
                case 13:
                    sound_play(sound_get("whitty_a"))
                break;
                case 14:
                    sound_play(sound_get("miku_a"))
                break;
                case 15:
                    sound_play(sound_get("senpai_o"))
                break;
                case 16:
                    sound_play(sound_get("king_a"))
                break;
                case 19:
                    sound_play(sound_get("kapi_a"))
                break;
                case 20:
                    sound_play(sound_get("garcello_e"))
                break;
                case 22:
                    sound_play(sound_get("agoti_a"))
                break;
                case 23:
                    sound_play(sound_get("tabi_e"))
                break;
                case 29:
                    sound_play(sound_get("zardy_e"))
                break;
                case 26:
                    sound_play(sound_get("tankman_e"))
                break;
            }
        }
    break;
    case AT_DTILT:
        if(window == 1 && window_timer == 7 && !hitpause){
        switch(get_player_color(player)){
            case 0:
            case 17:
            case 18:
            case 21:
            case 24:
            case 25:
            case 28:
            case 27:
            case 30:
            case 31:
            case 6:
            case 5:
            case 4:
            case 3:
            case 10:
                sound_play(sound_get("Dai_Short"))
            break;
            case 1:
                sound_play(sound_get("dad_a"))
            break;
            case 2:
                sound_play(sound_get("pico_a"))
            break;
            case 7:
                sound_play(sound_get("tricky_o"))
            break;
            case 8:
                sound_play(sound_get("pump_e"))
            break;
            case 9:
                sound_play(sound_get("ruv"))
                shake_camera(5,5)
            break; 
            case 11:
                sound_play(sound_get("liz_a"))
            break;
            case 12:
                sound_play(sound_get("matt_o"))
            break;
            case 13:
                sound_play(sound_get("whitty_o"))
            break;
            case 14:
                sound_play(sound_get("miku_i"))
            break;
            case 15:
            	sound_play(sound_get("senpai_i"))
            break;
            case 16:
                sound_play(sound_get("king_a"))
            break;
                sound_play(sound_get("senpai_i"))
            break;
            case 19:
                sound_play(sound_get("kapi_a"))
            break;
            case 20:
                sound_play(sound_get("garcello_u"))
            break;
            case 22:
                sound_play(sound_get("agoti_a"))
            break;
            case 23:
                sound_play(sound_get("tabi_o"))
            break;
            case 26:
                sound_play(sound_get("tankman_o"))
            break;
            case 29:
                sound_play(sound_get("zardy_o"))
            break;
        }
    }
    break;
    case AT_FTILT:
        if(window == 1 && window_timer == 7 && !hitpause){
        switch(get_player_color(player)){
            case 0:
            case 17:
            case 18:
            case 21:
            case 24:
            case 25:
            case 28:
            case 27:
            case 30:
            case 31:
            case 6:
            case 5:
            case 4:
            case 3:
            case 10:
                sound_play(sound_get("Euh_Short"))
            break;
            case 1:
                sound_play(sound_get("dad_e"))
            break;
            case 2:
                sound_play(sound_get("pico_o"))
            break;
            case 7:
                sound_play(sound_get("tricky_a"))
            break;
            case 8:
                sound_play(sound_get("pump_a"))
            break; 
            case 9:
                sound_play(sound_get("ruv"))
                shake_camera(5,5)
            break;
            case 11:
                sound_play(sound_get("liz_a"))
            break;
            case 12:
                sound_play(sound_get("matt_o"))
            break;
            case 13:
                sound_play(sound_get("whitty_o"))
            break;
            case 14:
                sound_play(sound_get("miku_a"))
            break;
            case 15:
                sound_play(sound_get("senpai_o"))
            break;
            case 16:
                sound_play(sound_get("king_a"))
            break;
            case 19:
                sound_play(sound_get("kapi_a"))
            break;
            case 20:
                sound_play(sound_get("garcello_a"))
            break;
            case 22:
                sound_play(sound_get("agoti_a"))
            break;
            case 23:
                sound_play(sound_get("tabi_o"))
            break;
            case 26:
                sound_play(sound_get("tankman_a"))
            break;
            case 29:
                sound_play(sound_get("zardy_a"))
            break;
        }
    }
    break;
case AT_NSPECIAL:
        if(window == 3 && window_timer == 1 && !hitpause){
        switch(get_player_color(player)){
            case 0:
            case 17:
            case 18:
            case 21:
            case 24:
            case 25:
            case 28:
            case 27:
            case 30:
            case 31:
            case 6:
            case 5:
            case 4:
            case 3:
            case 10:
                sound_play(sound_get("Euh_Short"))
            break;
            case 1:
                sound_play(sound_get("dad_o"))
            break;
            case 2:
                sound_play(sound_get("pico_o"))
            break;
            case 7:
                sound_play(sound_get("tricky_a"))
            break;
            case 8:
                sound_play(sound_get("pump_a"))
            break; 
            case 9:
                sound_play(sound_get("ruv"))
                shake_camera(5,5)
            break;
            case 11:
                sound_play(sound_get("liz_a"))
            break;
            case 12:
                sound_play(sound_get("matt_o"))
            break;
            case 13:
                sound_play(sound_get("whitty_e"))
            break;
            case 14:
                sound_play(sound_get("miku_i"))
            break;
            case 15:
                sound_play(sound_get("senpai_i"))
            break;
            case 16:
                sound_play(sound_get("king_a"))
            break;
            case 19:
                sound_play(sound_get("kapi_a"))
            break;
            case 20:
                sound_play(sound_get("garcello_u"))
            break;
            case 22:
                sound_play(sound_get("agoti_a"))
            break;
            case 23:
                sound_play(sound_get("tabi_a"))
            break;
            case 29:
                sound_play(sound_get("zardy_a"))
            break;
            case 26:
                sound_play(sound_get("tankman_a"))
            break;
        }
    }
    break;
    case AT_USTRONG:
        if(window == 1 && window_timer == 2 && !hitpause){
            sound_play(sound_get("bf_Pico"))
        }
}
}
if(attack == AT_USTRONG){
    if(window == 2 && window_timer == 12 && !hitpause){
        sound_play(sound_get("picoshot"))
    }
}
if(attack == AT_DATTACK){
    if(window == 3 && (spr_dir == 1 && right_down || spr_dir == -1 && left_down) && window_timer == 7 && !free && !hitpause && !was_parried){
        set_state(PS_DASH);
    }
}
if(attack == AT_TAUNT_2){
    vsp -= 0.5;
    can_move = false;
}
#define Grab(xpos, ypos, xsmooth, ysmooth)
{
    if (xsmooth != 0)
    {
        hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
        hit_player_obj.hsp = 0;
        hit_player_obj.old_hsp = 0;
        hit_player_obj.hitpause = true;
        hit_player_obj.hitstop = 1;
    }
    if (ysmooth != 0)
    {
        hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
        hit_player_obj.vsp = 0;
        hit_player_obj.old_vsp = 0;
        hit_player_obj.hitpause = true;
        hit_player_obj.hitstop = 1;
    }
}