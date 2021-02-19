//Cloud mimicking

with (asset_get("obj_article1")){
    if (player_id == other.id && other.rain_cooldown <= other.cooldown_min){
        switch(other.attack){
            case AT_DSPECIAL:
                bufferedstate = 9;
                buffertimer = 0;
                break;
            /*case AT_NSPECIAL:
                bufferedstate = 8;
                buffertimer = 0;
                break;*/
        }
    }
}

switch(attack){
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL:
        if (rain_cooldown > cooldown_min && rain_cooldown < cooldown_max - 4 && sideways_cooldown_timer == 0){
            sideways_cooldown_timer = 12;
        }
        dont_cooldown = false;
        break;
}



/*Midair Strongs

if (attack == AT_FAIR || attack = AT_BAIR){
    if (left_strong_down || left_strong_pressed){
        spr_dir = -1;
        attack = AT_FSTRONG;
    }
    if (right_strong_down || right_strong_pressed){
        spr_dir = 1;
        attack = AT_FSTRONG;
    }
}

if (attack == AT_UAIR) && (up_strong_down || up_strong_pressed){
    attack = AT_USTRONG;
}

if (attack == AT_DAIR) && (down_strong_down || down_strong_pressed){
    attack = AT_DSTRONG;
}