// death
peacock_has_airdash = 1;
move_cooldown[AT_USPECIAL] = 0;

if easter_egg_set = true {
 if (oPlayer.url != 2135192216 && oPlayer.url != 2229862078 && oPlayer.url != CH_ZETTERBURN && oPlayer.url != CH_ORI && oPlayer.url != 1890617624 && oPlayer.url != 1871153050 && oPlayer.url != 1970731843 && oPlayer.url != 2190448871 && oPlayer.url != 2269841346){
    
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("die1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("die2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("die3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("die4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("die5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("die6"));
}
}

 else if (oPlayer.url == 2135192216){
         snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("die1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("die2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("die3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("die4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("die5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("die6"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("die_filia"));
    }
 }
    
   else if (oPlayer.url == CH_ORI){
         snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("die1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("die2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("die3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("die4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("die5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("die6"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("die_ori"));
    }
 }
    
   else if (oPlayer.url == 2229862078){
         snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("die1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("die2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("die3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("die4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("die5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("die6"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("die_ori"));
    }
 }
    
   else if (oPlayer.url == 1890617624 || oPlayer.url == 1871153050 || oPlayer.url == 1970731843 || oPlayer.url == 2190448871){
         snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("die1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("die2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("die3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("die4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("die5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("die6"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("die_ronald"));
    }
 }
    else if (oPlayer.url == CH_ZETTERBURN){
         snd_rng = random_func(0, 7, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("die1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("die2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("die3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("die4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("die5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("die6"));
    } else if (snd_rng == 6) {
        sound_play(sound_get("die_zet"));
    }
 }
 
}









      