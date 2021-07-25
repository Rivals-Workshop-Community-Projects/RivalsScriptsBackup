if (my_hitboxID.attack == AT_DSPECIAL && has_hit == true){
    if (instance_exists(diamond)){
        diamond.times_hit += 1;
    }
}