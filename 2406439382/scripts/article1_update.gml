//article1_update

var prop = player_id;
with (player_id)
{
    if !(has_rune("N"))
    {
        move_cooldown[AT_NSPECIAL] = 40;
    }
    else
    {
        var num = 0;
        with (obj_article1)
        {
            if (player_id == prop)
            {
                num += 1;
            }
        }
        
        if (num >= 2)
        {
            move_cooldown[AT_NSPECIAL] = 40;
        }
    }
}
if (old_state != state)
{
    old_state = state;
    
    state_time = 0;
}

switch(state)
{
    case -1://spawning
        if (step == 60)
        {
            state = 0;
        }
    
    break;
    case 0://idle
        image_index += idle_spd;
        
        if (state_time > 60)
        {
            with (oPlayer)
            {
                if (other.player_id != self) and (state_cat == SC_HITSTUN) and (state_timer > 4) and (last_attack != AT_NSPECIAL)
                {
                    if (collision_circle(other.x,other.y,30 * other.size ,self,false,false))
                    {
                        other.state = 2;
                    }
                }
            }
        }
        
        
        if (state_time == 60 * 14)
        {
            state = 1;
        }
        
        var seija_url = player_id.url;
        if (!cant_be_hit)
        {
            var _team = get_player_team(player_id.player);
            var hitboxHit = noone;
            with pHitBox {
                if (((player_id != other.player_id) and ( type == 2)) or (((player_id.url = seija_url) and (attack == AT_FSPECIAL)) or ((player_id = other.player_id) and (attack == AT_USPECIAL)))){
                    if( collision_circle(other.x,other.y,30,self,false,false)){
                        if(hitboxHit == noone || hitboxHit.hit_priority < hit_priority){
                            hitboxHit = id;
                        }
                    }   
                }
            }
            if(hitboxHit != noone){
                
                var was_switched = false;
                var got_uspe = false
                
                if (hitboxHit.type == 1 )
                {
                    if (hitboxHit.attack == AT_FSPECIAL) and (get_char_info( hitboxHit.player, INFO_STR_NAME) =="Seija Kijin")
                    {
                        sound_play(sound_get("switch"));
                        sided = -sided;
                        
                        cant_be_hit = 20;
                        
                        var was_switched = true;
                    }
                    else
                    {//if (hitboxHit.player_id != player_id)
                    
                     state = 3;
                    
                        if (hitboxHit.player_id == player_id) and (hitboxHit.attack == AT_USPECIAL)
                        {
                            var got_uspe = true;
                            
                            state = 4;
                            
                            
                            with (player_id)
                            {
                                if (free)
                                {
                                    attack_end();
                                    set_attack(AT_USPECIAL_2)
                                    pHurtBox.sprite_index = sprite_get("uspecial_endlag_hit_hurt")
                                }
                            }
                        }
                       
                        
                        cant_be_hit = 20;
                        
                        with(player_id)
                        {
                            var eff = spawn_hit_fx( other.x , other.y - 8, doll_eyes_effect );
                            eff.depth = other.depth - 1;
                            eff.spr_dir = 1;
                        }
                    }
                    
                    
                    
                    hitstop = max(round(hitboxHit.hitpause + hitboxHit.extra_hitpause), 0);
                
                    with hitboxHit{
                    	if (type == 1)// not hitpause if projectile
                    	{
                            player_id.hitpause = true;
                            if (was_switched) or (got_uspe)
                            {
                                player_id.hitstop_full = max(round(hitpause), 0);
                            }
                            else
                            {
                                player_id.hitstop_full = 40 
                            }
                            player_id.hitstop = player_id.hitstop_full;
                            player_id.old_hsp = player_id.hsp;
                            player_id.old_vsp = player_id.vsp;
                    	}
                        player_id.has_hit = true;
                        
                        //if (was_switched) or (got_uspe)
                        {
                            spawn_hit_fx(other.x, other.y, hit_effect);
                            sound_play(sound_effect);
                        }
                        
                    }
                }
                /*
                else
                {
                    if (!hitboxHit.transcendent)
                    {
                        hitboxHit.destroyed = true;
                    }
                }
                */
            }
           
        }
        else
        {
            cant_be_hit -= 1
        }

    break;
    case 1: // leaving
        if (scale == 1)
        {
            sound_play(sound_get("doll_leaving"))
        }
        if (scale > 0)
        {
            scale -= 0.05;
        }
        else
        {
            destroyed = true;
        }
    break;
    case 2:// attack
    /*
        if (state_time == 1)
        {
            with(player_id)
            {
                sound_play(sound_get("doll_triggered"));
            }
        }
        */
       // if (state_time == 9)
        {
            with (player_id)
            {
                sound_play(sound_get("doll_scream"))
                var hitb = create_hitbox( AT_NSPECIAL, 3, other.x, other.y );
                if (other.sided = -1)
                {
                    hitb.kb_angle = 270;
                }
                
                var effe = spawn_hit_fx(other.x, other.y, curse_effect); // curse_effect
                effe.draw_angle = 90 - other.sided * 90;
            }
            destroyed = true;
        }
        image_index = 0;
    break;
    case 3:
    switch(state_time)
    {
        case 1:
            sound_play(sound_get("doll_hurt"));
        break;
        case 40:
            state = 1;
        break;
    }
    break;
    case 4:
        if (state_time == 6)
        {
            state = 2;
        }
    
    break;
}

if (step == 60 * 21)
{
  //  state = 1;
}



// CLAIREN FIELD
with (asset_get( "plasma_field_obj" )) {
        with (other.id) {
            var _team = get_player_team( get_instance_player( other ));
            if (_team != get_player_team( player )
            && point_distance(
            x + 10 * spr_dir,
            y,
            get_instance_x( other ),
            get_instance_y( other )
            ) < 30) {
               state = 1;
            }
        }
    }



state_time += 1;
step += 1;

if (destroyed)
{
    instance_destroy(self);
}
