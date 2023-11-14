if (enable_strong_charge_hitboxes){
    if (state == PS_ATTACK_GROUND && attack == AT_USTRONG){
        if (window == 1 && strong_charge > 1){
            if (strong_charge mod hitbox_rate <= hitbox_rate/4){
                image_index = 3;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate/2){
                image_index = 4;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate/4 * 3){
                image_index = 5;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate || strong_charge mod hitbox_rate == hitbox_rate){
                image_index = 6;
            }
        }
    }
    
    if (state == PS_ATTACK_GROUND && attack == AT_FSTRONG){
        if (window == 1 && strong_charge > 1){
            if (strong_charge mod hitbox_rate <= hitbox_rate/4){
                image_index = 2;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate/2){
                image_index = 3;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate/4 * 3){
                image_index = 4;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate || strong_charge mod hitbox_rate == hitbox_rate){
                image_index = 5;
            }
        }
    }
    
    if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG){
        if (window == 1 && strong_charge > 1){
            if (strong_charge mod hitbox_rate <= hitbox_rate/4){
                image_index = 2;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate/2){
                image_index = 3;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate/4 * 3){
                image_index = 4;
            }
            else if (strong_charge mod hitbox_rate <= hitbox_rate || strong_charge mod hitbox_rate == hitbox_rate){
                image_index = 5;
            }
        }
    }
}

if (attack == AT_NSPECIAL && state == PS_ATTACK_GROUND){
    sprite_index = sprite_get("nspecial");
    hurtboxID.sprite_index = sprite_get("nspecial_hurt");
}

if (attack == AT_NSPECIAL && state == PS_ATTACK_AIR){
    sprite_index = sprite_get("nspecial_air");
    hurtboxID.sprite_index = sprite_get("nspecial_air_hurt");
}

if (attack == AT_BAIR && state == PS_ATTACK_AIR){
    if (bair_mogura_mode == 1){
        sprite_index = sprite_get("bair_mogura");
    }
}