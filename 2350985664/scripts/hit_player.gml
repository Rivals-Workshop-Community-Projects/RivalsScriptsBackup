// hit_player
var skip = false;
switch(my_hitboxID.attack)
{
    case AT_JAB:
        if (my_hitboxID.hbox_num == 3)
        {
            //hit_player_obj.blinded = false;
    
            
            var already_victim = false;
            var new_victim = hit_player_obj
            
            with (obj_article1)
            {
                if(player_id == other)
                {
                    if (victim_id == new_victim) and (state <= 0)
                    {
                        var already_victim = true;
                    }
                }
            }
            if (!already_victim)
            {
                var inst = instance_create(x,y,"obj_article1")
                inst.victim_id = hit_player_obj;
                
                set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 22);
            }
        }
    break;
    case AT_DAIR:
    case AT_USPECIAL:
    case AT_FSPECIAL:
        if (my_hitboxID.hbox_num == 1)
        {
                window = 4;
                window_timer = 0;
                destroy_hitboxes()
                grab_id = hit_player_obj;
        }
    break;
    case AT_FSTRONG:
        if (hit_player_obj.blind_immune_time == 0)
        {
            hit_player_obj.blinded = 720;
            hit_player_obj.blinded_id = self;
        }
    break;
    case AT_NSPECIAL:
        if (ds_list_find_index(caged_list,hit_player_obj) == -1) and (hit_player_obj.blind_immune_time == 0)
        {
            if (hit_player_obj.blinded < 540)
            {
                hit_player_obj.blinded = 540;
                hit_player_obj.blinded_id = self;
            }
        }
    break;
    case AT_DTILT:
    
        //hit_player_obj.blinded = false;
        
        var inst = instance_create(my_hitboxID.x ,my_hitboxID.y,"obj_article3")
        inst.state = 1;
        inst.sprite_index = sprite_get("lamprey_attack");
        inst.spr_dir = my_hitboxID.spr_dir
        inst.depth = depth - 1;
    
    case AT_USTRONG:
    
        old_hsp /= 2;
        
        if has_rune("C") 
        {
            var already_victim = false;
            var new_victim = hit_player_obj
            
            with (obj_article1)
            {
                if(player_id == other)
                {
                    if (victim_id == new_victim) and (state <= 0)
                    {
                        var already_victim = true;
                    }
                }
            }
            if (!already_victim)
            {
                var inst = instance_create(x,y,"obj_article1")
                inst.victim_id = hit_player_obj;
                
            }
        }

    break;
    case AT_EXTRA_3:
    
        var hit_player = hit_player_obj
        
        if (hit_player_obj.blinded) and (hit_player_obj != grab_id)
        {
            with (obj_article2)
            {
                if (player_id == other)
                {
                    if (state == 0) and (my_grab_hitbox == other.my_hitboxID )
                    {
                        state = 1;
                        image_index = 0;
                        depth = other.hit_player_obj.depth - 1;
                        grab_id = other.hit_player_obj;
                        
                        other.hit_player_obj.blinded = 0;
                        
                        hitstop = 10;
                        
                        skip = true;
                    }
                }
            }
        }
    
    break;
}

if (has_rune("M"))
{
    if (my_hitboxID.attack != AT_FSPECIAL) and (my_hitboxID.attack != AT_USPECIAL) and (my_hitboxID.attack != AT_DAIR)
    {
        if (hit_player_obj.blinded < 540)
        {
            hit_player_obj.blinded = 540;
        }
    }
}


if (!skip)
{
    var list_pos = ds_list_find_index(caged_list,hit_player_obj);
    if (list_pos != -4)
    {
        ds_list_delete(caged_list,list_pos);
        ds_list_delete(cage_time_list,list_pos);
    }
}




if (hit_player_obj.blind_immune_time > 0)
{
    if (my_hitboxID.attack != AT_NSPECIAL) and (my_hitboxID.attack != AT_FSTRONG)
    {
        hit_player_obj.blind_immune_time = 0;
    }
}






