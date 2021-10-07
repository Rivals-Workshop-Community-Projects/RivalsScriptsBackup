//got_hit.gml
// Subtract element code
var element_applied_player = hit_player_obj;
var hitbox_type;

with(enemy_hitboxID){
    hitbox_type = type;	//1 = Physical attack 2 = Projectile
}

Reduce_Element_Build_Up(hitbox_type,element_applied_player);

// Give back dspecial on being hit
move_cooldown[AT_DSPECIAL_AIR] = 0;

// Give back Fspecial Gannoncide
ganoncide_preventor_available_flag = 1;

#define Reduce_Element_Build_Up(hitbox_type,element_applied_player)
{
    if(hitbox_type == 2){
    return;
    }
    else{
        with(element_applied_player){
            status_effect_water = false
        }
    }
    
}