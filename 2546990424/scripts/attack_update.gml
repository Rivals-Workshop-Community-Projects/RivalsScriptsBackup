//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//HUD Icon Stuff for some attacks
{
if (attack == AT_UTILT){
    if (window < 3 && char_height <= 100){
        char_height += 4;   
    }
    if (window == 3 && char_height >= 60) {
        char_height -= 5;
    }
}
if (attack == AT_DSTRONG){
    if (window < 3 && char_height <= 80){
        char_height += 4;   
    }
    if (window >= 3 && char_height >= 60) {
        char_height -= 5;
    }
}
if (attack == AT_USTRONG){
    if (window > 1 && window < 4 && char_height <= 110){
        char_height += 4;   
    }
    if (window == 4 && window_timer > 7 && char_height >= 60) {
        char_height -= 6;
    }
}
if (attack == AT_DAIR){
    if (window == 2 && char_height <= 70){
        char_height += 4;   
    }
    if (window >= 3 && char_height >= 60) {
        char_height -= 3;
    }
}
if (attack == AT_FAIR){
    if (window == 1 && char_height <= 70){
        char_height += 4;   
    }
    if (window > 1 && char_height >= 60) {
        char_height -= 2;
    }
}
}

//Strongs Wind SFXs
if (((attack == AT_FSTRONG && window == 2 && window_timer == 12) 
|| (attack == AT_USTRONG && window == 2 && window_timer == 12) 
|| (attack == AT_DSTRONG && window == 2 && window_timer == 6)) && !hitpause){
    sound_play(asset_get("sfx_bird_nspecial"));
}

//NSpecial - Cargo Hit
if (attack == AT_NSPECIAL){
    if (window == 1){
        cargo_up = false;
        cargo_down = false;
    }
}

//NSpecial2 - Cargo Hold
if (attack == AT_NSPECIAL_2){
    grab_timer = 5;
    if (window == 1 && window_timer == 1){
        //Throw Forward
        if (cargo_up == false && cargo_down == false){
            //Turns around if facing the other way
            if (free && (spr_dir == 1 && left_down == true) || (spr_dir == -1 && right_down == true)){
                spr_dir *= -1;
            }
            //Hitbox for the Forward Throw
            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw1"));
            hurtboxID.sprite_index = sprite_get("nspecial_throw1_hurt");
            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
            set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
        }
        //Up Throw
        if (cargo_up == true && cargo_down == false) {
            //Hitbox for the Up Throw
            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw2"));
            hurtboxID.sprite_index = sprite_get("nspecial_throw2_hurt");
            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 3);
            set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
        }
        //Down Throw
        if (cargo_up == false && cargo_down == true) {
            //Hitbox for the Down Throw
            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw3"));
            hurtboxID.sprite_index = sprite_get("nspecial_throw3_hurt");
            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 3);
            
            if (!free){
                set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
                vsp = -9;
                set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .4);
            }
            else {
                set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
                set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 3.5);
                set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .2);
            }
        }
    }
}

//FSpecial - Turbine Punch
if (attack == AT_FSPECIAL){
    //Charging Window
    if (window == 2){
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_charge"));
        hurtboxID.sprite_index = sprite_get("fspecial_charge_hurt");
        turbine_counting = true;
        turbine_cont++;
        can_jump = true;
        if (shield_pressed){
            window = 1;
            window_timer = 1;
            attack = AT_TAUNT_2;
        }
        //Finished Charging
        if (turbine_cont >= 70){
            window = 6;
        }
        //Attack during Charge
        if (special_pressed){
            window = 3;
            window_timer = 4;
        }
    }
    //Not Charging
    if (window != 2){
        turbine_counting = false;
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
        hurtboxID.sprite_index = sprite_get("fspecial_hurt");
    }
    //Resets the Charge and hitboxes
    if (window == 4){
        if (turbine_cont >= 70 && free){
            hsp = -8*spr_dir;
        }
        turbine_cont = 0;
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
    	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 25);
        set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
        set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
    }
}
//It's not charging
else {
    turbine_counting = false;
}

//DSpecial - Whirlwind
if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    //Start of the move
    if (window == 1){
        whirlwind_myself = false;
        //Sets the default Whirlwind
        if (window_timer < 12){
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
            whirlwind_angle = 0
            whirlwind_x = 0;
            whirlwind_y = -10;
            whirlwind_x_hitbox = 0;
            whirlwind_y_hitbox = 5;
            whirlwind_hitbox_num = 2;
        }
        //If Special is Hold, allow it to aim
        if (window_timer == 12 && special_down && whirlwind_off == false && whirlwind_cooldown == 0){
                set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 30);
            }
    }
    //Aiming the Whirlwind
    if (window == 2 && window_timer > 5){
            if (joy_pad_idle || up_down){
                    whirlwind_angle = 0
                    whirlwind_x = 0;
                    whirlwind_y = -10;
                    whirlwind_x_hitbox = 0;
                    whirlwind_y_hitbox = 5;
                    whirlwind_hitbox_num = 2;
                }
            if (up_down && !down_down && right_down){
                    whirlwind_angle = -45;
                    whirlwind_x = 15;
                    whirlwind_y = 5;
                    whirlwind_x_hitbox = 40;
                    whirlwind_y_hitbox = 20;
                    whirlwind_hitbox_num = 3;
                }
            if (!up_down && !down_down && right_down){
                    whirlwind_angle = -90;
                    whirlwind_x = 30;
                    whirlwind_y = 30;
                    whirlwind_x_hitbox = 50;
                    whirlwind_y_hitbox = 50;
                    whirlwind_hitbox_num = 4;
                }
            if (!up_down && down_down && right_down){
                    whirlwind_angle = -135;
                    whirlwind_x = 30;
                    whirlwind_y = 60;
                    whirlwind_x_hitbox = 35;
                    whirlwind_y_hitbox = 85;
                    whirlwind_hitbox_num = 5;
                }
            if (down_down && !right_down && !left_down){
                    whirlwind_angle = 180;
                    whirlwind_x = 5;
                    whirlwind_y = 60;
                    whirlwind_x_hitbox = -5;
                    whirlwind_y_hitbox = 95;
                    whirlwind_hitbox_num = 6;
                }
            if (up_down && !down_down && left_down){
                    whirlwind_angle = 45;
                    whirlwind_x = -15;
                    whirlwind_y = 5;
                    whirlwind_x_hitbox = -35;
                    whirlwind_y_hitbox = 15;
                    whirlwind_hitbox_num = 7;
                }
            if (!up_down && !down_down && left_down){
                    whirlwind_angle = 90;
                    whirlwind_x = -30;
                    whirlwind_y = 30;
                    whirlwind_x_hitbox = -55;
                    whirlwind_y_hitbox = 50;
                    whirlwind_hitbox_num = 8;
                }
            if (!up_down && down_down && left_down){
                    whirlwind_angle = 135;
                    whirlwind_x = -30;
                    whirlwind_y = 60;
                    whirlwind_x_hitbox = -40;
                    whirlwind_y_hitbox = 80;
                    whirlwind_hitbox_num = 9;
                }
            if (!special_down){
                window_timer = 30;
            }
        }
    //Creating the Whirlwind
    if (window == 3 && window_timer == 1){
        //If there's 2 Whirlwinds, destroy the first
        
        //Creates the Whirlwind
        if (whirlwind_off == false && whirlwind_cooldown == 0){
            whirlwind_cooldown = 60;
                //If there's one already
                if (instance_exists(whirlwind)){
                whirlwind.state_timer = -40; 
                with (asset_get("pHitBox")){
                    if (attack == AT_DSPECIAL && hbox_num == 1){
                        destroyed = true;
                    }
                }
            }
                    whirlwind = instance_create( x-whirlwind_x, y-whirlwind_y, "obj_article1"); 
                    whirlwind.image_angle = whirlwind_angle;
                    whirlwind_first = true;
                    whirlwind.whirlwind_first = true;
                    whirlwind.whirlwind_x_hitbox = whirlwind_x_hitbox;
                    whirlwind.whirlwind_y_hitbox = whirlwind_y_hitbox;
                    whirlwind.whirlwind_hitbox_num = whirlwind_hitbox_num;
                  
            }
        }
    //Cooldown
    if (window == 3){
            move_cooldown[AT_DSPECIAL] = 999;
        }
}

//USpecial - Maverick Copter
if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_move = true;
    //If grounded, stay on the ground
   if (!free){
       set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
       set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
       set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
       
       //Horizontal Movement
       if (window == 2){
           if (right_down && hsp < 3){
               hsp += .75;
           }
           if (left_down && hsp > -3){
               hsp -= .75;
           }
       }
   }
   //If aerial, move upwards and enters pratfall
   else {
       set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -3.5);
       set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
       set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
       
       //Horizontal Movement
       if (window == 2){
           if (right_down){
               if (hsp < 6 && hsp >= 0){
                   hsp += 1;
               }
               if (hsp < 0){
                   hsp += .25;
               }
           }
           if (left_down){
               if (hsp > -6 && hsp <= 0){
                   hsp -= 1;
               }
               if (hsp > 0){
                   hsp -= .25;
               }
           }
       }
   }
    
}

//Taunt Hold
if (attack == AT_TAUNT){
    if (window == 2 && taunt_down){
        window_timer = 1;
    }
}

if (attack == AT_TAUNT_2 && window_timer == 4){
    spawn_hit_fx( x, y-20, 194);
}

