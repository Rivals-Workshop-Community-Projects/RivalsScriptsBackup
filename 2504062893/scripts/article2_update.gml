if (player_id != noone){

// x = ease_quadInOut(x, player_id.x, 0, 60);
// y = ease_quadInOut(y, player_id.y, 0, 60);

    if (!boosting){
        x = lerp(x, player_id.x-player_id.spr_dir*24, 0.05);
        y = lerp(y, player_id.y-64, 0.05);
    } 
// x = player_id.x;
// y = player_id.y;

spr_dir = x < player_id.x ? 1 : -1;
}