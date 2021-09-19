//got_hit.gml
// Subtract element code
var element_applied_player = hit_player_obj;
var element_build_down = enemy_hitboxID.damage / 2;
Reduce_Element_Build_Up(element_build_down,element_applied_player);

// Give back dspecial on being hit
move_cooldown[AT_DSPECIAL_AIR] = 0;

// Give back Fspecial Gannoncide
ganoncide_preventor_available_flag = 1;

#define Reduce_Element_Build_Up(element_build_down,element_applied_player)
{
    with(element_applied_player){
        status_effect_electric = status_effect_electric - element_build_down
        status_effect_water = status_effect_water - element_build_down
        if(status_effect_electric < 0){status_effect_electric = 0}
        if(status_effect_water < 0){status_effect_water = 0}
    }
}