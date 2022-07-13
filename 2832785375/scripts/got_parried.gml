//got-parried

with obj_article1 if player_id == other.id && state == PS_WRAPPED {
    state = PS_DEAD
    state_timer = 0
}