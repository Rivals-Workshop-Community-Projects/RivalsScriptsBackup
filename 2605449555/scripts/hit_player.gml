//hit_player.gml
if (my_hitboxID.attack == AT_FSPECIAL && hit_player_obj.super_armor == false && hit_player_obj.soft_armor <= 3) {
    if (my_hitboxID.hbox_num == 1) {
        hit_player_obj.CannOppFSpecialHit = true;
        CannBallFSpcLand = true;
    }
}

if (my_hitboxID.attack == AT_USTRONG) {
    if (hit_player_obj.state_cat == SC_HITSTUN) {
        if (hit_player_obj != obj_article1 && hit_player_obj != obj_article2 && hit_player_obj != obj_article3 && hit_player_obj != obj_article_solid && hit_player_obj != obj_article_platform) {
            //hit_player_obj.x = hit_player_obj.x - 40 * spr_dir;
            CannUStrongStartX = hit_player_obj.x;
            CannUStrongStartY = hit_player_obj.y;
            CannGrabbedId = hit_player_obj.id;
        }
    } else {
        //hit_player_obj.invincible = false;
        CannGrabbedId = 0;
    }
    //soft_armor = 100;
}

if (my_hitboxID.attack == AT_USPECIAL && window == 2) {
    if (hit_player_obj.state_cat == SC_HITSTUN) {
        if (my_hitboxID.hbox_num == 7) {
            hit_player_obj.x = x;
            hit_player_obj.y = y - 40;
        }
    }
}

LowerHeatTimer = 0;