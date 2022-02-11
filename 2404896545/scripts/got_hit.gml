//got_hit - called when you're hit by a hitbox

if(hitpause == true){
    var hurtsound = 1 + (random_func(0, 5, true));
    if(hurtsound == 5){
        sound_play(sound_get("hurt1"));
    }
}
char_height = standard_height;