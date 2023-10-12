// called when the character gets KO'd

with obj_article1 if player_id == other.id && (state == PS_WRAPPED || state == PS_IDLE || state == PS_SPAWN) {
    die = true
}

with obj_article1 if player_id == other.id && state == PS_WRAPPED {
    state = PS_DEAD
    state_timer = 0
}

with oPlayer if id != other.id {
    if arb_tethered == other.id {
        arb_tethered = undefined
    }
}