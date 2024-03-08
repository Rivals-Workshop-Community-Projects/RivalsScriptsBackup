if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3) {
    with(obj_article2)
    {
        hbox_owner = other.hit_player;
        hsp = -hsp;
        vsp = -vsp;
        justParried = true;
        spr_dir = -spr_dir;
        if(bounces <= 3)
            bounces = 3;
    }
}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3) {
    with(pHitBox)
    {
        if(attack == AT_FSPECIAL && hbox_num == 2)
            destroyed = true;
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
    with(pHitBox)
        hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5)){
    var p_hsp = my_hitboxID.hsp;
    var p_vsp = my_hitboxID.vsp;
    with pHitBox {

        if (attack == AT_FSPECIAL && (hbox_num == 4 || hbox_num == 5) && player_id == other)
        {
            //vsp *= 1.5;
            //hsp *= 1.5;
        
            if (self != other.my_hitboxID)
            {
                player = other.hit_player;
                vsp = -vsp;
                hsp = -hsp;
                hitbox_timer = -40;
            }
        }
    }
} 

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 6){
    with(pHitBox){
        hitbox_timer = 0;
        //player = other.hit_player;
        tempTarget = noone;
        proj_angle = (point_direction(x,y,other.x,other.y-24));
        hsp = lengthdir_x(-18, proj_angle);
        vsp = lengthdir_y(-18, proj_angle);
    }
}

if (my_hitboxID.attack == AT_DSPECIAL)
    move_cooldown[AT_DSPECIAL] = 75;