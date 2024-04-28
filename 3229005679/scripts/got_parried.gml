

if (my_hitboxID.orig_player != player) exit;


if ((my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_NAIR) && my_hitboxID.type == 2) {

    my_hitboxID.hitbox_timer = 0

    my_hitboxID.image_index = 0

    my_hitboxID.hsp *= 1.5;

    my_hitboxID.vsp *= 1.5;

    my_hitboxID.length *= 0.75;

    my_hitboxID.draw_xscale *= -1;

    my_hitboxID.transcendent = true;
}

if ((my_hitboxID.attack == AT_BAIR) && my_hitboxID.type == 2) {

    my_hitboxID.hitbox_timer = 0

    my_hitboxID.image_index = 0

    my_hitboxID.draw_xscale *= -1;

    my_hitboxID.transcendent = true;

    my_hitboxID.air_friction *= -1;
    
}


if (instance_exists(vigiGhost)){
    vigiGhost.state = "fade";
    vigiGhost.state_timer = 0;
}

if (my_hitboxID.attack == AT_DSPECIAL && instance_exists(vigiCow) && my_hitboxID.hbox_num == 1){

    vigiCow.hsp = round((x - vigiCow.x) / 100) + sign(x - vigiCow.x);

    if (sign(x - vigiCow.x) != 0){
		vigiCow.spr_dir = sign(x - vigiCow.x);
	}

    vigiCow.crateParriedPlayer = hit_player_obj.player;
}

if (my_hitboxID.attack == AT_FSPECIAL && instance_exists(vigiWeenie)){
    
    window = 4;
    window_timer = 0;
    hurtboxID.sprite_index = hurtbox_spr;

    destroy_hitboxes();

    vigiWeenie.state = 6;
    vigiWeenie.state_timer = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && instance_exists(vigiWeenie)){
    destroy_hitboxes();

    vigiWeenie.state = 6;
    vigiWeenie.state_timer = 0;
}