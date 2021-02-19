
    
if (my_hitboxID.attack == AT_USPECIAL) or (my_hitboxID.attack == AT_DSPECIAL) or (my_hitboxID.attack == AT_DAIR)  {
   set_state (PS_PRATFALL)
   prat_land_time = 45;
}



        
    if (attack == AT_USPECIAL) && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 2 , x , y - 40 );	
        fcharge = 0
        fchargetimer = 0
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
    }
     
    
     if (attack == AT_DSPECIAL) && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 1 , x , y - 40 );	
        fcharge = 0
        fchargetimer = 0
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
    }
    
    
    
     if (attack == AT_DAIR)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	
        fcharge = 0
        fchargetimer = 0
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));

    } 
    
    
   