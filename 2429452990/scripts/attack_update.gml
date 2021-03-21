// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSTRONG && window = 2 && window_timer = 1){
    sound_play(sound_get("duck_shotgunfire"))
}


if (attack == AT_DSPECIAL && window = 2){
   move_cooldown[AT_DSPECIAL] = 120;
   if (window_timer = 1){
       tv_stat = tv_stat * -1
   }
}



if (attack == AT_USPECIAL){
    if ((window = 2 || window = 3) && window_timer % 6 == 0){
        spawn_hit_fx( x, y, duckjetpacksteam );
    }
    
    if (window > 1){
        iasa_script();
    }
}


if (attack == AT_DSPECIAL && ((window = 2 && window_timer > 16) || window = 3)){
    iasa_script();
}

if (attack == AT_NSPECIAL && window = 2){
    move_cooldown[AT_NSPECIAL] = 90;
}

if (attack == AT_NSPECIAL && window = 2 && window_timer = 2 && mine_exists = 0 && !shield_down){
    mine_exists = 1;
    instance_create( x + 10 * spr_dir , y - 25 , "obj_article1" );
}

if (attack == AT_NSPECIAL && window = 2 && window_timer = 1 && (mine_exists = 1 || shield_down)){
    create_hitbox( AT_NSPECIAL, 2, x + 10 * spr_dir , y - 35 );
}


if (attack == AT_FSPECIAL && (window = 1 || window = 2 || window = 3)){
    can_move = false;
    hsp = 0;
}



if (attack == AT_FSPECIAL && window = 4){
    iasa_script();
}

if (attack == AT_FSPECIAL && window = 1 && window_timer = 6){
    wagnusstartpointx = x;
    wagnusstartpointy = y;
    

}

    if (attack == AT_FSPECIAL && window = 1 && window_timer = 15 && wagnus_charges = 0){
    sound_play(sound_get("duck_explode"));
    sound_play(sound_get("duck_yell"));
    spawn_hit_fx( x, y - 25, mineexplosionfx);
    create_hitbox(AT_FSPECIAL, 3, x, y - 25)
    }


if (attack == AT_FSPECIAL && window = 2 && window_timer = 1){
    wagnus_charges = wagnus_charges - 1;
    set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, point_distance(wagnusstartpointx, wagnusstartpointy, x, y));
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, point_distance(wagnusstartpointx, wagnusstartpointy, x, y) * -0.5);
}





if (attack == AT_FSPECIAL && wagnus_overheat = 90){
    sound_play(sound_get("duck_explode"));
    sound_play(sound_get("duck_yell"));
    spawn_hit_fx( x, y - 25, mineexplosionfx);
    create_hitbox(AT_FSPECIAL, 3, x, y - 25)
    wagnus_overheat = 0;
}



if (attack == AT_USTRONG && has_hit_player && window = 2){
 with (hit_player_obj){
    var ustrongautolinkdir = point_direction(x, y, other.x, other.y - 100);
    var ustrongautolinkspeed = 6.5;
    hsp = lengthdir_x(ustrongautolinkspeed, ustrongautolinkdir);
    vsp = lengthdir_y(ustrongautolinkspeed, ustrongautolinkdir);
 }
}