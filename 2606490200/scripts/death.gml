///

move_cooldown[AT_USPECIAL] = 0

with asset_get("pHitBox") {
    if player_id = other.id {
        destroyed = true
    }
} 


if htrain < 100 {
    htrain += floor((100 - htrain)/3)
}

if btrain < 100 {
    btrain += floor((100 - btrain)/3)
}

if atrain < 100 {
    atrain += floor((100 - atrain)/3)
}

if ltrain < 100 {
    ltrain += floor((100 - ltrain)/3)
}