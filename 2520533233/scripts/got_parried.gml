//got parried
if(my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.hbox_num == 1){
    my_hitboxID.can_hit_self = false;
    if(rock_proj != noone){
        rock_proj.owner = hit_player;
    }
   my_hitboxID.parry_count+=5;
}