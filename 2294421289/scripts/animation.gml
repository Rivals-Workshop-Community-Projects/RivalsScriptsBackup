
/*
switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if state== PS_ATTACK_GROUND && attack == AT_FSTRONG && window == 2 && window_timer == 8 {
    image_index = 1 + (strong_charge/3)%4; 
                                           
}
*/

//After image

if (state = PS_WAVELAND)
{
    if(state_timer % 4 == 0 && !hitpause){
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
    if(state_timer >= 24){
      trail.state = 1;
    }
}

if (state == PS_SPAWN) 
{
  sprite_index = sprite_get( "entrance" );
}


