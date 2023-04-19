if (attack == AT_NSPECIAL && hbox_num == 1) //check for the first hitbox
{
    hit_timer --;
    if (hit_timer <= 0) for (var i = 0; i < array_length(can_hit); i ++) if (can_hit[i] == 0) can_hit[i] = 1; //if timer is below or equal to 0, reset can_hit properties

    //prepare last hit stuff
    if (hit_times == hit_limit - 1)
    {
        sound_effect = sound_get("ftilt");
    }
}