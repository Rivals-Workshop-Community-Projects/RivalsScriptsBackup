// hit_player is a script that runs code when you hit an enemy player.

if (attack == AT_DAIR){
    window = 4;
    dairbounce = false;
}

/*
if (my_hitboxID.attack == AT_DSPECIAL){
    rolled_id = hit_player_obj;
}
*/


if (my_hitboxID.attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num > 1){
    my_hitboxID.vsp = -10 - hit_player_obj.old_hsp * -hit_player_obj.spr_dir / 20;
    my_hitboxID.hsp = -ballspeed * 0.3;
    my_hitboxID.grav = 0.3;
    }
    if (my_hitboxID.hbox_num == 1){
    my_hitboxID.vsp = -5 + (my_hitboxID.hitbox_timer * my_hitboxID.spr_dir) * 0.01;
    my_hitboxID.hsp = -1.5 * my_hitboxID.spr_dir;
    my_hitboxID.grav = 0.2;
    my_hitboxID.hitbox_timer = 10;
    }
}

