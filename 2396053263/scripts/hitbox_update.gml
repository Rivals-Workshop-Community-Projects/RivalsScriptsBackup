//hitbox_update

//Slightly better & more optimized version of what was already here.
//Edited by: Delta Parallax
if (attack == AT_FSPECIAL)
{
    switch (hbox_num)
    {
        case 1:
        
        //Figure out what sound effect to use based on hitbox_timer
        var num;
        num = min(ceil(hitbox_timer / 6), 3) //1-3
        sound_effect = sound_get("needle" + string(num))
        
        //linearly decrease kb and damage
        kb_value = 6*( (12-max(0,hitbox_timer))/12 ) + .1;
        damage = ceil( (2-(min(0,hitbox_timer / 6)/2)) ) + 1;
        
        if (hitbox_timer > 12) effect = 9;
        
        if (!free)
        {
            vsp = 0;
            hsp = 0;
            damage = 0;
            kb_value = 0;
            hit_priority = 0;
        }
        
        if (was_parried)
        {
            create_hitbox(AT_FSPECIAL, 2, x, y);
            
            instance_destroy();
            exit;
        }
        
        break;
        case 2:
        if (hitbox_timer == 1)
        {
            hsp *= -1.25;
            was_parried = true;
        }        
        
        break;
    }
}