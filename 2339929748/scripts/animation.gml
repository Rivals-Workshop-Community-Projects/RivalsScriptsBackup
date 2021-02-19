switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;

    default: break;
}

//DIRECTION CHANGES

switch(spr_dir){
    case -1:
    if(attack == AT_BAIR){
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_left"));
        set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_left_hurt"));
    }
    if(attack == AT_TAUNT){
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_left"));
    }
    
    if(attack == AT_FSTRONG){
        set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_left"));
        set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_left_hurt"));
        set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj_left"));
    }
    if(attack == AT_USTRONG){
        set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_left"));
        set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_left_hurt"));
    }
    if(attack == AT_DSTRONG){
        set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_left"));
        set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_left_hurt"));
    }
    if(attack == AT_FSPECIAL){
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_left"));
        set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_left_hurt"));
    }
    if(attack == AT_FAIR){
        set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_left"));
        set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_left_hurt"));
    }
    if(attack == AT_DTILT){
        set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_left"));
        set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_left_hurt"));
    }
    if(state == PS_ROLL_FORWARD){
        sprite_index = sprite_get("roll_forward");
    }
    if(state == PS_ROLL_BACKWARD){
        sprite_index = sprite_get("roll_backward");
    }
    if(state == PS_PARRY){
        sprite_index = sprite_get("parry_left");
    }
    break;
    
    case 1:
    if(attack == AT_BAIR && spr_dir == 1){
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
        set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
    }
    if(attack == AT_TAUNT && spr_dir == 1){
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
    }
    if(attack == AT_FSTRONG && spr_dir == 1){
        set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
        set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
        set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
    }
    if(attack == AT_USTRONG && spr_dir == 1){
        set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
        set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
    }
    if(attack == AT_DSTRONG && spr_dir == 1){
        set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
        set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
    }
    if(attack == AT_FSPECIAL && spr_dir == 1){
        set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
        set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
    }
    if(attack == AT_FAIR){
        set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
        set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
    }
    if(attack == AT_DTILT){
        set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
        set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
    }
    
    if(state == PS_ROLL_FORWARD && spr_dir == 1){
        sprite_index = sprite_get("roll_forward_left");
    }
    
    if(state == PS_ROLL_BACKWARD && spr_dir == 1){
        sprite_index = sprite_get("roll_backward_left");
    }
    if(state == PS_PARRY && spr_dir = 1){
        sprite_index = sprite_get("parry");
    }
    break;
}

//CROUCH ANIM MADNESS

