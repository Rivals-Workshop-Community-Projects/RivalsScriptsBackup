//BODYGUARD

if (init == 0){
    init = 1;
}

state_timer++;

var grab_time = 64;

if (state == 0){ //Grabbing
    image_index = state_timer * 15 / grab_time;
    if (state_timer == 18){
        sound_play(asset_get("sfx_swipe_medium1"));
        var grab = create_hitbox(AT_FSPECIAL, 1, x+42*spr_dir, y-28);
    }
    
    if (state_timer == grab_time){
        player_id.grabStrong = 0;
        player_id.move_cooldown[AT_FSPECIAL] = 15;
        instance_destroy();
        exit;
    }
    
}

var throw_time =  40;

if (state == 1){ //Throwing

    image_index = state_timer * 9 / throw_time;
    if (state_timer == 19){
        grabbed = false;
        sound_play(asset_get("sfx_swipe_medium2"));
        player_id.grabbed_id.invincible = false;
        player_id.grabbed_id.state = PS_TUMBLE;
        var toss = create_hitbox(AT_FSPECIAL, 2, x+33*spr_dir, y-48);
    }
    
    if (state_timer == throw_time){
        player_id.grabStrong = 0;
        player_id.move_cooldown[AT_FSPECIAL] = 15;
        instance_destroy();
        exit;
    }


}


if (state == 2) { //Destroyed
        if (grabbed){
            player_id.grabbed_id.invincible = false;
            player_id.grabbed_id.state = PS_TUMBLE;
            
        }
    player_id.move_cooldown[AT_FSPECIAL] = 15;
    player_id.grabStrong = 0;
    instance_destroy();
    exit;

}

if (free &! (state == 0 && state_timer < 4)){
    vsp = fallSpeed;
    fallSpeed *= 1.2;
    if (fallSpeed > 5){
        fallSpeed = 5;
    }
}

if (grabbed &! (state == 1 && state_timer >= 19)){
    
    if (state == 1 && state_timer >14){
        player_id.grabbed_id.x = lerp(player_id.grabbed_id.x, x+52*spr_dir, 0.4);
        player_id.grabbed_id.y = lerp(player_id.grabbed_id.y, y, 0.4);
        //player_id.grabbedid.invincible = true;
    } else {
        player_id.grabbed_id.x = x+42*spr_dir;
        player_id.grabbed_id.y = y-28;
        //player_id.grabbedid.invincible = true;
    }
    
}

with (asset_get("pHitBox")){
    if (player_id != other.player_id && type == 2 && place_meeting(x,y,other)){
        if (!transcendent && !plasma_safe){
            destroyed = true;
        }
        
        
    }
    
}