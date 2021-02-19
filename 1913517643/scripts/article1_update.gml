//MUSIC NOTE

if (init == 0){
    init = 1;
}

state_timer++;

var appear_time = 8;

if (state == 0){ //Appearing
    image_index = state_timer * 4 / appear_time;
    if (state_timer == appear_time){
        state = 1;
        state_timer = 0;
    }
    
    player_id.hasNote = 1;
}

var standby_time =  16;

if (state == 1){ //Standby
    image_index = 4 + state_timer * 4 / standby_time;
    
    x = lerp(x, player_id.x - 25*player_id.spr_dir, 0.4);
    y = lerp(y, (player_id.y - 52) + (player_id.state == PS_CROUCH)*20, .4);
    
    player_id.hasNote = 1;

}

if (player_id.special_pressed && state < 2 && player_id.attack == AT_NSPECIAL_2){
    state = 2;
    state_timer = 0;
    
}


if (state == 2) { //Tossed

    if (player_id.attack == AT_NSPECIAL_2){
        if (player_id.window == 2 && player_id.window_timer == 0){
        x = player_id.x + 25*player_id.spr_dir;
        y = player_id.y - 52;
        player_id.hasNote = 0;
        player_id.move_cooldown[AT_NSPECIAL] = 30;
        var tossed = create_hitbox(AT_NSPECIAL, 1, x, y);
        tossed.vsp = -1.5;
        tossed.hsp = 3.5 * player_id.spr_dir;
        player_id.hasNote = 0;
         
        
                
            instance_destroy();
            exit;
        }
    }
    
    if (player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND){
        state = 1;
        state_timer = 0;
    }


}

if (state == 3) { //Destroyed
    image_alpha -= 0.1;
        if (state_timer == 10){
             instance_destroy();
             exit;
            
         }

}