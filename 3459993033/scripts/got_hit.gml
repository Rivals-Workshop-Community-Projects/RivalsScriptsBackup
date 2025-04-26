//got hit

if (nspec_is_casting) && (orig_knock > 0) && (nspecial_charge > 0){
    nspecial_charge = 0;
    nspec_fully_charged = false;
    nspec_is_casting = false;
    sound_play(sound_get("stomp_hit"));
    var lose = spawn_hit_fx(x, y - (char_height/2), nspec_lose_charge);
    white_flash_timer = 10;
    lose.depth = depth-1;
}

sound_stop(taunt_sound)
sound_stop(ustrong_sound)