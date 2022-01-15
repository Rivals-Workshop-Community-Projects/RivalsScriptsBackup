//set_attack
if attack == AT_NSPECIAL {
with pHitBox {
if player_id == other.id {
    destroyed = true;
}
}
}