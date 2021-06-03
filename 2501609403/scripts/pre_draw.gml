// pre-draw

//Jackpot
if (jackpot_shading = true){
    if (jackpot_timer == 1){
        var jack_stars = spawn_hit_fx((x), y, fx_jackstars);
        jack_stars.x = x;
        jack_stars.y = y;
    }
}
