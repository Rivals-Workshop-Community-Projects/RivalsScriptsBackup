//if (hit_player != player) player_i_hit = hit_player_obj;

if (my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3))
{
    //hit_player_obj.fall_through = false;
    if (!free) hit_player_obj.y -= 1;
}

if ((my_hitboxID.attack == AT_NAIR2 || my_hitboxID.attack == AT_USPECIAL) && my_hitboxID.hbox_num = 1)
{
    has_hit = true;
    has_hit_player = true;
}

//if (my_hitboxID.attack == AT_USTRONG && hit_player != player)
//{
//    ustrong_hit = 1;
//}
//
//if (my_hitboxID.attack != AT_USTRONG || ustrong_hit)
//{
//    turnabout_timer_pause = 0;
//    //ustrong_hit = 0;
//}

if (my_hitboxID.attack != AT_USTRONG || state != PS_HITSTUN)
{
    turnabout_timer_pause = 0;
    //ustrong_hit = 0;
}


//turnabout_timer_pause = 0;

/*
//shock vfx, by JH
if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR || my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_NSPECIAL_2_AIR || my_hitboxID.attack == AT_FSPECIAL_2){
    var you_are_GUILTY = spawn_hit_fx(hit_player_obj.x - (32 * hit_player_obj.spr_dir), hit_player_obj.y - 32, shocked_vfx);
    you_are_GUILTY.depth = depth + 1;
}

if ((my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR || my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_NSPECIAL_2_AIR) && turnabout = true){
    var shocked_lines = spawn_hit_fx(hit_player_obj.x + (20 * hit_player_obj.spr_dir), hit_player_obj.y - (20 + hit_player_obj.char_height), shock_lines_vfx);
    shocked_lines.depth = depth + 1;
}
*/


if (my_hitboxID.attack == AT_USTRONG){
    if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
        if (hit_player_obj.y < my_hitboxID.y){
            hit_player_obj.old_hsp = (x - hit_player_obj.x)/20;
            hit_player_obj.orig_knock = 12;
            hit_player_obj.y += 25;
            hit_player_obj.hitstun *= 0.7
            hit_player_obj.hitstun_full *= 0.7
        }
        if (hit_player_obj.y < y - 1){
            hit_player_obj.fall_through = true;
        } else {
            hit_player_obj.fall_through = false;
        }
    }
    if (my_hitboxID.hbox_num == 4){
        hit_player_obj.fall_through = false;
    }
}

if (my_hitboxID.attack == AT_FSTRONG){
    if (my_hitboxID.hbox_num < 3){
        if (!hit_player_obj.free){
            hit_player_obj.old_hsp = round((10*my_hitboxID.spr_dir)-((hit_player_obj.x - x)/50));
            hit_player_obj.old_vsp = 0;
        }
    }
}
