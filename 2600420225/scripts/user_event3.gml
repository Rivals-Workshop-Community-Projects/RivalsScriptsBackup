//projectile position
if(is_crouch == false){
if(is_aiming == "up_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, -15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = 0;
        projectile_y = -84;
    }else if(is_facing == "left"){
        projectile_x = 0;
        projectile_y = -84;
    }
}
if(is_aiming == "down_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = 20;
        projectile_y = -24;
    }else if(is_facing == "left"){
        projectile_x = -22;
        projectile_y = -24;
    }
}
if(is_aiming == "diagonal_up_" || (is_aiming == "up_" && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH))){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, -15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = 26;
        projectile_y = -100;
    }else if(is_facing == "left"){
        projectile_x = -26;
        projectile_y = -100;
    }
}
if(is_aiming == "diagonal_down_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = 54;
        projectile_y = -50;
    }else if(is_facing == "left"){
        projectile_x = -54;
        projectile_y = -50;
    }
}
if(is_aiming == "forward_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 5);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, -0.8);
    if(is_facing == "right"){
        if(state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            projectile_x = 28;
            projectile_y = -64;
        }else{
            projectile_x = 28;
            projectile_y = -58;
        }
    }else if(is_facing == "left"){
        if(state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
            projectile_x = -28;
            projectile_y = -64;
        }else{
            projectile_x = -28;
            projectile_y = -58;
        }
    }
}
}else if(is_crouch == true){
    if(is_aiming == "up_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, -15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = -8;
        projectile_y = -66;
    }else if(is_facing == "left"){
        projectile_x = 8;
        projectile_y = -66;
    }
}
if(is_aiming == "diagonal_up_" || (is_aiming == "up_" && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH))){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, -15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = 20;
        projectile_y = -78;
    }else if(is_facing == "left"){
        projectile_x = -20;
        projectile_y = -78;
    }
}
if(is_aiming == "diagonal_down_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_x"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 15);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
    if(is_facing == "right"){
        projectile_x = 40;
        projectile_y = -30;
    }else if(is_facing == "left"){
        projectile_x = -40;
        projectile_y = -30;
    }
}
if(is_aiming == "forward_"){
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_MASK, sprite_get("physical_attacks_super_missile_+"));
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 5);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value( AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, -0.8);
    if(is_facing == "right"){
        projectile_x = 28;
        projectile_y = -36;
    }else if(is_facing == "left"){
        projectile_x = -28;
        projectile_y = -36;
    
    }
}
}