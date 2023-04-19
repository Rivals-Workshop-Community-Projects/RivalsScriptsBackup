// Bike Dropping While Holding
if has_rock == true && (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
    bike = instance_create(x, y-32, "obj_article1");
    has_rock = false;
}

// Bike Dropping While Riding

if prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND{
    if (attack == AT_FSPECIAL || attack == AT_PICKUP) && !instance_exists(bike){
        bike = instance_create(x, y+2, "obj_article1");
        bike.hitstop = 0;
    }
}