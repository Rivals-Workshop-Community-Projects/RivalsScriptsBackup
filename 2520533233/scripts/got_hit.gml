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


//increase knockback during stun
if(attack == AT_NSPECIAL_2 and state == PS_ATTACK_GROUND){
    orig_knock = orig_knock*1.6;
}

if(attack == AT_DSPECIAL and (window == 2 or window == 3)){
    set_attack(AT_EXTRA_1);
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
