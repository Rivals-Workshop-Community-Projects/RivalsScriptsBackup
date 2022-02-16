if (enemy_hitboxID.kb_value >= 7){
    star_meter--;
}

var already_hit = false;

if (already_hit = false && move_cooldown[AT_FSPECIAL] > 0){
    move_cooldown[AT_FSPECIAL] = 0;
    already_hit = true;
}

times_dodged = 0;

if (attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2){
    star_meter = 0;
} 

if (!muted){
    if (get_player_damage(player) >= 0 && get_player_damage(player) <= 49){
        var randomvoice = random_func(0, 3, true);
        if(randomvoice == 0){
            sound_play(sound_get("voice_damage_light"));
        }
    } else if (get_player_damage(player) >= 50 && get_player_damage(player) <= 89){
        var randomvoice = random_func(0, 4, true);
        if(randomvoice == 0){
            sound_play(sound_get("voice_damage_medium1"));
        } else if(randomvoice == 1){
            sound_play(sound_get("voice_damage_medium2"));
        }
    } else if (get_player_damage(player) >= 90){
        var randomvoice = random_func(0, 2, true);
        if(randomvoice == 0){
            sound_play(sound_get("voice_damage_heavy1"));
        } else if(randomvoice == 1){
            sound_play(sound_get("voice_damage_heavy2"));
        }
    }
}