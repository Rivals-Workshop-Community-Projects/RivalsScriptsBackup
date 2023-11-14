//number of stars you need to win
stars_to_win = get_match_setting( SET_STOCKS );

if (stars_to_win < 1){
    stars_to_win = 5;
}

//timer for stuff like plats and bricks respawning
timer = 0;
brick_respawn_rate = 2400;

//timer again but for muting the music when the hurry up jingle plays
mute_timer = 0;
hurry_up_jingle_length = 156;

//points for players
stage_points = array_create(5, -1);
player_num = 0;

points_y = 0;

//points for teams
team_points = array_create(3, -1);
teams_enabled = get_match_setting(SET_TEAMS);

//whether or not the game finished due to a player collecting enough stars
game_ended = false;

//vfx
sparkle_vfx = hit_fx_create(sprite_get("vfx_sparkle"), 18);
coin_vfx = hit_fx_create(sprite_get("vfx_coin"), 21);

//create sparkle handler at the start of the match
instance_create(0, 0, "obj_stage_article", 7);