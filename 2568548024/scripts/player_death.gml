//

with (hit_player_obj) 
{
    if(x > 1050 && y > 550)
    {
        var confetti = instance_create(x, y, "obj_stage_article", 0);
        confetti.isConfetti = true;
        confetti.doKill = true;
        
        if(state_cat == SC_HITSTUN )
            sound_play(other.dunkProper, false, 1, 1, 1);
        else //suicide
            sound_play(other.dunkSuicide, false, 1, 1, 1);
            
        other.doDeathShake = true;
    }
}


