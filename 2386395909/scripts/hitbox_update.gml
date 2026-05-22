//hitbox_update
if attack == AT_USPECIAL && hbox_num == 6
{
 if (was_parried){
   
    with (obj_article1)
    {
        if player_id == other.player_id
        {
            angle = 90;
            spd = 0;
        	jawBreakerMode = false
            stt = 0;
            hitpause = true;
            hitstop = 10; 
            hitlockout = player;
            hitlockout2 = 20;
            with player_id
            {
                old_hsp = hsp;
                old_vsp = vsp;       
                hitpause = true;
                hitstop = 5;
                has_hit = true;
                destroy_hitboxes();
            }
        }
    }
 }
}