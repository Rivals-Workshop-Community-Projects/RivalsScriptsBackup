// called when the character gets KO'd
flight = 0;
old_djumps = 0;
with obj_article1 {
    if player_id == other.id {
        state = 2;
    }
}

with obj_article2 {
    if player_id == other.id {
        state = 2;
    }
}