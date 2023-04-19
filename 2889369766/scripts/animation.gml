//ANIMATION



if (has_wings && !consumed_wings){
    
    if (angelwingsAnimTimer >= angelwingsStripLength){
        angelwingsAnimTimer = 0;
    }
    
    angelwingsAnimTimer += angelwingsAnimSpeed;
    
} else if (has_wings && consumed_wings){

    if (wingsflap_alpha > 0){
        wingsflapAnimTimer += wingsflapAnimSpeed;
    }

    if (wingsflapAnimTimer >= wingsflapStripLength){
        wingsflapAnimTimer = 0;
        wingsflap_alpha = 0;
    }

}

if (wings_fading){ //Fades the wings out before actually removing the wings

    wings_alpha -= 0.1;
        if (wings_alpha <= 0){
            wings_alpha = 1;
            wings_fading = 0;
            has_wings = 0;
            angelwingsAnimTimer = 0;
            
        if (consumed_wings){
            consumed_wings = 0;
            wingsflap_alpha = 1;
            wingsflapAnimTimer = 0;
        }
    }
}

if (field_consumed){
    underlay_alpha -= 0.05;
    underlay_Xscale += 0.05;
    underlay_Yscale += 0.05;
    
    if (underlay_alpha <= 0){
        underlay_alpha = 1;
        field_consumed = 0;
        underlay_Xscale = 1;
        underlay_Yscale = 1;
    }
    
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    hurtboxID.sprite_index = sprite_get("fspecial_hurt");
} else if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    hurtboxID.sprite_index = sprite_get("uspecial_hurt");
} else if (state == PS_CROUCH){
    hurtbox_spr = sprite_get("idle_hurt");
} else {
    crouchbox_spr = asset_get("ex_guy_crouch_box");
}

