//UPDATE used for music switching

//conditions:
//- last minute of match
//- 2 players alive, one at one stock
//- more than 2 players alive, all at one stock
//- teams on, one or both teams at 2 stocks or less

var peril_stocks = 1; //the amount of stocks to play the laststock music at in non-teams matches
var teams_peril_stocks = 2; //the amount of stocks to play the laststock music at in teams matches
var match_peril_time = 60*60; //the amount of time (in frames) left in the match to start playing laststock music

var teams_on = get_match_setting(SET_TEAMS)
var num_players = 0;
var players_alive = 0;
var stocks = [0,0,0,0];
for (var i = 1; i <= 4; i++) {
    num_players += is_player_on(i); //check how many player slots are open
    var team = get_player_team(i) //team will either be 1 or 2 in teams, whereas it will be the player slot in normal matches
    print(team)
    if is_player_on(i) {
        var st_count = get_player_stocks(i);
        stocks[team-1] += st_count;
        players_alive += st_count > 0;
    }
    
}
var teams_healthy = 0;
for (var i = 0; i < 4; i++) teams_healthy += (stocks[i] > peril_stocks+(teams_on*(teams_peril_stocks-peril_stocks)))
var should_play_laststock_mus = num_players > 1 && !is_training && ((teams_healthy <= 1 && (players_alive <= 2 || teams_healthy == 0 || teams_on)) || get_game_timer() < match_peril_time);

if (should_play_laststock_mus) && final_stock_cont == -1 && (get_gameplay_time() > 125) {
		if mus == 0 {
			suppress_stage_music(0,1);
			music_stop();
			sound_play(sound_get("final-lap-tour"), false, 0, .5, 1);
		}
		if mus == 1 {
			suppress_stage_music(0,1);
			music_stop();
			sound_play(sound_get("final-lap-mk8"), false, 0, .5, 1);
		}
		if mus == 2 {
			suppress_stage_music(0,1);
			music_stop();
			sound_play(sound_get("final-lap-tour"), false, 0, .5, 1);
		}
		final_stock = true;
		final_stock_cont = 0;
}

print(final_stock_cont);

if (final_stock_cont >= 0){
    final_stock_cont++
}

if (final_stock_cont >= 201){
    if (mus == 0){
        if (final_stock_cont < 200){
            music_play_file("final_music_loop_intro");    
        }
        else {
            music_play_file("final_music_loop");
        }
    }
    if (mus == 1){
        if (final_stock_cont < 200){
            music_play_file("final_music2_loop_intro");    
        }
        else {
            music_play_file("final_music2_loop");
        }
    }
    if (mus == 2){
        if (final_stock_cont < 200){
            music_play_file("final_music3_loop_intro");    
        }
        else {
            music_play_file("final_music3_loop");
        }
    }
}