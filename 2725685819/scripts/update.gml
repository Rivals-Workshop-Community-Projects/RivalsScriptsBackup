//start of game stuff
tpx_event = 4;
user_event(15);


if (intro_timer < intro_full){
intro_timer++;

//share the pizza
with (oPlayer){
    
    if (player != other.player && get_player_team( player ) == get_player_team( other.player )){
        if (!style_meter)
        other.style_meter = sparda;
    }
    
}




//portraits
switch (get_player_color(player)){
    
    case 9:
    set_victory_portrait( sprite_get( "neco_portrait" ));
    set_victory_sidebar( sprite_get( "neco_result" ));
    break;
    
    case 8:
    set_victory_portrait( sprite_get( "void_portrait" ));
    set_victory_sidebar( sprite_get( "void_result" ));
    break;
    
    default:
    set_victory_portrait( sprite_get( "portrait" ));
    set_victory_sidebar( sprite_get( "result_small" ));
    break;
}




}

//looking
looking=spr_dir;


//rainbow colors for Annie alt
if get_player_color(player) = 10 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range


color_rgb=make_color_rgb(255 ,217 ,0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 10, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_article_color_slot( 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv),1);

init_shader();
}


//Trick Loss Lockout
if (state_cat == SC_HITSTUN && hitpause == 0)
{
trick_lockout--;
}else if (trick_lockout < trick_lockout_max){
trick_lockout--;
}

trick_lockout = clamp(trick_lockout,0,trick_lockout_max);

if (trick_lockout = 0)
trick_lockout = trick_lockout_max;

// print_debug(string(trick_lockout));



//Trick Marked Outline and Enemy Updates
var trick_player = get_player_color(player);
var trick_color_r, trick_color_g, trick_color_b;


if (trick_player == 8) {
trick_color_r = get_color_profile_slot_r(trick_player, 7);
trick_color_g = get_color_profile_slot_g(trick_player, 7);
trick_color_b = get_color_profile_slot_b(trick_player, 7);
}
if (trick_player != 8) {
trick_color_r = get_color_profile_slot_r(trick_player, 1);
trick_color_g = get_color_profile_slot_g(trick_player, 1);
trick_color_b = get_color_profile_slot_b(trick_player, 1);
}

var trick_color = make_color_rgb(trick_color_r,trick_color_g,trick_color_b);

with (oPlayer){
    if (player != other.player && get_player_team( player ) != get_player_team( other.player )){
    	// print_debug(string(trick_timer));
    	
    //if they fucking die
    if (state == PS_RESPAWN){
        if other.grabbed_player == id
        other.grabbed_player = noone;
        
		outline_color = [ 0, 0, 0 ];
        init_shader();        
        trick_timer = trick_timer_default;
        trick_marked = false;
        trick_stack = 0;
        styled_on = 0;
        trick_deterioration = trick_deter_default;
    }
    
        //stuff that happens when full chaos
        if trick_marked{
            trick_timer--;
            outline_color = [ trick_color_r, trick_color_g, trick_color_b ];
            init_shader();   
            trick_stack = 0;
            trick_deterioration = trick_deter_default;
            
            
            //what happens if chaos time runs out
            if (trick_timer <= 0){
            outline_color = [ 0, 0, 0 ];
            init_shader();
            trick_marked = false;
            trick_timer = trick_timer_default;
            styled_on = 0;
            
            }

        }


        //stuff that happens when not full chaos
        if (!trick_marked){
        trick_deterioration--;
        //print_debug(string(trick_stack));
            if (trick_deterioration == 0){
                if (trick_stack > 0)
                trick_stack-= 1;
                
                
                trick_stack = clamp(trick_stack, 0, 7);
                trick_timer = trick_timer_default;
                trick_deterioration = trick_deter_default;
                
            }
        }
        
        //if chaos stacks are completely gone
        if (floor(trick_stack) <= 0){
                styled_on = 0;
                current_trick_level = 0;
        }
        

	//last attack

	if (state != clamp(state,5,6)){
	trick_last_attack = 0;
	}

        
    }
}

//messing around
// window_timer += 1;



//Special Taunts and Alt Specific stuff


if (necoarc){
	
    
    if (attack == AT_TAUNT && shield_down && state == clamp(state,5,6) && window == 1 && window_timer <= 1)
    attack = AT_TAUNT_2;

    //neco voices
    if ((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && state_timer == 0){
    	sound_play(sound_get("necowavedash"));
    }
    
    if (state == PS_PARRY && state_timer == 0){
    	sound_stop(sound_get("necoparry"));
    	sound_play(sound_get("necoparry"));
    }
    
}





//trigger special taunt
if (state == PS_PARRY_START && taunt_pressed){
    set_state(PS_ATTACK_GROUND);
    attack = AT_TAUNT;
}

if (shield_pressed && taunt_pressed && attack == AT_TAUNT && state == clamp(state,5,6))
attack = AT_TAUNT_2;

if state != clamp(state,5,6){
trick_cancel = false;
ewgf = false;
grabbed_player = noone;
}




//end motivation
if !(state == clamp(state,5,6) && attack == AT_TAUNT_2){
sound_stop(sound_get("motivated"));
sound_stop(asset_get("sfx_absa_8b"));

}

if (!free || state == PS_WALL_JUMP){
    cling_limit = 2;
}



//JUST JUDGEMENT CUT
if (move_cooldown[AT_NSPECIAL] == 0 && has_rune("H")){
	
	if ((get_window_value(attack, window, AG_WINDOW_IASA) != 0 && window_timer == 1) && state == clamp(state,5,6)) ||
	    (prev_state == clamp(state,5,6) && state != clamp(state,5,6) && state_timer == 1) &&
	    !just_window
	    {
	    just_window = true;
	    }
	
	if (just_jc_hold && !attack_down){
	    
		just_jc_hold = false;
		
		if just_window{
			jc_range = true;
			set_attack(AT_NSPECIAL);
		}
	
	}
	
	if (just_window){
	        just_timer--;
	        if (just_timer < 0){
	        just_timer = just_timer_default;
	        just_window = false;
	        }
	}
	
	
	if (attack_down){
		just_jc_hold = true;
	}

}



//hitfx code
with (asset_get("hit_fx_obj")){

    if (hit_fx == other.vfx_jce_clone){
            hsp = lengthdir_x(20 * spr_dir, draw_angle);
            vsp = lengthdir_y(20 * spr_dir, draw_angle);

    }

}


//inputs
if dp>0 dp_temp++
if dp_temp>=dp_timer {
    dp=0
    dp_timer=0
    dp_temp=0
}

#region DP
if dp==0 start_dir[0]=spr_dir
//Right
if start_dir[0]==1  && spr_dir == looking{
    if dp==0 and ((right_pressed and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
        
    if dp==1 and (!right_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0

    }
    
    if dp=2 and (right_down and down_down ) and special_pressed {
        if (!was_parried){
        ewgf=true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }

    if dp==2 and (right_down and down_down ){
        dp=3
        dp_timer=10
        dp_temp=0
    }
}

//Left
if start_dir[0]==-1  && spr_dir == looking{
    if dp==0 and ((left_pressed and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (!left_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0

    }
    
    if dp==2 and (left_down and down_down ) and special_pressed {
        if (!was_parried){
        ewgf=true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }

    if dp==2 and (left_down and down_down ){
        dp=3
        dp_timer=10
        dp_temp=0
    }
}


//Shortcut

//Right
if start_dir[0]==1  && spr_dir == looking{
    if dp==0 and ((right_down and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
        
    if dp==1 and (joy_pad_idle) {
        dp=2
        dp_timer=10
        dp_temp=0


    }
    
    if dp=2 and (right_down and down_down ) and special_pressed {
        if (!was_parried){
        ewgf=true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }

    if dp==2 and (right_down and down_down ){
        dp=3
        dp_timer=10
        dp_temp=0
    }

}

//Left
if start_dir[0]==-1 && spr_dir == looking{
    if dp==0 and ((left_down and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (joy_pad_idle) {
        dp=2
        dp_timer=10
        dp_temp=0


    }
    
    if dp==2 and (left_down and down_down ) and special_pressed {
        if (!was_parried){
        ewgf=true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }

    if dp==2 and (left_down and down_down ){
        dp=3
        dp_timer=10
        dp_temp=0
    }

}


//settings
sparda = extras_arr[3][2];
