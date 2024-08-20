//Update.gml
with (oPlayer)
{
  if (id != other.id)
  {
    if ("curse_max_timer" not in self) break;
    
    if player_curse != noone
    {
        if (timer_curse != 0 and timer_curse mod curse_interval == 0)
        {
            if (state_cat == SC_HITSTUN)
            {
                with (other) create_hitbox(AT_NSPECIAL, 2, other.x, other.y)
            }
          take_damage(player, other.player, curse_damage)
          with other sound_play(sound_get("crack"))
        }
        
        if (timer_curse > curse_max_timer or state == PS_RESPAWN or activated_kill_effect)
        {
            
          player_curse = noone;
          timer_curse = 0;
          if (state == PS_RESPAWN or activated_kill_effect)
          {
              visual_timer = [-1, 0];
          }
        }
        timer_curse++;
    }
    
    if visual_timer[0] != -1
    {
        if (visual_timer[1] > other.frame_timings[visual_timer[0]] - 1 )
        {
            visual_timer[0] = visual_timer[0] >= 14 ? -1 : visual_timer[0]+1;
            visual_timer[1] = 0;
        }
        visual_timer[1]++;
    }
  }
}

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    switch attack{
        case AT_USPECIAL:
        fall_through = true;
        switch (window)
        {
            case 2:
                if !hitpause
                {
                    var joy_angle = 90-((right_down-left_down)*30)
                    var activated = false;
                    
                    
                    var ratio = 1-(window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH)-1) )
                    vsp = lerp(vsp,lengthdir_y(22+(6*activated),joy_angle), ratio );
                    hsp = lerp(hsp,lengthdir_x(22+(6*activated),joy_angle), ratio );
                    
                    spr_angle = point_direction(0,0,hsp,vsp)-90
                    //hurtboxID.image_angle = spr_angle;
                    
                    var middle_y = (hurtboxID.bbox_bottom - hurtboxID.bbox_top)/2
                    
                    draw_x = middle_y*dsin(spr_angle);
                    draw_y = -(middle_y-middle_y*dcos(spr_angle));
                }
                
            break;
            case 3:
                var middle_y = (hurtboxID.bbox_bottom - hurtboxID.bbox_top)/2
                draw_x = middle_y*dsin(spr_angle);
                draw_y = -(middle_y-middle_y*dcos(spr_angle));
                vsp*=0.87;
                hsp*=0.87;
                spr_angle = lerp(spr_angle, 0, 0.2)
                //hurtboxID.image_angle = spr_angle;
            break;
            default:
                hsp*=0.84;
                vsp*=0.84;
                spr_angle = 0;
                hurtboxID.image_angle = 0;
                draw_x = 0;
                draw_y = 0;
            break;
        }
        break;
    }
}

if (alt_cur == 31) user_event(0);