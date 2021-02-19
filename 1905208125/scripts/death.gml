sharphits = 0;
sharpBuff = 0;

with (asset_get("obj_article2")) if (player_id == other) {
    instance_destroy(self);
}