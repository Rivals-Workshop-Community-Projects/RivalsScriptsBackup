//code copied from mitchellboot's Reznor's Wheel stage
//create lava hitbox at when in lava
with(oPlayer){
    if(y > other.y - 25){
        var playerX = x;
        var playerY = y;

        invincible = false;
        invince_time = 0;

        with(other){
            create_hitbox(AT_JAB, 1, playerX, playerY - 15);
        }
    }
}