// called when the character gets KO'd

with obj_article1{
    if player_id == other{
        state = 6;
        state_timer = 0;
    }
}
with pHitBox{
    if player_id == other{
        if type = 2 destroyed = true;
    }
}
player_id.move_cooldown[AT_NSPECIAL] = 0;
player_id.move_cooldown[AT_DSPECIAL] = 0;