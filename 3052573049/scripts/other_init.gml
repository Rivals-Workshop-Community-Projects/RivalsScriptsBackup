//
mvl_sparkle = false;

if is_player_on(player) {
    //regular
    if (!obj_stage_main.teams_enabled){
        obj_stage_main.stage_points[player] = 0;
        
        obj_stage_main.player_num += 1;
    }
    else{ //teams
        obj_stage_main.team_points[get_player_team(player)] = 0;
    }
}