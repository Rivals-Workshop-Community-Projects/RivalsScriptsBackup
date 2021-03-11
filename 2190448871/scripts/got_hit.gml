multi_hit_protection += 1; //FIRST HIT = 1, IF CONTINUES TO TAKE HIT THIS NUMBER INCREASES, THE DIVISION SCALES TO HALF, THEN A THIRD AND SO ON
var multiplier = .8; //FIRST AMOUT TO REDUCE IS CALCULATED AS DAMAGE TIMES THIS NUMBER
damage_reduction = (enemy_hitboxID.damage * multiplier)/multi_hit_protection;
if damage_reduction < 1{
    mariospeed -= 1;
}else{
    mariospeed -= damage_reduction;
}

if(attack == AT_NSPECIAL and (window < 4 or (window == 4 and window_timer == 0) and instance_exists(kickproj))){
    kickproj.followbox.destroyed = true;
}
