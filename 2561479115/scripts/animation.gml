switch(state) {
    case PS_PARRY_START:
        sprite_index = sprite_get("idle");
        break;
}

//Supersonic's entirely self-contained plug and play intro code
/*
if (state == PS_SPAWN) {
    var intro_spr = sprite_get("intro");
    var intro_start = 4; //the frame the intro starts
    var intro_end = 120; //the frame the intro ends
    if spawn_timer < intro_end {
        sprite_index = intro_spr;
        image_index = image_number*(clamp(spawn_timer-intro_start, 0, intro_end)/intro_end);
    }
}
*/

