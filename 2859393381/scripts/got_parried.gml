if (!turnabout)
{
if (my_hitboxID.player == player){
    switch (parry_evidence)
    {
        case 1:
            evidence1 = 0;
            evidence1_status = 0;
        break;
    
        case 2:
            evidence2 = 0;
            evidence2_status = 0;
        break;
    
        case 3:
            evidence3 = 0;
            evidence3_status = 0;
        break;
        }
    }
}
else
{
        if (turnabout_timer_pause) turnabout_timer_pause = 0;
        if (my_hitboxID.player == player) turnabout_timer-= 90;
}

if (my_hitboxID.attack == AT_FSPECIAL_2){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 2;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp += 4*my_hitboxID.spr_dir;
}

if (turnabout_ready && (my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_NSPECIAL_2_AIR)){
    sound_play(sound_get("overruled"));
}

if (my_hitboxID.attack == AT_NAIR2 && my_hitboxID.hbox_num == 1){
    was_parried = true;
}