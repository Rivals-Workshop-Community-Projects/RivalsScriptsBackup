super = 0;
supertimer = 0; // i don't even remember what this does lol
za_warudo = false;
time_freeze_ticks = 0;

if awakening or afakening and !instakill{
    deathcounter = true
    set_player_stocks( player, 999 );
} else{
    
    if !exploded{
    if get_player_stocks( player ) == 1 and golden{
            goldenexplode = true;
            set_player_stocks( player, get_player_stocks( player ) + 1 );
            deadx = x;
            deady = y;
            deadpercent = get_player_damage( player );
        } else {
            sound_play(sound_get("voicedeath"));
        }
    }
    
    exploded = false;
    explodetimer = 0;
}