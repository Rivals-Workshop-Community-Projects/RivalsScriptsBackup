if (!turnabout)
{
if (my_hitboxID.player == player){
    switch (parry_evidence)
    {
        case 1:
            evidence1 = 0;
            evidence1_status = 0;
        break;
    
        case 2:
            evidence2 = 0;
            evidence2_status = 0;
        break;
    
        case 3:
            evidence3 = 0;
            evidence3_status = 0;
        break;
        }
    }
}
else
{
        if (turnabout_timer_pause) turnabout_timer_pause = 0;
        if (my_hitboxID.player == player) turnabout_timer-= 90;
}

if (my_hitboxID.attack == AT_USTRONG){
    ustrong_parried_id = hit_player_obj.id;
    ustrong_parried_x = ustrong_parried_id.x;
    ustrong_parried_y = ustrong_parried_id.y;
}

if (my_hitboxID.attack == AT_FSPECIAL_2){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 4;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    my_hitboxID.hitbox_timer = 0;
    var parry_tracking = point_direction(hit_player_obj.x, hit_player_obj.y, x, y);
    my_hitboxID.hsp = lengthdir_x(-20, parry_tracking);
    my_hitboxID.vsp = 3 + lengthdir_y(-25, parry_tracking);
}

if (turnabout_ready && (my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_NSPECIAL_2_AIR)){
    sound_play(sound_get("overruled"));
}

if (my_hitboxID.attack == AT_NAIR2 && my_hitboxID.hbox_num == 1){
    was_parried = true;
}