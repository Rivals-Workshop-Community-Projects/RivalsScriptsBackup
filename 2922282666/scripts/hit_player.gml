switch(my_hitboxID.attack)
{
    case AT_DAIR:
        if(old_vsp > 0 && (!down_down || !down_pressed)) old_vsp = -3;
        break;
    case AT_UAIR:
        if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3)
        {
            hit_player_obj.x = lerp(hit_player_obj.x,x+10*spr_dir,0.2);
            hit_player_obj.y = lerp(hit_player_obj.y,y-70,0.2);
        }
        break;
    case AT_USPECIAL:
        hit_player_obj.x = lerp(hit_player_obj.x,x,0.5);
        hit_player_obj.y = lerp(hit_player_obj.y,y-40,0.3);
        break;
    case AT_NSPECIAL_2:
        if(my_hitboxID.hbox_num == 1)
            dash_grab_player = hit_player_obj;
        else
        {
            dash_grab_player = noone;
            hit_player_obj.x = lerp(hit_player_obj.x,x,0.5);
            hit_player_obj.y = lerp(hit_player_obj.y,y-80,0.5);
        }
        break;
}