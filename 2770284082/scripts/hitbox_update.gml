//


if attack == AT_NSPECIAL && hbox_num == 2 {
    if hitbox_timer == 1 {
        p1x = hit_fx_create( sprite_get( "spark1" ), 12);
        sprite_change_offset("spark1", 5, 5);
        
        p2x = hit_fx_create( sprite_get( "spark2" ), 12);
        sprite_change_offset("spark2", 5, 5);
        
        p3x = hit_fx_create( sprite_get( "spark3" ), 12);
        sprite_change_offset("spark3", 30, 30);
    }
   spawn_hit_fx(x - 10 + random_func(3,20,true), y + vsp - 10 + random_func(4,20,true),p3x) 
   if  hitbox_timer == 60 {
       destroyed = 1
   }
   if hitbox_timer < 40 {
       vsp -= 0.1
       hsp /= 1.03
   } else {
       if hitbox_timer == 40 {
       spr_dir *= -1
       }
       hsp += 0.1*spr_dir
       vsp /= 1.01
   }
       

}