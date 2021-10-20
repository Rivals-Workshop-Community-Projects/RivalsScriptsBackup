//DRAIN

if (init == 0){
    init = 1;
    player_id.gravigahit_id = noone;
}

state_timer++;


if (state == 0){ //Falling
    
    var flux_time = 25;
    lifetime -= 1;
    image_index = state_timer * 5 / flux_time;
    
    if (charged && state_timer > 6 && sprite_index == sprite_get("graviga_small")){
        sprite_index = sprite_get("graviga_big");
    }
    
    proj_speed = min(proj_speed + .5, 2);
    
    if (place_meeting (x, y - 8-(8*charged), asset_get("par_block"))){
        if (!grounded){
            grounded = true;
            lifetime = 16;
        }
        proj_speed = 0;
        //lifetime -= 10;
    }
    
    vsp = proj_speed;
    
    if (lifetime <= 0){
        state = 1;
        state_timer = 0;
        vsp = 0;
        proj_speed = 0;
    }
    
    if (state_timer%8 == 0){
        if (charged){
            var big_orb = create_hitbox(AT_DAIR, 1, x, y+vsp);
            
        } else {
            var small_orb = create_hitbox(AT_DAIR, 2, x, y+vsp);
        }
    }
    
    
    /*
    if (player_id.gravigahit_id != noone){
        //player_id.gravigahit_id.x = x;
        //player_id.gravigahit_id.y = y;
        
        if (player_id.gravigahit_id.x > x) {
            player_id.gravigahit_id.x -= (player_id.gravigahit_id.x - x)/25;
        }
        if (player_id.gravigahit_id.x < x) {
            player_id.gravigahit_id.x += (x - player_id.gravigahit_id.x)/25;
        }
        
        if (player_id.gravigahit_id.y > y) {
            player_id.gravigahit_id.y -= (player_id.gravigahit_id.y - (y-32))/25;
        }
        if (player_id.gravigahit_id.y < y) {
            player_id.gravigahit_id.y += ((y-32) - player_id.gravigahit_id.y)/25;
        }
    }*/
    
}

if (state == 1){ //Destroyed

    if (charged){
        sprite_index = sprite_get("graviga_big_destroy");
    } else {
        sprite_index = sprite_get("graviga_small_destroy");
    }

    var destroy_time = 18;
    image_index = state_timer * 6 / destroy_time;
    
    
    if (state_timer == destroy_time){
        
        instance_destroy();
        exit;
    }
    
}


with (asset_get("pHitBox")){ //enemy can break the weak gravity orb
    if (player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other)){
        
        if (other.charged = 0){
            other.state = 1;
            other.state_timer = 0;
            other.vsp = 0;
            other.proj_speed = 0;
        }
        
    }
}