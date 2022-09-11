




if (is_nana){

if (!list_convert){
input_storage = list(input_storage);
input_queue = list(input_queue);
list_convert = true;
}


// if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL){
// nana_unsynced = false;
// }

// if (nana_unsynced)
// nana_catchup = false;

if ((popo.state == PS_ATTACK_GROUND && (popo.attack == AT_NSPECIAL || popo.attack == 46 || popo.attack == AT_EXTRA_3 || popo.attack == 48)) || ( (abs(x - popo.x) > 100 || abs(y - popo.y) > 100) && state_cat != SC_HITSTUN ) )
nana_catchup = true;

// print_debug(input_delay);

if (!nana_catchup){  

    if (input_clearing)
        input_clearing = false;

        ai_recovering = false;
            if (list_length(input_storage) == 0){
                    if (popo.attack_pressed)            list_insert(input_storage, 0, INP_ATTACK      );
                    if (popo.special_pressed)           list_insert(input_storage, 0, INP_SPECIAL     );
                    if (popo.jump_pressed)              list_insert(input_storage, 0, INP_JUMP        );
                    if (popo.shield_pressed)            list_insert(input_storage, 0, INP_SHIELD      );
                    if (popo.taunt_pressed)             list_insert(input_storage, 0, INP_TAUNT       );
                    if (popo.attack_down)               list_insert(input_storage, 0, INP_ATTACK_HOLD );
                    if (popo.special_down)              list_insert(input_storage, 0, INP_SPECIAL_HOLD);
                    if (popo.jump_down)                 list_insert(input_storage, 0, INP_JUMP_HOLD   );
                    if (popo.shield_down)               list_insert(input_storage, 0, INP_SHIELD_HOLD );
                    if (popo.strong_down)               list_insert(input_storage, 0, INP_STRONG_HOLD );
                    if (popo.taunt_down)                list_insert(input_storage, 0, INP_TAUNT_HOLD  );
                    if (popo.up_strong_pressed)         list_insert(input_storage, 0, INP_USTRONG     );
                    if (popo.down_strong_pressed)       list_insert(input_storage, 0, INP_DSTRONG     );
                    if (popo.left_strong_pressed)       list_insert(input_storage, 0, INP_LSTRONG     );
                    if (popo.right_strong_pressed)      list_insert(input_storage, 0, INP_RSTRONG     );
                    if (popo.up_strong_down)            list_insert(input_storage, 0, INP_USTRONG_HOLD);
                    if (popo.down_strong_down)          list_insert(input_storage, 0, INP_DSTRONG_HOLD);
                    if (popo.left_strong_down)          list_insert(input_storage, 0, INP_LSTRONG_HOLD);
                    if (popo.right_strong_down)         list_insert(input_storage, 0, INP_RSTRONG_HOLD);
                    if (popo.up_stick_pressed)          list_insert(input_storage, 0, INP_USTICK      );
                    if (popo.down_stick_pressed)        list_insert(input_storage, 0, INP_DSTICK      );
                    if (popo.left_stick_pressed)        list_insert(input_storage, 0, INP_LSTICK      );
                    if (popo.right_stick_pressed)       list_insert(input_storage, 0, INP_RSTICK      );
                    if (popo.up_stick_down)             list_insert(input_storage, 0, INP_USTICK_HOLD );
                    if (popo.down_stick_down)           list_insert(input_storage, 0, INP_DSTICK_HOLD );
                    if (popo.left_stick_down)           list_insert(input_storage, 0, INP_LSTICK_HOLD );
                    if (popo.right_stick_down)          list_insert(input_storage, 0, INP_RSTICK_HOLD );
                    if (popo.up_pressed)                list_insert(input_storage, 0, INP_UP          );
                    if (popo.down_pressed)              list_insert(input_storage, 0, INP_DOWN        );
                    if (popo.left_pressed)              list_insert(input_storage, 0, INP_LEFT        );
                    if (popo.right_pressed)             list_insert(input_storage, 0, INP_RIGHT       );
                    if (popo.up_down)                   list_insert(input_storage, 0, INP_UP_HOLD     );
                    if (popo.down_down)                 list_insert(input_storage, 0, INP_DOWN_HOLD   );
                    if (popo.left_down)                 list_insert(input_storage, 0, INP_LEFT_HOLD   );
                    if (popo.right_down)                list_insert(input_storage, 0, INP_RIGHT_HOLD  );
                    if (popo.up_hard_pressed)           list_insert(input_storage, 0, INP_UP_HARD     );
                    if (popo.down_hard_pressed)         list_insert(input_storage, 0, INP_DOWN_HARD   );
                    if (popo.left_hard_pressed)         list_insert(input_storage, 0, INP_LEFT_HARD   );
                    if (popo.right_hard_pressed)        list_insert(input_storage, 0, INP_RIGHT_HARD  );
                    if (popo.joy_pad_idle)              list_insert(input_storage, 0, INP_IDLE        );
                    list_insert(input_storage, 0, popo.joy_dir);
                

                for (i = 0; i < list_length(input_storage); i++){
                    list_to_arr[@i] = list_get(input_storage,i);
                }

                list_insert(input_queue, 0, array_create(40, undefined) );
                array_copy(list_get(input_queue, 0), 0, list_to_arr, 0, array_length(list_to_arr));

                for (i = list_length(input_storage) - 1; i >= 0; i--){
                    list_delete(input_storage, i);
                }

                for (i = 0; i < array_length(list_to_arr) - 1; i++){
                    list_to_arr[@i] = undefined;
                }

            }
                



                // for (i = list_length(input_queue) - 1; i >= 0; i--){
                // print_debug(string(i) + ": " + string(input_delay) + ": " + string(list_get(input_queue, i)));
                // }

                
                
                if (input_delay == 0){

                                var stored_storage = array_create(40, undefined);

                                array_copy(stored_storage, 0, list_get(input_queue, list_length(input_queue)-1  ), 0, array_length(list_get(input_queue, list_length(input_queue)-1  )));

                                list_delete(input_queue, list_length(input_queue)-1);

                                var storage_str = "";

                                for (i = 0; i < array_length(stored_storage) - 1; i++){
                                    storage_str += ", " + string(stored_storage[i]);
                                }
                                
                                attack_pressed       = false;
                                special_pressed      = false;
                                jump_pressed         = false;
                                shield_pressed       = false;
                                taunt_pressed        = false;
                                attack_down          = false;
                                special_down         = false;
                                jump_down            = false;
                                shield_down          = false;
                                strong_down          = false;
                                taunt_down           = false;
                                up_strong_pressed    = false;
                                down_strong_pressed  = false;
                                left_strong_pressed  = false;
                                right_strong_pressed = false;
                                up_strong_down       = false;
                                down_strong_down     = false;
                                left_strong_down     = false;
                                right_strong_down    = false;
                                up_stick_pressed     = false;
                                down_stick_pressed   = false;
                                left_stick_pressed   = false;
                                right_stick_pressed  = false;
                                up_stick_down        = false;
                                down_stick_down      = false;
                                left_stick_down      = false;
                                right_stick_down     = false;
                                up_pressed           = false;
                                down_pressed         = false;
                                left_pressed         = false;
                                right_pressed        = false;
                                up_down              = false;
                                down_down            = false;
                                left_down            = false;
                                right_down           = false;
                                up_hard_pressed      = false;
                                down_hard_pressed    = false;
                                left_hard_pressed    = false;
                                right_hard_pressed   = false;
                                joy_pad_idle         = false;
                                joy_dir              = 0;


                                    for (i = 0; i < array_length(stored_storage) ; i++){

                                        var _input = stored_storage[i];

                                        if (i != 0){
                                            switch(_input){
                                             case 0:  attack_pressed       = true; break;
                                             case 1:  special_pressed      = true; break;
                                             case 2:  jump_pressed         = true; break;
                                             case 3:  shield_pressed       = true; break;
                                             case 4:  taunt_pressed        = true; break;
                                             case 5:  attack_down          = true; break;
                                             case 6:  special_down         = true; break;
                                             case 7:  jump_down            = true; break;
                                             case 8:  shield_down          = true; break;
                                             case 9:  strong_down          = true; break;
                                             case 10: taunt_down           = true; break;
                                             case 11: up_strong_pressed    = true; break;
                                             case 12: down_strong_pressed  = true; break;
                                             case 13: left_strong_pressed  = true; break;
                                             case 14: right_strong_pressed = true; break;
                                             case 15: up_strong_down       = true; break;
                                             case 16: down_strong_down     = true; break;
                                             case 17: left_strong_down     = true; break;
                                             case 18: right_strong_down    = true; break;
                                             case 19: up_stick_pressed     = true; break;
                                             case 20: down_stick_pressed   = true; break;
                                             case 21: left_stick_pressed   = true; break;
                                             case 22: right_stick_pressed  = true; break;
                                             case 23: up_stick_down        = true; break;
                                             case 24: down_stick_down      = true; break;
                                             case 25: left_stick_down      = true; break;
                                             case 26: right_stick_down     = true; break;
                                             case 27: up_pressed           = true; break;
                                             case 28: down_pressed         = true; break;
                                             case 29: left_pressed         = true; break;
                                             case 30: right_pressed        = true; break;
                                             case 31: up_down              = true; break;
                                             case 32: down_down            = true; break;
                                             case 33: left_down            = true; break;
                                             case 34: right_down           = true; break;
                                             case 35: up_hard_pressed      = true; break;
                                             case 36: down_hard_pressed    = true; break;
                                             case 37: left_hard_pressed    = true; break;
                                             case 38: right_hard_pressed   = true; break;
                                             case 39: joy_pad_idle         = true; break;
                                            }
                                        }else
                                        {
                                            joy_dir = _input;
                                        }

                                    }

                                
                }







            


                if (input_delay != 0)
                {
                    input_delay--;
                }
            

        // if (state == PS_WALK_TURN){
        //     state = PS_IDLE;
        //     spr_dir = -spr_dir;
        // }

        if (popo.state_cat == SC_GROUND_NEUTRAL){

            // if (popo.state_timer > 20) && abs(x - popo.x) > 50
            // nana_catchup = true;

            if (spr_dir != popo.spr_dir)
            {
                spr_dir = popo.spr_dir;
            }



        }

        if (popo.state == PS_ATTACK_GROUND && attack != AT_DSPECIAL){
            spr_dir = popo.spr_dir;
        }

}
else
{

    if (!input_clearing){
        input_delay = input_delay_def;

        for (i = list_length(input_storage) - 1; i >= 0; i--){
            list_delete(input_storage, i);
        }

        for (i = list_length(input_queue) - 1; i >= 0; i--){
            list_delete(input_queue, i);
        }

        for (i = 0; i < array_length(list_to_arr) - 1; i++){
        list_to_arr[@i] = undefined;
        }
    input_clearing = true;
    }

    if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL)
    nana_catchup = true;

        
    if (nana_catchup){

        jump_speed = 10;
        short_hop_speed = 10;
        djump_speed = 10;

        if (x != popo.x - (25 * popo.spr_dir)){

            if (x - popo.x > 0)
            left_down = true;
            else
            right_down = true;

            if (state == PS_WALK)
            state = PS_DASH;

           
        }



        if ((popo.y - y) > 0 && !free){
            down_pressed = true;
            down_hard_pressed = true;
        }

        if ((popo.y - y) < 0){
            if (!free){
            jump_pressed = true;
            jump_down = true;
            }
            else if (state_timer > 12  && (popo.y - y) < -100)
            {
                jump_down = true;

                if (free)
                jump_pressed = true;
            }

        }
    }

    if ((abs(x - popo.x) < 20) && (abs(y - popo.y) < 20))
        nana_catchup = false;

}


}
else if (get_training_cpu_action() == CPU_FIGHT){
var attack_rand; 
if (temp_level >= 5)
{
   
    //specific attack behaviors 
       //ELECTRICS ALL THE WAY
    if (state == PS_ATTACK_GROUND && attack == AT_FSTRONG_2 && window == 1 && window_timer == 1){
        
        //electric chance
        attack_rand = random_func( 0, 10 - temp_level, true );
        
        if(attack_rand = 0){
        ewgf = true;
        ewgf_real = true;
        }
    }
    
    //OMEN CHANCE
    if (state == PS_ATTACK_GROUND && attack == AT_USTRONG_2 && !hellsweepdgf && state_timer == 1){
        attack_rand = random_func( 0, 5, true );
        
        if (attack_rand == 0)
        omen = true;
    }
    
    
    //SPEEN
        if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG_2){
            if (has_hit_player && hitpause){
                
                attack_rand = random_func( 0, 2, true );
                if (attack_rand == 0)
                special_pressed = true;
                else
                strong_pressed = true;
            }
    }
    
   
   
    //WAVU WAVU BITCH
    
    var dfl_r = (room_width - get_stage_data(SD_X_POS)) - ai_target.x;
    var dfl_l = (room_width - get_stage_data(SD_X_POS) - get_stage_data(SD_WIDTH)) - ai_target.x  ;
    
    if (abs(ai_target.x - x) > 50) && !free && (dfl_r > 0 && dfl_l < 0 ){
        
        
        
        
            if (state_cat == SC_GROUND_NEUTRAL || (state == PS_DASH_START && state_timer > 3)) && temp_level >= 7{
                if (ai_target.x > x)
                spr_dir = 1;
                else if (ai_target.x < x)
                spr_dir = -1;
                
                set_state(PS_ATTACK_GROUND);
                attack = AT_EXTRA_1;
            }
            else if temp_level <= 6{
                var dash_rand = random_func( 0, 1 + (round(temp_level/9)), true );
                if state == PS_DASH && dash_rand == 1{

                    set_state(PS_ATTACK_GROUND);
                    attack = AT_EXTRA_1;
                }
            }
            

        
        if attack == AT_EXTRA_1 && window == 2 && window_timer > 3{
            set_state(PS_DASH_START);
        }
        
        
        if (abs(ai_target.x - x) < 200) && ai_target.state_cat != SC_HITSTUN && !ai_target.was_parried
        {
            var dashback_rand = random_func( 0, 2 + (round(temp_level/9)), true );
            if dashback_rand == 1 {
                if (state == PS_DASH_START){
                set_state(PS_WAVELAND);
                
                hsp = 10 * -spr_dir;
                
                }
            }
            if dashback_rand == 2 && ai_target.state == PS_ATTACK_GROUND && !free && ai_target.state_timer < 6  {
                left_down = false;
                right_down = false;
                shield_pressed = true;
                
            }
        
        }
        //projectile parry or jump
        
        with(pHitBox){
            
            var proj_rand = random_func( 0, 2, true );
            if (player != other.player) && (abs(other.x - x) < 100 ) && (abs(other.y - y) < 100) && type == 2 && hsp != 0
            {
                if proj_rand == 1 {
                    other.left_down = false;
                    other.right_down = false;
                    other.shield_pressed = true; 
                    
                }
                else if proj_rand == 0{
                    other.jump_pressed = true; 
                }
            }
        }


    }
 
     //timer for delay between actions
    if (has_hit_player && !hitpause && ai_target.state_cat == SC_HITSTUN){
        action_timer++;
    }
    
    //punishes
    
    //whiff punish
    if (abs(ai_target.x - x) < 120 && ai_target.state == PS_ATTACK_GROUND && !free && ai_target.state_timer < 6 )
        {
            attack_pressed = true;
            
            if (state == PS_ATTACK_GROUND && state_timer == 1){
            attack_rand = random_func( 0, 4, true );
            set_attack(punish_moves[attack_rand]);
            }
        }
        
    //anti air
    if (abs(ai_target.x - x) < 100 && (ai_target.y < y) && ai_target.state == PS_ATTACK_AIR && !free && ai_target.state_timer < 6 )
        {
            attack_pressed = true;
            
            if (state == PS_ATTACK_GROUND && state_timer == 1){
            attack_rand = random_func( 0, 4, true );
            set_attack(punish_moves[attack_rand]);
            }
        }

    //parry punish
    if (ai_target.was_parried && abs(ai_target.x - x) < 100){
        attack_pressed = true;
        if (state == PS_ATTACK_GROUND && state_timer == 1){
            attack_rand = random_func( 0, 4, true );
            set_attack(punish_moves[attack_rand]);
        }
    }

    //BNB combos
    if (state == PS_ATTACK_GROUND && attack == AT_JAB && has_hit_player){
        if (window < 5){
            left_down = false;
            right_down = false;
            attack_pressed = true;
        }
        else if (window == 6){
            attack_end();
        set_attack(AT_FSTRONG_2);
        }
    }
}

    //combo when enemy in hitstun
    if (ai_target.state_cat == SC_HITSTUN && abs(ai_target.x - x) < 100 && abs(ai_target.y - y) < 50){
        if !(instance_exists( field_obj )){
        attack_pressed = true;
        }else
        {
            if field_obj.player_touching && free
            special_pressed = true;
            else
            attack_pressed = true;
        }
    }
    
    //follow DI
    if (ai_target.state_cat == SC_HITSTUN && abs(ai_target.x - x) < 100){
        
        if (ai_target.x < x){
            
        if (state == PS_ATTACK_GROUND) && spr_dir == 1 && window == 1 && window_timer == 1
        spr_dir = -1;
        
        left_down = true;
        }
        
        if (ai_target.x > x){
            
        if (state == PS_ATTACK_GROUND) && spr_dir == -1 && window == 1 && window_timer == 1
        spr_dir = 1;
        
        right_down = true;
        }
    }
    
    //Combo starter
    if (state == PS_ATTACK_GROUND && array_find_index(combo_starter, attack) != -1 && has_hit_player){
        combo_start = true;
        
        
        attack_rand = random_func( 0, 2, true );
        
        if ((attack_rand == 0 || (instance_exists( field_obj ))) && !free)
        jump_pressed = true;
        

        
        action_timer = 0;
    }
    
    //skip extender if kill%
    if (get_player_damage( ai_target.player ) > 120 && combo_start){
        combo_start = false;
        combo_extend = false;
        combo_end = true;
    }
    
    //Follow up attack
    if (ai_target.state_cat == SC_HITSTUN && combo_start && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND ){
        
        combo_start = false;
        combo_extend = true;
        

        if (free)
        attack_rand = random_func( 0, 5, true );
        else
        attack_rand = 4 + random_func( 0, 2, true );
        
        if (instance_exists( field_obj ) && free){
            if field_obj.player_touching {
                attack_rand = 6;
            }
        }
        
        
        
        if (state != PS_JUMPSQUAT && action_timer > 20){
            attack_pressed = true;
            if (state == PS_ATTACK_AIR)
            set_attack(combo_extender[attack_rand]);
        }
        
        
        
        action_timer = 0;
    }
    
    //Extend hits
    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && array_find_index(combo_extender, attack) != -1 && has_hit_player && combo_extend) {
        
        if (get_player_damage( ai_target.player ) > 70) || (temp_level <= 7){
        combo_extend = false;
        combo_end = true;
        }
        
        //Hitfalling
        var dfl_r = (room_width - get_stage_data(SD_X_POS)) - ai_target.x;
        var dfl_l = (room_width - get_stage_data(SD_X_POS) - get_stage_data(SD_WIDTH)) - ai_target.x  ;
        
        if (free) && (dfl_r > 0 && dfl_l < 0 ) && temp_level > 5
        do_a_fast_fall = true;
        
        
        action_timer = 0;
    }
    

    
    //Combo Finisher
    if (ai_target.state_cat == SC_HITSTUN && combo_end && abs(ai_target.x - x) < 150 && abs(ai_target.y - y - 20) < 150 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) && temp_level > 6{
        
        if (free)
        attack_rand = 3 + random_func( 0, 1, true );
        else
        attack_rand = random_func( 0, 4, true );
        
        if (ai_target.x > x)
        left_pressed = true;
        if (ai_target.x < x)
        right_pressed = true;
        
        attack_pressed = true;
        set_attack(combo_ender[attack_rand]);
        
        combo_end = false;
        action_timer = 0;
    }
    
    //reset combo states
    if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && ai_target.state_cat != SC_HITSTUN){
        if (combo_start)
        combo_start = false;
        
        if combo_extend
        combo_extend = false;
        
        if combo_end
        combo_end = false;
    }
    
    //Attack Randomizer EWGF/OMEN
    attack_rand = random_func( 0, 3, true );
    if (state == PS_ATTACK_GROUND && attack == AT_UTILT && window_timer == 1 && window == 1 && !combo_extend){
        attack_end();
        if attack_rand == 1 || temp_level < 9{
        set_attack(AT_FSTRONG_2);
        }else if attack_rand == 2{
        combo_end = true;
        omen = true;
        set_attack(AT_USTRONG_2);
        }
        
    }
    
    
    //Attack Randomizer HELLSWEEP
    attack_rand = random_func( 0, 2, true );
    if (state == PS_ATTACK_GROUND && attack == AT_DTILT && window_timer == 1 && window == 1 && attack_rand == 1){
        attack_end();
        set_attack(AT_DSTRONG_2);
    }
    
    //Attack Randomizer FIELD
    attack_rand = random_func( 0, 2, true );
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && array_find_index(combo_starter, attack) != -1 && window_timer == 1 && window == 1 && attack_rand == 1 && elec_charge == 100){
        attack_end();
        set_attack(AT_DSPECIAL);
    }

    //charge strongs after electrics
    if (ai_target.hitstop > 6 && state == PS_ATTACK_GROUND && array_find_index(combo_ender, attack) != -1 && window == 1){
        attack_down = true;
    }
    
    //dragdown nspecial
    if (hitpause && state == PS_ATTACK_AIR && attack == AT_NSPECIAL){
        special_down = true;
    }
    
    if (ai_target.state == PS_RESPAWN || ai_target.state == PS_DEAD) {
        if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR) && !free && attack != AT_FSTRONG_2 && temp_level > 6{
        attack_pressed = true;
        ewgf = true;
        ewgf_real = true;
        set_attack(AT_FSTRONG_2);
        }
        else if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR) && !free && attack != AT_TAUNT && !bm{
            bm = true;
            set_attack(AT_TAUNT);
        }
    }
    else
    {
       bm = false; 
    }
    
}




    var dfl_r = (room_width - get_stage_data(SD_X_POS)) - x;
    var dfl_l = (room_width - get_stage_data(SD_X_POS) - get_stage_data(SD_WIDTH)) - x  ;

if (ai_recovering)
{
    //distance from ledge left and right

    
    if (dfl_r < -200 || dfl_l > 200 ){
        var recovery_rand = random_func( 0, 2, true );
        if (recovery_rand == 0) {
            if (state == PS_IDLE_AIR || (state == PS_ATTACK_AIR && attack == AT_USPECIAL)){
                
    
                    
                    if (move_cooldown[AT_FSPECIAL] == 0){
                    if (dfl_r < -200 )
                    spr_dir = 1;
                    else if ( dfl_l > 200 )
                    spr_dir = -1;
                    
                    set_state(PS_ATTACK_AIR);
                    attack = AT_FSPECIAL;
                    }
                    
                
            }
        
        }
        
    }
    
    

}



// A list is a datastructure similar to an array or ds_list.
// A list behaves like an array, including avoiding potential memory leaks and allocation errors, but can change size in ammortized constant time.

#define list(array)
// Convert the array to a list
    var size = array_length(array)
    var array = _list_reallocate_array(array, size)
    return {
        size:size,
        a:array
    }

#define list_create
/// list_create(size, val = 0)
var size = argument[0];
var val = argument_count > 1 ? argument[1] : 0;
// Create a list of the default value with the given size.
    var values = array_create(size, val)
    var array = _list_reallocate_array(values, size)
    return {
        size:size,
        a:array
    }

#define list_join(lst0, lst1)
// Add the second list to the first.
    var array = lst0.a
    var total_size = lst0.size + lst1.size
    array = _list_update_size(array, total_size)
    for (var i=0; i<lst1.size; i++) {
        array[lst0.size+i] = lst1.a[i]
    }
    lst0.size = total_size
    lst0.a = array

#define list_clear(lst)
// Empty the list.
    list.size = 0
    lst.a = _list_reallocate_array([], 0)


#define list_clone(lst)
// Returns a shallow copy of the list.
    return {
        size:lst.size,
        a:array_clone(lst.a)
    }

#define list_equals(lst0, lst1)
    return array_equals(lst0.a, lst1.a) and lst0.size == lst1.size

#define list_get(lst, index)
    if index <= lst.size-1 {
        return lst.a[index]
    } else {
        print_debug("List index " +  string(index) + " is out of bounds. 0 to " + string(lst.size-1) + " exclusive.");
    }

#define list_set(lst, index, value)
// Sets the given index to the value. Empty spaces created are filled with undefined.
    var array = lst.a
    array = _list_update_size(array, max(lst.size, index+1))

    array[index] = value
    lst.a = array
    lst.size = index+1

#define list_insert
// list_insert(lst, index, value, [value], [value], [etc...])
// Add the given values to the list, starting at the given index
    var lst = argument[0]
    var array = lst.a
    var index = argument[1]
    var value = argument[2]
    
    var num_to_add = argument_count - 2
    var new_size = lst.size + num_to_add
    array = _list_update_size(array, new_size)

    // shift over existing values equal to num_to_add
    for (var i=array_length(array)-1-num_to_add; i >= index; i--) {
        array[i+num_to_add] = array[i]
    }
    array[index] = value
    for (var i=3; i<argument_count; i++) {
        array[index+i-2] = argument[i]
    }
    lst.a = array
    lst.size = new_size

#define list_delete(lst, index)
// Delete the value of the list at the index
    var array = lst.a
    for (var i=index+1; i<lst.size; i++) {
        array[i-1] = array[i]
    }
    array[lst.size-1] = undefined
    
    var new_size = lst.size-1
    array = _list_update_size(array, new_size)
    
    lst.a = array
    lst.size = new_size


#define list_find_index(lst, val)
// Return the first index of the value in the list
    var index = array_find_index(lst.a, val)
    if index >= lst.size {
        index = -1
    }
    return index

#define list_remove(lst, val)
// Remove the first value of the list matching the value.
    var index = list_find_index(lst, val)
    if index == -1 {
        print_debug("Value " + string(val) + " expected but not found")
    }
    list_delete(lst, index)

#define list_sum(lst)
    var _sum = 0
    for (var i=0; i<lst.size; i++) {
        _sum += lst.a[i]
    }
    return _sum

#define list_max(lst)

    var _max = lst[0]
    for (var i=0; i<lst.size; i++) {
        if lst.a[i] > _max {
            _max = lst.a[i]
        }
    }
    return _max

#define list_min(lst)
    var _min = lst[0]
    for (var i=0; i<lst.size; i++) {
        if lst.a[i] < _min {
            _min = lst.a[i]
        }
    }
    return _min


#define list_slice(lst, start, length)
// Returns a new list with values representing a section of a list.
    var src_array = lst.a
    var dst_list = list_create(length)
    var dst_array = dst_list.a
    array_copy(dst_array, 0, src_array, start, length)
    return {
        size: length,
        a: dst_array
    }

#define list_length(lst)
    return lst.size

#define list_push(lst, val)
// Add the value to the end of the list.
    var array = lst.a
    var new_size = lst.size + 1
    array = _list_update_size(array, new_size)
    array[new_size-1] = val
    
    lst.a = array
    lst.size = new_size


#define list_pop(lst)
// Return and remove the last item of the list
    var array = lst.a
    var new_size = lst.size-1
    
    var pop_value = array[lst.size-1]
    array[lst.size-1] = undefined
    
    lst.a = array
    lst.size = new_size
    return pop_value

#define list_all(lst, function)
// Returns true if all of the items match the condition function
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
        if (not script_execute(function, array[i])) {
            return false
        }
    }
    return true


#define list_any(lst, function)
// Returns true if any of the items match the condition function
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
        if (script_execute(function, array[i])) {
            return true
        }
    }
    return false
    

#define list_filter(lst, function)
// Removes all items that don't match the condition function
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    
    // Move matching items to front
    var current_new_size = 0
    for (var i=0; i<lst.size; i+=1) {
        if (script_execute(function, array[i])) {
            array[current_new_size]=array[i]
            current_new_size += 1
        }
    }
    var new_size = current_new_size
    
    //Overwrite anything after
    for (var i=new_size; i<lst.size; i+=1) {
        array[i] = undefined
    }
    array = _list_update_size(array, new_size)
    lst.a = array
    lst.size = new_size

#define list_with_each_replace(lst, function)
// Runs the function on each item of the list, replacing the item with the return value.
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
        array[i] = script_execute(function, array[i])
    }

    lst.a = array

#define list_with_each(lst, function)
// Runs the function on each item of the list, without overwriting the list.
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
        script_execute(function, array[i])
    }

    lst.a = array

#define _list_update_size(array, new_size)
// Reallocates space if the new size is too large or much smaller than current allocated space.
    var current_size = array_length(array)
    
    if new_size < current_size/2 or new_size > current_size {
        return _list_reallocate_array(array, new_size)
    } else {
        return array
    }
    

#define _list_reallocate_array(array, size)
// Allocates space for the array with some extra padding
    if size < 9 {
        var padding = 3
    } else {
        var padding = 6
    }
    var alloc_size = size + (size >> 3) + padding
    var new_array = array_create(alloc_size, undefined)
    array_copy(new_array, 0, array, 0, alloc_size)
    return new_array







 
 



