//with asset_get("obj_article1") {
//    if player_id == other.id {
//        if host != noone && host == other.hit_player_obj {
//            instance_destroy(self);
//        }
//   }
//}
with (my_hitboxID) {
    //delete words when parried
    if (attack == AT_NSPECIAL) {
        length = 1;
    }
    //delete ftilt fire when parried
    if (attack == AT_FTILT and hbox_num == 2) {
        length = 1;
    }
}