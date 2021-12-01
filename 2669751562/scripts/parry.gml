//parry - called when you parry any hitbox

if (skl_poisoned && skl_poisoner == hit_player){ //If I was poisoned by other player (by reflect)
        skl_poisoned = false;
        skl_poisoner = 0;
}