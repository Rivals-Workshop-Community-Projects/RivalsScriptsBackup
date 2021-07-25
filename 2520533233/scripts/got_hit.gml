//got hit

//setup enums
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    bad_load
}

//cancel graze if hit
tenshi_grazebox.can_graze = false;
tenshi_grazebox.hit_timer = 0;
if(attack == AT_DAIR){
    sound_stop(sound_get("drill_loop"));
    sound_stop(sound_get("drill_long"));
}
/*
if(move_cooldown[AT_FSPECIAL] > 0){
    move_cooldown[AT_FSPECIAL] = 0;
}*/
if(dragon_install){
    install_time += enemy_hitboxID.damage*20;
}
if(attack == AT_DSPECIAL and (window == 2 or window == 3)){
    set_attack(AT_EXTRA_1);
}

if(knockback_adj != base_knockback_adj){
    kba_timer = 15;
}

//if graze particles exist send them away from tenshi
with(obj_article2){
    if("tenshi" in self and tenshi == other){
        if(fx_type == FX.graze){
            valid_graze = false;
        } else if (fx_type == FX.fspecial){
            instance_destroy(self);
        }
    }
}
