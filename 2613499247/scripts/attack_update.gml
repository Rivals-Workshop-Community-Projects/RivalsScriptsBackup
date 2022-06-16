//B - Reversals
    
if (window == 1 && window_timer == 1 && !hitpause) {
 
   if  get_window_value(attack, 1, AG_WINDOW_LENGTH) >= 8 {
            
       sound_play(sound_get("whoosh"),false,noone,.5,
        max ( 0.4, 1.2 - get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) )
       
   } else {
      
      sound_play(sound_get("punch"),false,noone,.5,
        max ( 0.4, 1.2 - get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) )
            
   }
 
}



if (attack == AT_UAIR)
{
    
    if window == 1 {
       hsp /= 1.2
       vsp /= 1.1
       if vsp > 0 {
          vsp /= 1.1
       }
       
    }

    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(sound_get("yell"),false,noone,.8, 1.1 - random_func(1,20,true)/100)
    }
    
    if (window == 1 && window_timer == 1){
        can_fast_fall = false;
        can_move = false;

        if(right_down)
            spr_dir = 1;
        if(left_down)
            spr_dir = -1;}
}

if (attack == AT_NAIR || attack == AT_JAB)
{
    if (window == 4 && window_timer == 1){
        can_fast_fall = false;
        can_move = false;

        if(right_down)
            spr_dir = 1;
        if(left_down)
            spr_dir = -1;}
}

//Cooldowns

if (attack == AT_UAIR){
    move_cooldown[AT_UAIR] = 80;
}
    
if (attack == AT_JAB){
    move_cooldown[AT_JAB] = 25;
    move_cooldown[AT_NAIR] = 25;
}

if (attack == AT_NAIR){
    move_cooldown[AT_NAIR] = 999;
}



//Jab into CLJ
if(attack == AT_JAB)
{
    if(window == 1)
        set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
        

    if (window == 2 && jump_pressed || window == 1 && jump_pressed ){
        set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
        window = 4;
        window_timer = 0;
        //vsp = -5;
        can_fast_fall = false;
        can_move = false;
    }
}
if(attack == AT_NAIR)
{
    if(window == 1)
        set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
        

    if (window == 2 && jump_pressed || window == 1 && jump_pressed ){
        set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
        window = 4;
        window_timer = 0;
        //vsp = -5;
        can_fast_fall = false;
        can_move = false;
    }
}


#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}