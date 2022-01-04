if !instance_exists(self) exit;



if(attack == AT_FSTRONG and hbox_num == 1){
    if(hitbox_timer == 3){
        destroyed = true;
        create_hitbox(AT_FSTRONG, 4, floor(x), floor(y));
    }
    var x_mod = 190;
    var y_mod = -32;
    /*
    if (hitbox_timer >= length and player_id.state_cat != SC_HITSTUN) {
        with player_id spawn_hit_fx(other.x + spr_dir*x_mod,other.y+y_mod,nspec_explode);
    }*/
}


if(attack == AT_FSTRONG and hbox_num == 4){
    if(hitbox_timer == 6){
        destroyed = true;
        create_hitbox(AT_FSTRONG, 2, floor(x), floor(y));
    }
}

if(attack == AT_FSTRONG and hbox_num == 2){
    image_index = floor(hitbox_timer/4);
    if(hitbox_timer == 1){
        sound_play(asset_get("sfx_ell_strong_attack_explosion"))
        mini_hitbox = create_hitbox(AT_FSTRONG, 5, floor(x)+spr_dir*28, floor(y)+12);
    }
    if(instance_exists(mini_hitbox) and mini_hitbox.has_hit and !proj_has_hit){
        proj_has_hit = true;
        proj_hitpause = 10;
        player_id.hitstop_full = 10;
        player_id.hitstop = 9;
        player_id.hitpause = true;
        player_id.old_vsp = player_id.vsp;
        player_id.old_hsp = player_id.hsp;
    }
    if(proj_hitpause > 0 and hitbox_timer > 2){
        proj_hitpause--;
        hitbox_timer--;
    }
}

if(attack == AT_FSTRONG and type == 2){
    x = player_id.x+spr_dir*player_id.fstrong_punch_distance;    
    
}


if(attack == AT_FSPECIAL and hbox_num == 3){
    if(hitbox_timer == 3){
        transcendent = false;
    }
    if(was_parried){
        was_parried = false;
        with(pHitBox){
            if(self != other and attack == AT_FSPECIAL and hbox_num == 3 and orig_player == other.orig_player){
                player = other.player;
                hsp = -hsp;
                vsp = -vsp;
            }
        }
    }
}


if(attack == AT_FSTRONG and player_id.state_cat == SC_HITSTUN){
   destroyed = true;
}