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

//Fang's dumb hack to allow the lava to damage blue team.
if (obj_stage_main.team_timer = 0) {
    set_player_team(5,1);
    obj_stage_main.team_timer += 1}
else {
    set_player_team(5,2);
    obj_stage_main.team_timer -= 1}