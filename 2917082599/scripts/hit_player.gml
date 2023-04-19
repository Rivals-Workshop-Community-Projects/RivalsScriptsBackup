//
if (attack == AT_FAIR){
    vsp = -1;
}
if (attack == AT_DATTACK){
    old_vsp = -8;
}

if (my_hitboxID.attack == AT_FSPECIAL_2) 
{
    switch(my_hitboxID.hbox_num)
    {
    case 1:
        if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
        && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
            && was_parried == false
        && hit_player_obj.clone == false) {
            
            //transition to the 'throw' part of the attack.
            destroy_hitboxes();
            attack_end();
            set_attack_value(attack, AG_NUM_WINDOWS, 5);
            window = 4;
            window_timer = 0;

            //if this attack hasn't grabbed a player yet, grab the player we just hit.
            if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
            
            //if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
            else {
                var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
                var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
                if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
            }
        }
        hit_player_obj.y = floor(lerp(hit_player_obj.y, y-20, .5));
        hit_player_obj.spr_dir = -spr_dir;
        break;
    case 2:
        hit_player_obj.x = floor(lerp(hit_player_obj.x, x+10*spr_dir, .5));
        hit_player_obj.y = y
        break;
    }
}
/*
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL_2)
    {
        if(my_hitboxID.hbox_num == 1)
        {
            set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
            //vsp = 0;
            //hsp = 0;
            window = 4;
            window_timer = 0;
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+40*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
            grabbed_player_obj = hit_player_obj;
            grabbed_player_relative_x = grabbed_player_obj.x - x;
            grabbed_player_relative_y = grabbed_player_obj.y - y;
            sound_play(asset_get("sfx_leafy_hit1"))
        }
        if(my_hitboxID.hbox_num == 2)
        {
            grabbed_player_obj = noone; 
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+10*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
        }
    }
}