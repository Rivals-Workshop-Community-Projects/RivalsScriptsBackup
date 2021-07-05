//got parried
if(my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.can_hit_self = false;
    if(rock_proj != noone){
        rock_proj.owner = hit_player;
    }
}