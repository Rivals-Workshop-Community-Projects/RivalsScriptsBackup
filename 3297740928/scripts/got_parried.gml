
if (my_hitboxID.attack == AT_NSPECIAL_3 && my_hitboxID.hbox_num == 1){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 2;
    my_hitboxID.vsp = 2; //fly straighter so it doesnt arc over Gunner when parried
    my_hitboxID.grav = 0.3;
    my_hitboxID.draw_xscale *= -1;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num < 3){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp *= 1.5;
    my_hitboxID.draw_xscale *= -1;
}

if (my_hitboxID.attack == AT_FSPECIAL_3 && my_hitboxID.hbox_num == 1){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp = 1*spr_dir;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp *= 1.5;
    my_hitboxID.draw_xscale *= -1;
}if (my_hitboxID.attack == AT_FSPECIAL_3 && my_hitboxID.hbox_num == 2){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp = 5*spr_dir;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp = 0;
    my_hitboxID.curr_target = noone;
	my_hitboxID.missile_angle = 0;
	my_hitboxID.proj_angle = 0;
    my_hitboxID.draw_xscale *= -1;
}

if (my_hitboxID.attack == AT_DSPECIAL){
    if(my_hitboxID.hitbox_timer < my_hitboxID.length-4){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp = 6;
    my_hitboxID.vsp = -6;
    }
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.vsp *= 1.5;
    my_hitboxID.draw_xscale *= -1;
}

cblast_charged = false;
cblast_timer = 0;