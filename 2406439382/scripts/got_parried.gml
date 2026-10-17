// got parried

switch (my_hitboxID.attack )
{
    case AT_USTRONG:
        parry_lag = 70;
    break;
}

with asset_get("obj_article1") {
    if (player_id == other) {
        state = 1 state_timer = 0
    }
}

with asset_get("obj_article2") {
    if (player_id == other) {
        destroyed = true
    }
}