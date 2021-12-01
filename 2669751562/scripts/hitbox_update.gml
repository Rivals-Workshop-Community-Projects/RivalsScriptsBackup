//hitbox_update

if (attack == AT_USPECIAL){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
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
        if(player_id.web_cooldown_current <= 0){
            sound_play(player_id.sfx_web_drop);
            player_id.uspec_web = instance_create(x, y, "obj_article1");
            player_id.uspec_web.player_id = player_id;
            player_id.web_cooldown_current = player_id.web_cooldown;
        }

        destroyed = true;
        exit;
    }
}

if(attack == AT_NSPECIAL) {
    if(hbox_num == 2 && !free)
        destroyed = true;
        exit;
}