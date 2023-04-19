//parry
//set graze type to blue when parrying

enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    dstrong_charge,
    ustrong_charge,
    dstrong_hitbox,
    iku,
    fstrong_charge,
    bad_load
}
if(!dragon_install){
    tenshi_grazebox.force_graze = true;
}
/*
if(hit_player = player and dragon_install){
    for(var i = 0; i < 3; i++){
        var xrng = -spr_dir * (20 - random_func(i, 30, true));
        var yrng = random_func(i, 70, true) - 30; 
        var temp = instance_create(floor(enemy_hitboxID.x + xrng), floor(enemy_hitboxID.y + yrng), "obj_article2");
        temp.fx_type = FX.graze;
        
        temp.seed = i%2;
        temp.delay = i*3;
        temp.blue = true;
        temp.super_blue = true;
    }
}*/

if(enemy_hitboxID.orig_player == player){
    invince_time = 0;
    parried_nspecial = true;
}