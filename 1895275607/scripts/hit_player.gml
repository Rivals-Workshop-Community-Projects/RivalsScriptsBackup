//hit player
if(attack == AT_DAIR){
    t = get_player_damage(hit_player_obj.player); 
    if (t > 120)
    {
        dairOffStage = -1;
    }
    else
    {
        dairOffStage = max(t-10, 15);
    }
}
/*if(attack == AT_DSPECIAL){
    canShoot += 1;
    if(recharge2 > 0){
        recharge2 = 0;
    }
    else{
        recharge1 = 0;
    }
}
else if(steelball != noone && steelball == my_hitboxID){
    canShoot += 1;
    if(recharge2 > 0){
        recharge2 = 0;
    }
    else{
        recharge1 = 0;
    }
}
else if(steelballextra != noone && steelballextra == my_hitboxID){
    canShoot += 1;
    if(recharge2 > 0){
        recharge2 = 0;
    }
    else{
        recharge1 = 0;
    }
}*/

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2)
{
    hit_player_obj.buriedd = buryframes;
    move_cooldown[AT_FSPECIAL] = buryframes+burycooldown;
}