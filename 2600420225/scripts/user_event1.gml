if(beam_level == "1"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_DAMAGE, 14);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
}
if(beam_level == "2"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_DAMAGE, 16);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
}
if(beam_level == "3"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_DAMAGE, 18);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}
if(beam_level == "4"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_DAMAGE, 20);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}
if(beam_level == "5"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_DAMAGE, 22);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
}
if(beam_level == "6"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_DAMAGE, 999);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 999);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 0);
}

if(beam_level == "3" || beam_level == "4" || beam_level == "5" || beam_level == "6"){
    var freeze_ind_2 = x;
    freeze_ind_2 %= 199;
    var freeze_chance = random_func_2(freeze_ind_2, 16, true);
    if(freeze_chance == 3){
        set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 5);
    }else{
        set_hitbox_value( AT_DSTRONG_2, 1, HG_EFFECT, 0);
    }
}

//projectile position
if(is_crouch == false){
if(is_aiming == "up_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, -10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = -10;
        projectile_y = -90;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -34;
        projectile_y = -90;
    }else if(beam_level == "5"){
        projectile_x = -30;
        projectile_y = -90;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -90;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = 10;
        projectile_y = -90;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 34;
        projectile_y = -90;
    }else if(beam_level == "5"){
        projectile_x = 30;
        projectile_y = -90;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -90;
    }
    }
}
if(is_aiming == "down_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 30;
        projectile_y = -24;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 50;
        projectile_y = -24;
    }else if(beam_level == "5"){
        projectile_x = 54;
        projectile_y = -24;
    }else if(beam_level == "6"){
        projectile_x = 24;
        projectile_y = -24;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -30;
        projectile_y = -24;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -50;
        projectile_y = -24;
    }else if(beam_level == "5"){
        projectile_x = -54;
        projectile_y = -24;
    }else if(beam_level == "6"){
        projectile_x = 24;
        projectile_y = -24;
    }
    }
}
if(is_aiming == "diagonal_up_" || (is_aiming == "up_" && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH))){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, -10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 36;
        projectile_y = -100;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 8;
        projectile_y = -146;
    }else if(beam_level == "5"){
        projectile_x = 0;
        projectile_y = -190;
    }else if(beam_level == "6"){
        projectile_x = 50;
        projectile_y = -186;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -30;
        projectile_y = -100;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -8;
        projectile_y = -146;
    }else if(beam_level == "5"){
        projectile_x = 0;
        projectile_y = -190;
    }else if(beam_level == "6"){
        projectile_x = -20;
        projectile_y = -178;
    }
    }
}
if(is_aiming == "diagonal_down_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 60;
        projectile_y = -50;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 110;
        projectile_y = -66;
    }else if(beam_level == "5"){
        projectile_x = 150;
        projectile_y = -70;
    }else if(beam_level == "6"){
        projectile_x = 126;
        projectile_y = -40;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -60;
        projectile_y = -50;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -110;
        projectile_y = -66;
    }else if(beam_level == "5"){
        projectile_x = -150;
        projectile_y = -70;
    }else if(beam_level == "6"){
        projectile_x = -126;
        projectile_y = -40;
    }
    }
}
if(is_aiming == "forward_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 0);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 28;
        projectile_y = -66;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 28;
        projectile_y = -90;
    }else if(beam_level == "5"){
        projectile_x = 28;
        projectile_y = -90;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -58;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -28;
        projectile_y = -66;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -28;
        projectile_y = -90;
    }else if(beam_level == "5"){
        projectile_x = -28;
        projectile_y = -90;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -58;
    }
    }
}
}else if(is_crouch == true){
    if(is_aiming == "up_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, -10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = -10;
        projectile_y = -68;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -34;
        projectile_y = -68;
    }else if(beam_level == "5"){
        projectile_x = -30;
        projectile_y = -68;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -68;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = 10;
        projectile_y = -68;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 34;
        projectile_y = -68;
    }else if(beam_level == "5"){
        projectile_x = 30;
        projectile_y = -68;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -68;
    }
    }
}
if(is_aiming == "down_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 30;
        projectile_y = -2;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 50;
        projectile_y = -2;
    }else if(beam_level == "5"){
        projectile_x = 54;
        projectile_y = -2;
    }else if(beam_level == "6"){
        projectile_x = 24;
        projectile_y = -2;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -30;
        projectile_y = -2;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -50;
        projectile_y = -2;
    }else if(beam_level == "5"){
        projectile_x = -54;
        projectile_y = -2;
    }else if(beam_level == "6"){
        projectile_x = 24;
        projectile_y = -2;
    }
    }
}
if(is_aiming == "diagonal_up_" || (is_aiming == "up_" && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH))){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, -10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 36;
        projectile_y = -82;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 8;
        projectile_y = -128;
    }else if(beam_level == "5"){
        projectile_x = 0;
        projectile_y = -172;
    }else if(beam_level == "6"){
        projectile_x = 50;
        projectile_y = -128;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -36;
        projectile_y = -82;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -8;
        projectile_y = -128;
    }else if(beam_level == "5"){
        projectile_x = 0;
        projectile_y = -172;
    }else if(beam_level == "6"){
        projectile_x = 50;
        projectile_y = -128;
    }
    }
}
if(is_aiming == "diagonal_down_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_x"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 10);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 60;
        projectile_y = -28;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 110;
        projectile_y = -44;
    }else if(beam_level == "5"){
        projectile_x = 150;
        projectile_y = -48;
    }else if(beam_level == "6"){
        projectile_x = 126;
        projectile_y = -18;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -60;
        projectile_y = -28;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -110;
        projectile_y = -44;
    }else if(beam_level == "5"){
        projectile_x = -150;
        projectile_y = -48;
    }else if(beam_level == "6"){
        projectile_x = -126;
        projectile_y = -18;
    }
    }
}
if(is_aiming == "forward_"){
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("beam_attacks_" + beam_level + "_charge_shot_+"));
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value( AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 0);
    if(is_facing == "right"){
        if(beam_level == "1"){
        projectile_x = 28;
        projectile_y = -44;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = 28;
        projectile_y = -80;
    }else if(beam_level == "5"){
        projectile_x = 28;
        projectile_y = -68;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -36;
    }
    }else if(is_facing == "left"){
        if(beam_level == "1"){
        projectile_x = -28;
        projectile_y = -44;
    }else if(beam_level == "2" || beam_level == "3" || beam_level == "4"){
        projectile_x = -28;
        projectile_y = -80;
    }else if(beam_level == "5"){
        projectile_x = -28;
        projectile_y = -68;
    }else if(beam_level == "6"){
        projectile_x = 0;
        projectile_y = -36;
    }
    }
}
}