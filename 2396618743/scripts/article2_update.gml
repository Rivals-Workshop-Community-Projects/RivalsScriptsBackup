//DRAIN

if (init == 0){
    init = 1;
}

state_timer++;
var flux_time = 30;
lifetime -= 1;

image_index = state_timer * 6 / flux_time;


if (state == 0){ //Returning
    
        if (x > (player_id.x)) {
            x -= (x -player_id.x)/15;
        }
        if (x < (player_id.x)) {
            x += (player_id.x - x)/15;
        }
        
        if (y > player_id.y) {
            y -= (y - (player_id.y-32))/10;
        }
        if (y < player_id.y) {
            y += ((player_id.y-32) - y)/10;
        }
    
    
    if (point_distance( x, y, player_id.x, player_id.y-32) < 20) { //if near the target destroy
        state = 1;
    }
    
    if (lifetime == 0){
        state = 1;
    }
    
}

if (state == 1){ //Destroyed
    instance_destroy();
    exit;
}