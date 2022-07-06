///

move_cooldown[AT_USPECIAL] = 0

with asset_get("pHitBox") {
    if player_id = other.id {
        destroyed = true
    }
} 