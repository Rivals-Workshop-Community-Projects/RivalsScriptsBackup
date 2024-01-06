//got_hit.gml

with obj_article_platform if player_id == other.id {
    state = 0
}

with pHitBox if player_id == other.id {
    if (attack == AT_NSPECIAL && hbox_num == 1)
    || (attack == AT_JAB && hbox_num == 3) {
        state = 0
    }
}