set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, beam_collision);

if(beam_level == "1"){
    set_hitbox_value( AT_UTHROW, 1, HG_DAMAGE, 2);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
}
if(beam_level == "2"){
    set_hitbox_value( AT_UTHROW, 1, HG_DAMAGE, 3);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_ANGLE, 90);
}
if(beam_level == "3"){
    set_hitbox_value( AT_UTHROW, 1, HG_DAMAGE, 4);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_ANGLE, 90);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}
if(beam_level == "4"){
    set_hitbox_value( AT_UTHROW, 1, HG_DAMAGE, 5);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_ANGLE, 90);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}
if(beam_level == "5"){
    set_hitbox_value( AT_UTHROW, 1, HG_DAMAGE, 6);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_ANGLE, 90);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}
if(beam_level == "6"){
    set_hitbox_value( AT_UTHROW, 1, HG_DAMAGE, 6);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value( AT_UTHROW, 1, HG_ANGLE, 90);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}



//projectile position
if(is_crouch == false){
if(is_aiming == "up_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, -12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 0;
        projectile_y = -90;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -28;
        projectile_y = -90;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -30;
        projectile_y = -90;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = 0;
        projectile_y = -90;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 28;
        projectile_y = -90;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 30;
        projectile_y = -90;
    }
    }
}
if(is_aiming == "down_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, 12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 20;
        projectile_y = -24;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 44;
        projectile_y = -24;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 54;
        projectile_y = -24;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -22;
        projectile_y = -24;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -48;
        projectile_y = -24;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -54;
        projectile_y = -24;
    }
    }
}
if(is_aiming == "diagonal_up_" || (is_aiming == "up_" && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH))){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, -12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 36;
        projectile_y = -100;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 8;
        projectile_y = -146;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 10;
        projectile_y = -146;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -36;
        projectile_y = -100;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -8;
        projectile_y = -150;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -10;
        projectile_y = -146;
    }
    }
}
if(is_aiming == "diagonal_down_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, 12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 40;
        projectile_y = -50;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 100;
        projectile_y = -66;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 100;
        projectile_y = -66;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -40;
        projectile_y = -50;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -100;
        projectile_y = -66;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -100;
        projectile_y = -66;
    }
    }
}
if(is_aiming == "forward_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, 0);
    if(is_facing == "right"){
        if(beam_level == "1"){
            if(state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
                projectile_x = 28;
                projectile_y = -64;
            }else{
                projectile_x = 28;
                projectile_y = -58;
            }
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 28;
        projectile_y = -86;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 28;
        projectile_y = -86;
    }
    }if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -28;
        projectile_y = -58;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -28;
        projectile_y = -86;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -28;
        projectile_y = -86;
    }
    if(state == PS_WALK || state == PS_DASH_START || state == PS_DASH){
        if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -28;
        projectile_y = -64;
        }
        }
    }
    }
}
}else if(is_crouch == true){
    if(is_aiming == "up_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, -12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = -8;
        projectile_y = -66;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -36;
        projectile_y = -66;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -40;
        projectile_y = -66;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = 8;
        projectile_y = -66;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 38;
        projectile_y = -66;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 40;
        projectile_y = -66;
    }
    }
}
if(is_aiming == "diagonal_up_" || (is_aiming == "up_" && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH))){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, -12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 28;
        projectile_y = -76;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 4;
        projectile_y = -120;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -4;
        projectile_y = -120;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -28;
        projectile_y = -76;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -4;
        projectile_y = -124;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 4;
        projectile_y = -120;
    }
    }
}
if(is_aiming == "diagonal_down_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_x"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, 12);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 38;
        projectile_y = -24;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 92;
        projectile_y = -40;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 100;
        projectile_y = -40;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -38;
        projectile_y = -24;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -92;
        projectile_y = -40;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -100;
        projectile_y = -40;
    }
    }
}
if(is_aiming == "forward_"){
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_shot_+"));
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
    set_hitbox_value( AT_UTHROW, 1, HG_PROJECTILE_VSPEED, 0);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 28;
        projectile_y = -36;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 28;
        projectile_y = -70;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = 28;
        projectile_y = -60;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -28;
        projectile_y = -36;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -28;
        projectile_y = -70;
    }else if(beam_level == "5" || beam_level == "6"){
        projectile_x = -28;
        projectile_y = -60;
    }
    }
}
}
