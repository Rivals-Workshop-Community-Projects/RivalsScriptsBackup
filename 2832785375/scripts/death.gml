// called when the character gets KO'd

with obj_article1 if player_id == other.id && (state == PS_WRAPPED || state == PS_IDLE) {
    die = true
    
}

with oPlayer if id != other.id && arb_tethered == other.id {
    arb_tethered = undefined
}