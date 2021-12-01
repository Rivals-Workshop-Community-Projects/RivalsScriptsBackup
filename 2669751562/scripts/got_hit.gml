//got_hit - called when you're hit by a hitbox

if (enemy_hitboxID.type == 1 && //If a melee hitbox
    (hit_player_obj.skl_poisoned && hit_player_obj.skl_poisoner == player) || //If other player was poisoned by me
    (skl_poisoned && skl_poisoner == hit_player)){ //If I was poisoned by other player (by reflect)
        skl_poisoned = false;
        skl_poisoner = 0;
        hit_player_obj.skl_poisoned = false;
        hit_player_obj.skl_poisoner = 0;    
}