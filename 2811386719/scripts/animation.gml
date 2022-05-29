switch(state){
    case PS_ATTACK_AIR:
        if(attack == AT_EXTRA_1){
            if window == 1 and window_timer > 0{
                image_index =  floor((vsp != 0)*(1 + wallcrawl_image_index) );
                // image_index =  round(wallcrawl_image_index);
                // print(image_index)
            }
        }
        if(attack == AT_DSPECIAL){
            if(window == 2 and window_timer > 0){
                if(vsp > 0){
                    image_index = 4 + (game_time%6 > 2) ;
                }else{
                    var value = abs((dspecial_initial_speed - vsp)/dspecial_initial_speed);
                    // print(value)
                    image_index = 1 + round(lerp(0,2, value ));
                }
            }
            if(window == 3 and window_timer > 0){
                image_index = 6 + (game_time%15)/5;
            }
        }
        break;
    
    case PS_ATTACK_GROUND:
        if(attack == AT_FSTRONG){
            if(reflect_id != noone){
                sprite_index = reflected_spr;
            }
        }
        if(attack == AT_DSTRONG){
            if(smash_charging){
                image_index = ease_linear(3, 5, strong_charge % 12, 8);
            }
        }
        if(attack == AT_USPECIAL_GROUND){
          if(window == 3 or window == 2){
            image_index += (magnet_timer % 12)/4;
          }
        }
}
if(attack == AT_NSPECIAL){
  if(window == 2){
    image_index += (magnet_timer % 12)/4;
  }
}