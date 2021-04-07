//article1_update

if (instance_exists(victim_id)) // mainly for forsburn's clone
{
    var x_offset = sprite_get_width(victim_id.hurtbox_spr) / 4
    
    switch(state)
    {
        case -1:
            sprite_index = sprite_get("nothing");
            depth = victim_id.depth -1;
            x = victim_id.x - x_offset  * spr_dir + victim_id.hsp ;
            y = victim_id.y - 25 + victim_id.vsp;
            spr_dir = victim_id.spr_dir;
            
            with(player_id)
            {
                if !(((attack == AT_JAB) and (state == PS_ATTACK_GROUND)) and ((window < 8) or ((window == 8) and (window_timer < 2)))) 
                {
                    other.state = 0;
                    sprite_index = sprite_get("lamprey");
                }
            }
            with (victim_id)
            {
                if (state == PS_RESPAWN)
                {
                    other.destroyed = true;
                }
            }
        break;
        case 0:
            sprite_index = sprite_get("lamprey");
            image_index += 0.1;
            
            depth = victim_id.depth -1;
            x = victim_id.x - x_offset  * spr_dir + victim_id.hsp;
            y = victim_id.y - 25 + victim_id.vsp;
            spr_dir = victim_id.spr_dir;
            
            if (step % 120 == 0)
            {
                take_damage(victim_id.player, player_id, 1 + has_rune("I") * 2);
                spawn_hit_fx(victim_id.x,victim_id.y - victim_id.char_height,blood_fx)
                life -= 1;
                
                sound_play(sound_get("lamprey_suck"));
            }
            
            with(victim_id)
            {
                if (state_timer == 0)
                {
                    switch (state)
                    {
                        case PS_DASH_START:
                            //other.life -= 0.7;
                        break;
                    }
                }
                if (state == PS_RESPAWN)
                {
                    other.destroyed = true;
                }
            }
        break;
        case 1:
            sprite_index = sprite_get("lamprey_fall")
            vsp += 0.3
            if (vsp > 10)
            {
                vsp = 10;
            }
               
            if (y > room_height)
            {
                destroyed = true;
            }
            
        break;
    }
    
    if (life <= 0) and (state == 0)
    {
        state = 1;
        vsp = -1;
        hsp = victim_id.hsp;
    }
    
    
    
    if (state != -1)
    {
        step += 1;
    }
    
 
    
    if (destroyed)
    {
        instance_destroy(self);
    }
}
else
{
    instance_destroy(self);
}








