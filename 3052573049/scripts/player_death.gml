var player_num = hit_player_obj.player;

if (!teams_enabled){
    var num_stars = obj_stage_main.stage_points[player_num];
}
else{
    var num_stars = obj_stage_main.team_points[get_player_team(player_num)];
}

//have the player drop a star on death
if (num_stars > 0){
    var num_to_drop = 1;
    
    //if star count is greater than half of the amount you need to win and the player has at least two, drop two stars instead
    if (num_stars >= stars_to_win/2 && num_stars >= 2){
        num_to_drop = 2;
    }
    
    for (i = 1; i <= num_to_drop; i++) {
        //add to star count
		if (!teams_enabled){ //regular
			stage_points[player_num] -= 1;
		}
		else{ //teams
		    team_points[get_player_team(player_num)] -= 1;
		}
        
        //spawn bouncy star
        var star = instance_create(hit_player_obj.x, hit_player_obj.y, "obj_stage_article", 6);
        
        star.x = hit_player_obj.x + 32*hit_player_obj.spr_dir;
        
        var even_num = i mod 2 == 0;
        if (even_num == 0){
            even_num = -1;
        }
        star.spr_dir = hit_player_obj.spr_dir * even_num;
        
        star.hsp = 1*spr_dir + (i * (i > 2) * 2);
        
        //offscreen star stuff
        if (hit_player_obj.y > room_height){
            star.y = room_height;
            star.vsp = -16;
        }
        
        if (hit_player_obj.x < 0){
            star.x = 20;
        }
        else if (hit_player_obj.x > room_width){
            star.x = room_width - 20;
        }
    }

}