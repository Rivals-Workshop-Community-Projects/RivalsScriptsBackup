//article1_update
// NSPECIAL YIN YANG




switch (state)
{
    case 0:
        image_index = 0;
    
        var spawn_ring = false;
    var hit_by_yy = false;
    var my_player = player_id;
    var my_url = player_id.url;
    
    
         yy_hitbox = noone
        with (obj_article2)
        {
            if (player_id == other.player_id)
            {
                other.yy_hitbox = my_hitbox;
            }
        }
    
    
        var _team = get_player_team(player_id.player);
            var hitboxHit = noone;
            with pHitBox {
                //(id = other.yy_hitbox) or 
                if(((attack == AT_NSPECIAL) or (attack == AT_FSPECIAL) or (attack == AT_DSPECIAL) or (attack == AT_FSPECIAL_2)) and (my_url == player_id.url))
                { 
                    if (collision_circle(x,y,26 + 4,other,true,true))
                    {
                       if(hitboxHit == noone || hitboxHit.hit_priority < hit_priority){
                        hitboxHit = id;
                        }
                        if (attack == AT_NSPECIAL) //(id = other.yy_hitbox)
                        {
                            var hit_by_yy = true;
                        }
                    }
                }
            }
            
            if(hitboxHit != noone){
        
            state = 1;
            var spawn_ring = true;
            var reimu_hit_id = hitboxHit.player_id; // use for reimu activating each other's seals.
                hitstop = max(round(hitboxHit.hitpause + hitboxHit.extra_hitpause), 0);
                
                with hitboxHit{
                    
                    
                    if (type == 1)// not hitpause if projectile
                    {
                        player_id.hitpause = true;
                        player_id.hitstop_full = max(round(hitpause), 0);
                        player_id.hitstop = player_id.hitstop_full;
                        player_id.old_hsp = player_id.hsp;
                        player_id.old_vsp = player_id.vsp;
                        player_id.has_hit = true;
                        
                    }
                    
                    spawn_hit_fx(other.x, other.y, hit_effect);
                    sound_play(sound_effect);
                    
                    
                }
            }
        
        
    
    
    
    break;
    case 1:
        image_index += 0.2;
        
        if (state_timer >= 60)
        {
            destroyed = true;
        }
    break;
}





if (spawn_ring) 
{
    
    sound_play(sound_get("brokenseal"));
    
    with (reimu_hit_id)
    {
        var numb = 20//get_num_hitboxes(AT_DSPECIAL);
    
        for (var i = 0; i < numb; i += 1 )
        {
            if (hit_by_yy)
            {
                set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_HSPEED, 5);
            }
            else
            {
                set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_HSPEED, 3.5);
                if (i % 2 == 0)
                {
                    continue;
                }
            }
            create_hitbox( AT_DSPECIAL, i, other.x - 3 * spr_dir , other.y_ref);
        }
    }
    
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
        ) < 210) {
        
        destroyed = true;
        
        }
    }
}


if (old_state == state)
{
    state_timer += 1;
}
else
{
    state_timer = 0;
    old_state = state;
}




if (has_rune("N"))
{
    if (step % 120 == 0)
    {
        with(player_id)
        {
            create_hitbox( AT_DSPECIAL_2, 1, other.x, other.y_ref);
        }
    }
}


// Marker

y = y_ref + dsin(step * 4);
scale = 0.5 + dcos(step * 2) / 12;
mark_image += 0.1;

step += 1;




// MAX
with(player_id)
{
    if (ds_list_size(dspe_list) == max_dspe_card)
    {
        move_cooldown[AT_DSPECIAL] = 5;
    }
}


if (destroyed)
{
    ds_list_delete(player_id.dspe_list, ds_list_find_index(player_id.dspe_list,self));
    instance_destroy(self);
}



