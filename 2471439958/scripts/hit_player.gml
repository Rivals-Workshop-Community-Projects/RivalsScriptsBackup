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


if (my_hitboxID.attack == AT_FSPECIAL_2 && window == 3 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 60
    hit_player_obj.y = y + -20
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && window == 4 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 110
    hit_player_obj.y = y + -40
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && window == 5 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 150
    hit_player_obj.y = y + -50
}


//UAIR THROW

if (my_hitboxID.attack == AT_UAIR && window == 2 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 5
    hit_player_obj.y = y + -32
}

//BAIR CONNECT

if (my_hitboxID.attack == AT_BAIR && window == 2 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * -45
    hit_player_obj.y = y + -2
}

//DSTRONG CONNECT

if (my_hitboxID.attack == AT_DSTRONG && window == 5){
    hit_player_obj.x = x + spr_dir * 15
    hit_player_obj.y = y + -10
}

//ICE MARK
if (my_hitboxID.attack == AT_NSPECIAL && ice = 1 && hit_player_obj.ice_mark == 0 && ice_cont == 0){
    hit_player_obj.ice_mark = 1;
    ice_cont = 1;
    ice_active = true;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [86, 113, 128];
}

if (my_hitboxID.attack == AT_USPECIAL && ice = 1 && hit_player_obj.ice_mark == 0 && ice_cont == 0){
    hit_player_obj.ice_mark = 1;
    ice_cont = 1;
    ice_active = true;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [86, 113, 128];
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND && ice = 1 && hit_player_obj.ice_mark == 0 && ice_cont == 0){
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

//FINAL SMASH
if (my_hitboxID.attack == 49 && window < 17 && hit_player_obj.hitstun > 0) {
    hit_player_obj.x = x + spr_dir * 80
    hit_player_obj.y = y + -15
}








