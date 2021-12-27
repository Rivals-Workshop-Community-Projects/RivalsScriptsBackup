neutralBStored = 0;

if(my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID == flying_rock1.rock_hitbox){
        instance_destroy(flying_rock1)
    }
    if(my_hitboxID == flying_rock2.rock_hitbox){
        instance_destroy(flying_rock2)
    }
    if(my_hitboxID == flying_rock3.rock_hitbox){
        instance_destroy(flying_rock3)
    }
}