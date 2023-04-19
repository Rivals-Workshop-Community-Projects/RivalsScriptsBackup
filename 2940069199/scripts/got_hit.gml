sound_stop(sound_get("choochoo"))
sound_stop(sound_get("Tralalala"))
sound_timer = 0

if(instance_exists(mic) || mic != noone){
    mic.destroyed = true
}

if(T_Direction_1 != noone && T_Direction_2 != noone  && T_Direction_3 != noone ){
   		T_Direction_1.destroyed = true
   		T_Direction_2.destroyed = true
   		T_Direction_3.destroyed = true
}

if (prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND)
{
    if (attack == AT_DSPECIAL)
    {
        tetrimino = 0;
        cur_tetramino = 0;
    }
    if (attack == AT_USPECIAL)
    {
        if (instance_exists(comet))
        {
            comet.comet_clinged = false;
        }
    }
}