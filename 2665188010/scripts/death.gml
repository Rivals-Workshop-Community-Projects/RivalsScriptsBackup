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
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;