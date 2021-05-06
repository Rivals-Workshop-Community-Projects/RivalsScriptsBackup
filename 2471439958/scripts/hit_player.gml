//Scarf Grab

if (my_hitboxID.attack == AT_FSPECIAL && window == 3 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 60
    hit_player_obj.y = y + 0
}

if (my_hitboxID.attack == AT_FSPECIAL && window == 4 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 110
    hit_player_obj.y = y + 0
}

if (my_hitboxID.attack == AT_FSPECIAL && window == 5 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 150
    hit_player_obj.y = y + 0
}


//UAIR THROW

if (my_hitboxID.attack == AT_UAIR && window == 2 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 5
    hit_player_obj.y = y + -32
}

//FAIR TEST

if (my_hitboxID.attack == AT_FAIR && window == 2)
{
     has_fair_hit = true;
}

//ICE MARK
if (my_hitboxID.attack == AT_NSPECIAL && ice = 1 && hit_player_obj.ice_mark == 0 && ice_cont == 0){
    hit_player_obj.ice_mark = 1;
    ice_cont = 1;
    ice_active = true;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [86, 113, 128];
}

if (my_hitboxID.attack == AT_USPECIAL or AT_USPECIAL_GROUND && ice = 1 && hit_player_obj.ice_mark == 0 && ice_cont == 0){
    hit_player_obj.ice_mark = 1;
    ice_cont = 1;
    ice_active = true;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [86, 113, 128];
}

if (my_hitboxID.attack == AT_NSPECIAL && ice = 1 && hit_player_obj.ice_mark == 1 && ice_cont == 30){
    ice_cont = -30;
    ice_active = false;
    hit_player_obj.ice_mark = 0;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [0, 0, 0];
}

if (my_hitboxID.attack == AT_FSTRONG && ice = 1 && hit_player_obj.ice_mark == 1 && ice_cont == 30){
    ice_cont = -30;
    ice_active = false;
    hit_player_obj.ice_mark = 0;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [0, 0, 0];
}










