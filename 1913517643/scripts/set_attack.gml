//SET ATTACK

if (attack == AT_NSPECIAL){
    if (hasNote == 1) {
        attack = AT_NSPECIAL_2;
    }
}


if down_down && attack == AT_TAUNT
{
    attack = AT_TAUNT_2;
    
    /*
    switch(get_player_color(player)){
    
    case 13: //Beach
        //attack = AT_EXTRA_1;
        
        
        break;
    case 14: //Kimono
    
        break;
    default:
        
        attack = AT_TAUNT_2;
        break;
     
    
}*/
   
}