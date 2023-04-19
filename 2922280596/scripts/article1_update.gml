state_timer ++;

#region States
switch(state)
{
    case 0: //spawn
        image_index = floor(get_gameplay_time()/4);
        y = floor(ease_circOut( set_y, dest_y, state_timer, 20));
        if(state_timer >= 20)
            state = 1;
        break;
    case 1: // standing still
        image_index = floor(get_gameplay_time()/4);
        //detect hourglass
        with(pHitBox)
        {
            if(collision_rectangle(other.x-32,other.y-64,other.x+32,other.y+800, self,false,false) && orig_player == other.player_id.player)
            {
                if(attack == AT_DSPECIAL)
                {
                    sound_play(sound_effect)
                    destroyed = true;
                    other.state = 2;
                    other.state_timer = 0;
                }
                if(attack == AT_NSPECIAL)
                {
                    // sound_play(sound_effect)
                    destroyed = true;
                    other.state = 3;
                    other.state_timer = 0;
                }
                if(attack == AT_FSPECIAL_AIR)
                {
                    sound_play(sound_effect)
                    spawn_hit_fx(x, y, hit_effect)
                    other.state = 3;
                    other.state_timer = 0;
                    with(other.player_id)
                    {
                        destroy_hitboxes();
                        hitpause = true;
                        hitstop = 5;
                        old_vsp = -9;
                        old_hsp = -1*spr_dir;
                    }
                }
            }
        }
        with(oPlayer)
        {
            if(collision_rectangle(other.x-32,other.y-64,other.x+32,other.y+800, self,false,false) && free && state_cat != SC_HITSTUN)
            {
                if(vsp > 0)
                    vsp -= (vsp/5);
            }
        }
        if(hourglass_obj == noone && state_timer > 300)
            state = 4;
        break;
    case 2: // rewind (holding)
        if(pulse_timer == 20) pulse_timer = 0;
        pulse_timer ++;
        image_index = -floor(get_gameplay_time()/4);
        if(state_timer > 300)
            state = 4;
        else
        {
            with(oPlayer)
            {
                if(other.player_id != id)
                {
                    if(state_cat == SC_HITSTUN && collision_rectangle(other.x-32,other.y-64,other.x+32,other.y+800,self,false,false))
                    {
                        with(other) 
                        {
                            hbox = create_hitbox(AT_DSPECIAL,2,other.x,other.y)
                            hbox.vsp = other.vsp;
                            hbox.hsp = other.hsp;
                            state = 4;
                            break;
                        }
                    }
                }
            }
        }
        break;
    case 3: // ff
        sprite_index = sprite_get("pillarhit")
        image_index = floor(state_timer/4);
        if(state_timer == 6) sound_play(asset_get("sfx_rag_axe_swing"), 0, noone, 2, 1)
        if(state_timer > 12 && state_timer < 16)
        {
            with(oPlayer)
            {
                if(collision_rectangle(other.x-42,other.y-64,other.x+42,other.y+800, self,false,false))
                {
                    with(other) 
                        hbox = create_hitbox(AT_USPECIAL,1,other.x,other.y-40)
                }
            }
        }
        if(state_timer > 28)
            state = 4;
        break;
    case 4: // destroy
        for(i = 0; i < 12; i++)
            spawn_hit_fx(x,y+64*i,destroy_fx);
        instance_destroy();
        break;
}

#endregion