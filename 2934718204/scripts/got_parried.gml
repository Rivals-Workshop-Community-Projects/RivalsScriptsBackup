//got_parried.gml

with oPlayer if id != other.id && hornet_silked_id == other.id {
    hornet_silked_id = noone
}

switch my_hitboxID.attack {
    case AT_USPECIAL:
    if my_hitboxID.hbox_num == 1 {
        proj_parried = true
    }
    break;
    
    case AT_DAIR:
    has_hit = true
    break;
    
    case AT_NSPECIAL:
    if my_hitboxID.hbox_num == 1 {
        my_hitboxID.hitbox_timer = 0
    }
    break;
}

with obj_article1 if player_id == other.id {
    die = true
}