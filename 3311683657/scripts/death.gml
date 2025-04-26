// called when the character gets KO'd

shuriken_charge = 0
ss_start = false

with obj_article1 if player_id == other.id {
    state = 9
    state_timer = 0
}