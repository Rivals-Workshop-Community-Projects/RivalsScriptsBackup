cancdraw = 10 + hitstop*hitpause
cancx = x
cancy = y
cancimg = image_index
cancspr = sprite_index
cancdir = spr_dir

with (asset_get("pHitBox")) {
    if(player_id == other.id && type == 1) {
        destroyed = true;
    }
}