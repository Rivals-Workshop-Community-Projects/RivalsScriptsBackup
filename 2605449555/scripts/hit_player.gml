//hit_player.gml
if (my_hitboxID.attack == AT_FSPECIAL) {
    if (hit_player_obj.state_cat == SC_HITSTUN) {
        hit_player_obj.visible = false;
        // \/ Invis Variables in other_init for below \/
    	hit_player_obj.CannOppInvis = true;
        hit_player_obj.x = x - 40 * spr_dir;
        CannGrabbedId = hit_player_obj.id;
    } else {
        //hit_player_obj.invincible = false;
        hit_player_obj.visible = true;
        CannGrabbedId = 0;
    }
    soft_armor = 100;
}

if (my_hitboxID.attack == AT_USTRONG) {
    if (hit_player_obj.state_cat == SC_HITSTUN) {
        if (hit_player_obj != obj_article1 && hit_player_obj != obj_article2 && hit_player_obj != obj_article3 && hit_player_obj != obj_article_solid && hit_player_obj != obj_article_platform) {
            //hit_player_obj.x = hit_player_obj.x - 40 * spr_dir;
            CannGrabbedId = hit_player_obj.id;
        }
    } else {
        //hit_player_obj.invincible = false;
        CannGrabbedId = 0;
    }
    //soft_armor = 100;
}

LowerHeatTimer = 0;