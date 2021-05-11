// Use separate aerial windup animation if you start from the air
if (attack == AT_USPECIAL) {
    if (free) {
        window = 3;
    }
}

// If the Comedy Zone has already been deployed, recall it instead
if (attack == AT_DSPECIAL) {
    with (asset_get("obj_article1")) {
        if (player_id == other.id) {
            other.attack = AT_DSPECIAL_2;
        }
    }
}