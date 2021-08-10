//

//spawn_hit_fx(800, 400, confetti);
        
with (hit_player_obj) 
{
    if(x > 1050 && y > 550)
    {
    	//var fx = spawn_hit_fx(x-300, y-500, 144);
        //fx.draw_angle = random_func(0, 360, false);
        //fx.spr_dir = random_func(1, 2, true) * 2 - 1;
        
        //var confetti = hit_fx_create(sprite_get("confetti"), 100);
        //confetti.draw_angle = 10;
        //spawn_hit_fx(x-300, y-300, other.confetti);
        
    
        var confettiSpawner = instance_create(x,y,"obj_stage_article", 2);
        confettiSpawner.hsp = old_hsp;
        confettiSpawner.vsp = old_vsp;
        confettiSpawner.doConfetti = true;
        confettiSpawner.doKill = true;
        
        if(state_cat == SC_HITSTUN )
            sound_play(other.dunkProper, false, 1, 1, 1);
        else //suicide
            sound_play(other.dunkSuicide, false, 1, 1, 1);
            
        other.doDeathShake = true;
    }
}


