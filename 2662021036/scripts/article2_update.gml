//article1_init

if ((player_id.state == PS_ATTACK_AIR || player_id.state = PS_ATTACK_GROUND) && player_id.attack == 49){
    
    if (player_id.window > 5 && player_id.window < 8){

if (beamflash_opacity > 0){
    beamflash_opacity = beamflash_opacity - 0.05;
}

speedline_timer = speedline_timer + 1;

}

    if (player_id.window = 8 && player_id.window_timer = 0){
       beamflash_opacity = 1; 
    }
    
    if (player_id.window = 8 && player_id.window_timer > 1){
        
           beamflash_opacity = beamflash_opacity - 0.1;
           
           if (beamflash_opacity = 0){
               instance_destroy(self);
           }
    }    


}