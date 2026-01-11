//Special Hurt Sprites

if plasma_pause == true{
    sprite_index = sprite_get("hurt_zap");
    
}

//Respawn
if  (state == PS_RESPAWN) {
    sprite_index = sprite_get("plat_bob"); 
    image_index = state_timer/4;
}

//switch (state){
    //case PS_RESPAWN:
        //examplecode
        //var IAmARandomFillerVariable = 0;
//} 

//Spare code


switch (attack)
    {
    case AT_UTILT:
        switch(window)
        {    
            case 1:
                if ( attack == AT_UTILT && window == 3 && window_timer == 1 ) {
                    spawn_hit_fx(x - 16 * spr_dir, y - 32, hfx_utilt_finalhit);
                }
            break;
        }
    break;   
}
