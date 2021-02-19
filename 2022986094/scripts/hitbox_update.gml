//hitbox_update

if (attack == AT_USPECIAL){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 20 * -spr_dir;
    }
    
    if (grav == 0 && player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND){
        instance_destroy();
        exit;
    }
    
    if (hitbox_timer > 5){ //no hits right after it's created
        with (asset_get("pHitBox")){
            if (select == player_id.select && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)
            && hbox_num == 2 && place_meeting(x,y,other.id)){
                other.hitbox_timer = 0;
                other.hsp = 0;
                if (player_id.left_down) other.hsp -= 3;
                if (player_id.right_down) other.hsp += 3;
                if (attack == AT_FSPECIAL)
                    other.vsp = -10;
                else
                    other.vsp = 10;
            }
        }
    }
    
    if (!free){
        instance_destroy();
        exit;
    }
}