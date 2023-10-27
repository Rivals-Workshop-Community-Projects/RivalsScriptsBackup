//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//Fspec
if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 45;
    if window == 1 {
        hsp /= 1.2
        vsp /= 1.1
        if vsp > 0 {
            vsp /= 1.2
        }
        
        if !hitpause && (window_timer == 1 or window_timer % 3 == 0) {
                sound_play(sound_get("dagger_slash1"),false,noone, .6, .3 + window_timer/20 )
            }
    }
    
           
            
}
if (attack == AT_DSPECIAL){
	if (window == 1 and window_timer == 1){
		sound_play(asset_get("sfx_swipe_heavy1"),false,noone, 1, 1 )
	}
	move_cooldown[AT_DSPECIAL] = 30
	//can_move = true;
	can_fast_fall = false;
	
	if (window >= 3){
		can_wall_jump = true;
	}
	/*
    if (!free && window == 3 && !hitpause){
    	destroy_hitboxes();
    	CorrectHurtboxes();
        set_attack(AT_DSPECIAL_2);
    }
    */
    }
//flip direction
if (attack == AT_USPECIAL || attack == AT_DSPECIAL)
{
    if (window == 1 && window_timer == 1)
    {
        var dir;
        dir = (right_down - left_down); //determines direction.
        spr_dir = (dir != 0) ? dir : spr_dir; //if both keys are being held down, just default to the current direction you are facing.
    }
}

if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
    if(!free)
    {
        move_cooldown[AT_USPECIAL] = 30;
        if(right_down)
            hsp += 0.5;
        if(left_down)
            hsp -= 0.5;
    }
    if(window == 1 && window_timer < 2)
    {
        if(!free)
        {
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
            //set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 160);
            //set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 30);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
        }
        else
        {
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
            reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
            //reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE);
            //reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE);
            reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
        }
    }
    if(window == 2)
    {
        if(window_timer % 6 == 0 && !hitpause)
            sound_play(sound_get("dagger_swing1"));
    }
    if(window == 3 && free)
        reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);

}

if ( attack == AT_DAIR){
    
    if window == 1 {
        hsp /= 1.06
        vsp /= 1.1
        if vsp > 0 {
            vsp /= 1.2
        }
        
        if !hitpause && (window_timer == 1 or window_timer % 3 == 0) {
                sound_play(sound_get("dagger_slash1"),false,noone, .5, .3 + window_timer/20 )
            }
        if !hitpause && (window_timer == 14 ) {
                sound_play(sound_get("dagger_swing1"),false,noone, 1, .6 )
        }
            
    }
    
    if y > room_height/2 + 240 && window == 3 {
        
        if jump_pressed && move_cooldown[AT_DAIR] == 0 {
            move_cooldown[AT_DAIR] = 999
            window = 4
            window_timer = 1
            vsp = -9
            sound_play(sound_get("dagger_swing1"),false,noone, 1, 1 )
        }
        
    }
    
    if window == 3 && !free && !hitpause{
         sound_play(sound_get("dagger_slash1"),false,noone, .8, 1 )
        window = 4
        window_timer = 1
        vsp = -6
    }
            
}

//yoshi egg code (VVizard)
if ( attack == AT_FSPECIAL){
		if (window == 1){
        	if ( up_down ){//|| up_down and (spr_dir == 1 && left_down) || up_down and (spr_dir == -1 && right_down)
        	    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 15);
            	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
        	}
        	if (joy_pad_idle || !up_down and !down_down){
        	    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
        	    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
        	}
        	if ( down_down and  free){ //|| down_down and (spr_dir == -1 && left_down) || down_down and (spr_dir == 1 && right_down)
        	    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 15);
        	    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 12);
        	}
        can_wall_jump = true;
    	}
    	can_fast_fall = false;
}
#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}
//if (attack = AT_NSPECIAL)
//	move_cooldown[AT_NSPECIAL] = 25
/*	
if (attack = AT_DSPECIAL) 
{
	if(state_timer == 1)
		groundswitch ++;
	if (window > 1 && window < 6 && free && !hitpause && groundswitch == 1) {
		vsp = 1;
		can_move = true;
	}
	can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 20
	can_move = true;
	can_fast_fall = false;
	if (window > 1 && special_down && window < 6){
        vsp = -3;
        
    }
}
// //Ledge Snap 
// if (attack == AT_DSPECIAL && window > 1)
// {
//     can_fast_fall = false;
//     if (window == 1 && window_timer == 1)
// 	{
//         moved_up = false;
//         //reset the vspeed to the value in fspecial_air.gml
//         reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED);
//     }
//     if (window > 2)
// 	{
//         // MOVE UP AT LEDGE
//         if (!moved_up){
//             if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
//                 for (var i = 0; i < 40; i++){
//                     if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
//                         y -= i;
//                         moved_up = true;
//                         break;
//                     }
//                 }
//             }
//         }
// 	}
// }

var play_sound = noone;
var s_window = 1;
var s_frame = 1;

switch (attack)
{
	
	case AT_USPECIAL:
		play_sound = asset_get( "sfx_orcane_fspecial" );
		s_frame = 6;
	break;
	case AT_NSPECIAL_2:
		play_sound = asset_get( "sfx_swipe_weak2" );
		s_frame = 11;
	break;
}

if (play_sound != noone and window == 1 and window_timer == 1)
{
	sound_play(play_sound);
}
//command grab
switch (attack)
{
	case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 20
		if(state_timer == 1) 
		{
			reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
            grabbed_player_obj = noone; 
            grabbed_player_relative_x = 0;
            grabbed_player_relative_y = 0;
		}
		if (window >= 3)
		{
			can_fast_fall = false;
			can_move = false;
		}
        if(window == 4 && instance_exists(grabbed_player_obj))
        {
            if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
                else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

                else 
				{
                    grabbed_player_obj.hitstop = 2;
                    grabbed_player_obj.hitpause = true;
                    grabbed_player_obj.spr_dir = -spr_dir;

                    var pull_to_x = -10*spr_dir;
                    var pull_to_y = -10;

					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                }
        }
	break;
}
*/