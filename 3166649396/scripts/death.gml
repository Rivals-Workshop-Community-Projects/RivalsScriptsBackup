// called when the character gets KO'd
/*
with obj_article1 if player_id == other.id && state != 2 {
    state = 2
    state_timer = 0
}
*/

with oPlayer if id != other.id && ("omen_drenched_id" in self) && omen_drenched_id == other.id {
    omen_drenched_id = noone
}