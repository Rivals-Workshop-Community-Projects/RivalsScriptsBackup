//hitbox_update.gml

//destroy dspecial hitboxes upon hitting the ground.
if (type == 2 && attack == AT_DSPECIAL && hbox_num == 6 && !free && orig_player == player && place_meeting(x, y+1, asset_get("par_block"))) {
    destroyed = true;
}