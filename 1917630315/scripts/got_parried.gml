//
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
    with (obj_article_solid) {
        if (player_id == other.id) {
            if (myhitbox == other.my_hitboxID) {
                destroyed = 1;
                player_hit = other.hit_player;
                hsp = 0;
                moving = false;
                can_hit = false;
                knockedback = false;
            }
        }
    }
}