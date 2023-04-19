//hitbox_update

if ((my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.type == 1)) {
    if (!hit_player_obj.TRICKROOM_STATE) {
        sound_play(asset_get("sfx_ori_ustrong_charge"))
    }
    hit_player_obj.TRICKROOM_STATE = true
    hit_player_obj.TRICKROOM_STATE_ID = id
    hit_player_obj.trickroom_timer = 420
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0)
{
    if(my_hitboxID.attack == AT_UAIR)
    {
        if(my_hitboxID.hbox_num == 1)
        {
            set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
            window = 4;
            window_timer = 0;
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
            grabbed_player_obj = hit_player_obj;
            grabbed_player_relative_x = grabbed_player_obj.x - x;
            grabbed_player_relative_y = grabbed_player_obj.y - y;
            sound_play(asset_get("sfx_frog_dspecial_cast"))
        }
        if(my_hitboxID.hbox_num == 2)
        {
            grabbed_player_obj = noone; 
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x-20*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
        }
    }
    if(my_hitboxID.attack == AT_DSTRONG)
    {
        switch(my_hitboxID.hbox_num)
        {
            case 1:
                set_attack_value(attack, AG_NUM_WINDOWS, 8);
                window = 4;
                window_timer = 0;
                hit_player_obj.x = lerp(floor(hit_player_obj.x), x+50*spr_dir, .8);
                hit_player_obj.y = lerp(floor(hit_player_obj.y), y-33, .8);
                grabbed_player_obj = hit_player_obj;
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
                break;
        }
    }
    if(my_hitboxID.attack == AT_USPECIAL)
    {
        switch(my_hitboxID.hbox_num)
        {
            case 1:
                set_attack_value(attack, AG_NUM_WINDOWS, 8);
                window = 4;
                window_timer = 0;
                hit_player_obj.x = lerp(floor(hit_player_obj.x), x-10*spr_dir, .8);
                hit_player_obj.y = lerp(floor(hit_player_obj.y), y-70, .8);
                grabbed_player_obj = hit_player_obj;
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
                break;
            case 2:
                grabbed_player_obj = noone;
                break;
        }
    }
}