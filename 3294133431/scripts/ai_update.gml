if(custom_clone)//final smash or parry clone
{
    ready_to_attack = false;
    ai_attack_time = 999;
}
else//normal spy AI
{
    if (get_training_cpu_action() != CPU_FIGHT)
        return;

    var distToTarget = point_distance(x, y, ai_target.x, ai_target.y);
    var isAttacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
    
    if(!isAttacking && variable_instance_exists(self, "fs_using_final_smash") && fs_charge && random_func( 0, 100, false ) < 1+temp_level*0.5)
        fs_ai_attempt_use = true;

    if(isAttacking && attack == AT_DATTACK && window == 4 && !free && random_func( 1, 100, false ) < 1+temp_level*0.5)
        attack_pressed = true;//get out of box
        
    if(!invis && invisTimer > invisTimerMax * (0.42 - (temp_level/9)*0.25) && random_func( 2, 100, false ) < 1+temp_level*0.25)
    {
        if(distToTarget > 100)//good idea? based on cpu?
        {
            joy_pad_idle = true;
            special_pressed = true;//nspecial
        }
    }
    // if(invis)
    //     ai_attack_time = 4;//TODO: run around a bit more
    
    //jab + fstrong
    if(isAttacking && get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1 && distToTarget < 150 && random_func( 3, 100, false ) < 1+temp_level*0.5)
        attack_pressed = true;

    if(isAttacking && attack == AT_FSPECIAL && crits == 0 && distToTarget > 250 && abs(y-ai_target.y) < 250 && random_func( 4, 100, false ) < 0+temp_level*0.42)
		continueShooting = true;
        
    if(!isAttacking && distToTarget < 75 && spr_dir == ai_target.spr_dir && random_func( 5, 100, false ) < 1+temp_level*0.25)
        set_attack(AT_FTILT);

    //dont sap it already sapped someone (todo target)
    neutral_attacks[2] = ds_list_size(sappers) == 0 ? AT_DSPECIAL : AT_NSPECIAL;

    //TODO: should dspecial more often if no crits available?
    //TODO: should try to get behind target and match spr_dir, but controlling that is too hard?
}