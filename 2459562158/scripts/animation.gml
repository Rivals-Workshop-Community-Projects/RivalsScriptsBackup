var idle_ref = 0
var dash_ref = 0;

switch (state){
    case PS_SPAWN:
        if (need_intro)
        {
            sprite_index = sprite_get("intro");
            image_index = intro_im
            
            intro_im += intro_spd;
            intro_frame_skip += 1;
            
            if (intro_im == 2)
            {
                sound_play(sound_get("kappamobile_arrival"))
            }
            if (intro_im == 9)
            {
                sound_play(sound_get("kappamobile_land"))
            }
            if (intro_im == 12)
            {
                sound_play(sound_get("kappamobile_open"))
            }
            if (intro_im == 16) or (intro_im == 17) or (intro_im == 18)
            {
                //sound_stop(sound_get("kappamobile_slide"))
                sound_play(sound_get("kappamobile_slide"))
            }
            if (intro_im == 19)
            {
                //sound_stop(sound_get("kappamobile_slide"))
                sound_play(sound_get("kappamobile_lock"))
            }
            
            if (intro_im < 20)
            {
                draw_indicator = false;
            }
            if (intro_im >= 24)
            {
                need_intro = false;
                instance_create(x - 30 * spr_dir,y,"obj_article_solid")
            }
        }
        else
        {
           image_index = 3 + (state_timer - intro_frame_skip) * idle_anim_speed;
        }
    break;
    case PS_IDLE:
        switch(prev_state)
        {
            case PS_SPAWN:
                var idle_ref = -3;
            break;
            case PS_ATTACK_GROUND:
                switch (attack)
                {
                    case AT_FSTRONG:
                        var idle_ref = 8;
                    break;
                    case AT_JAB:
                        var idle_ref = 4;
                    break;
                    case AT_TAUNT:
                        var idle_ref = 6;
                    break;
                    case AT_USPECIAL:
                        var idle_ref = 4;
                    break;
                    case AT_FTILT:
                        var idle_ref = 8;
                    break;
                    case AT_DATTACK:
                        var idle_ref = 5;
                    break;
                    case AT_DSPECIAL:
                    case AT_UTILT:
                    case AT_USTRONG:
                    case AT_DSTRONG:
                    case AT_FSPECIAL:
                    case AT_NSPECIAL:
                    case AT_EXTRA_2:
                        var idle_ref = 7;
                    break;
                    case AT_FSPECIAL_2:
                    var idle_ref = 5;
                    break;
                }
            break;
            case PS_CROUCH:
                 var idle_ref = 5;
            break;
            case PS_PARRY:
                var idle_ref = 4;
            break;
            case PS_ROLL_FORWARD:
            case PS_ROLL_BACKWARD:
            case PS_TECH_BACKWARD:
            case PS_TECH_FORWARD:
                var idle_ref = 3;
            break;
            
        }
          image_index = idle_ref + state_timer * idle_anim_speed;
    break;
    
    case PS_DASH:
        switch(prev_state)
        {
            case PS_DASH_TURN:
                var dash_ref = 6;
            break;
        }
        image_index = dash_ref + state_timer * dash_anim_speed;
    break;
    
    case PS_PRATFALL:
        if (image_index >= 3)
        {
            image_index = 3;
        }
    break;
    default: break;
}


if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
    switch (attack)
    {
        
        case AT_EXTRA_1:
            if (grab_id != noone)
            {
                grab_id.old_vsp = 0;
                grab_id.old_hsp = 0;
                
                grab_id.hitpause = true;
                grab_id.hitstop = 1;
                grab_id.hitstop_full = 2;
                
                
                switch(image_index)
                {
                    case 0:
                        grab_id.x = x - 64 * spr_dir;
                        grab_id.y = y - 20;
                        
                        grab_id.force_depth = 1;
    			        grab_id.depth = depth -1;
                    break;
                    case 1:
                        grab_id.x = x - 16 * spr_dir;
                        grab_id.y = y - 100;
                        
                        grab_id.force_depth = 1;
    			        grab_id.depth = depth -1;
                    break;
                    case 2:
                        grab_id.x = x + 46 * spr_dir;
                        grab_id.y = y - 6;
                    break;
                    case 3:
                        grab_id.x = x - 80 * spr_dir;
                        grab_id.y = y - 16;
                        grab_id = noone;
                    break;
                }
            }
        break;
        
        case AT_FSPECIAL:
            if (grab_id != noone)
            {
                grab_id.old_vsp = 0;
                grab_id.old_hsp = 0;
                
                grab_id.hitpause = true;
                grab_id.hitstop = 1;
                grab_id.hitstop_full = 2
                
                
    			grab_id.x = x + x_hand + 20 * spr_dir;
    			grab_id.y = y_hand + 30;
    			
    			grab_id.force_depth = 1;
    			grab_id.depth = depth -1;
    		
            }
        break;
        case AT_FSPECIAL_2:
         if (grab_id != noone)
        {
            grab_id.old_vsp = 0;
            grab_id.old_hsp = 0;
            
            grab_id.hitpause = true;
            grab_id.hitstop = 1;
            grab_id.hitstop_full = 2
            
            
            switch(image_index)
            {
                case 0:
                    grab_id.x = x + 20 * spr_dir;
                    grab_id.y = y - 56;
                    
                    grab_id.force_depth = 1;
    			    grab_id.depth = depth -1;
                break;
                case 1:
                    grab_id.x = x - 30 * spr_dir;
                    grab_id.y = y - 60;
                    
                    grab_id.force_depth = 1;
    			    grab_id.depth = depth -1;
                break;
                case 2:
                    grab_id.x = x + 36 * spr_dir;
                    grab_id.y = y - 6;
                break;
                case 3:
                    grab_id.x = x + 80 * spr_dir;
                    grab_id.y = y - 16;
                    grab_id = noone;
                break;
            }
            
        }
        
        break;
    }
}


if !(((attack == AT_EXTRA_1) or (attack == AT_FSPECIAL) or (attack == AT_FSPECIAL_2)) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    grab_id = noone;
}




if (state == PS_IDLE_AIR) and ((prev_state == PS_AIR_DODGE) or (prev_state == PS_ATTACK_AIR) or (prev_state == PS_WALL_JUMP))
{
    image_index = image_number - 1;
}



