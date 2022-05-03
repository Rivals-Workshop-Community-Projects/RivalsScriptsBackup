if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num != 5) {
    hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*40),0.5);
    hit_player_obj.y = lerp(hit_player_obj.y,y,0.5);
}

//if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num != 4) {
    //hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
//}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3) {
    with(obj_article2)
    {
        if(player_id == other.id)
        {
            hsp = 0;
            vsp = -4;
            state = 3;
            state_timer = 0;    
        }
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 5) {
    set_player_damage( my_hitboxID.hbox_owner, clamp(get_player_damage(my_hitboxID.hbox_owner)-7,0,999));
}