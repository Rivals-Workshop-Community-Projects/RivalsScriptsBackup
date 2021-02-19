// death


with asset_get("obj_article1") {
    if player_id == other.id {
        state = 2;
    }
}