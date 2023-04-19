// called when the character gets KO'd

with oPlayer if id != other.id {
    if hornet_silked_id == other.id {
        hornet_silked_id = noone
    }
}

with obj_article1 if player_id == other.id {
    die = true
}