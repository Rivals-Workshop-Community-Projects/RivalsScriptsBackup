if (turnabout_timer > 0 && turnabout)
{ 
    if (hit_player != player || enemy_hitboxID.attack != AT_USTRONG)
    {
        if (turnabout_timer_pause) turnabout_timer_pause = 0;
        else turnabout_timer-= enemy_hitboxID.damage*5; //damage x 5, example: 12%=60f, 7%=35f, 2%=10f
        //300% would shred the whole meter (not considering loss from time)
        //if youre seeing this, these values are subject to change. 
        //but its better than only losing 15 on every hit, making strong single hit attacks utterly useless
    }
    //else if (turnabout_timer_pause) turnabout_timer_pause = 1;
}

if (!turnabout && turnabout_ready && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && (attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_2_AIR) )
{
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
    sound_play(sound_get("overruled"));
}