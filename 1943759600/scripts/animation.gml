switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

//if attack == AT_NSPECIAL && window == 4 sprite_index = free ? sprite_get("nspecial2_2") : sprite_get("nspecial_2")

//if ((attack == AT_NSPECIAL) && window = 4) {
//    sprite_index = sprite_get ("nspecial");
//    hurtboxID.sprite_index = sprite_get("nspecial_hurt")
//}

//Intro Animation
if (state == PS_SPAWN && get_player_color(player) != 15) {
    if (introTimer < 18 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

//G7 Intro Animation
//if (state == PS_SPAWN && get_player_color(player) == 15) {
 //   if (introTimer < 28 && introTimer >= 0) {
 //       sprite_index = sprite_get("g7intro");
 //       image_index = introTimer;
 //   } else if (introTimer < 0) {
 //       sprite_index = sprite_get("g7intro");
 //      image_index = 0;
///    } else {
//        sprite_index = sprite_get("idle");
//    }
//}

if (state == PS_SPAWN && get_player_color(player) == 15) {
    var intro_spr = sprite_get("g7intro");
    var intro_start = 4; //the frame the intro starts
     if spawn_timer == 7{
     sound_play(sound_get("glitch4"));
    }
    if spawn_timer == 25{
     sound_play(sound_get("glitch2"));
    }
     if spawn_timer == 90{
     sound_play(asset_get("sfx_kragg_spike"));
    }
    if spawn_timer == 108{
     sound_play(sound_get("g7glitch_1"));
    }
    var intro_end = 120; //the frame the intro ends
    sprite_index = intro_spr;
    image_index = image_number*(clamp(spawn_timer-intro_start, 0, intro_end)/intro_end);
}