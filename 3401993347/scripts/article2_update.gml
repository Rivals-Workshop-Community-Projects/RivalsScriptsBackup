//article2_update
//7axel7 hitbox visualizer

if _init == 0 {
    _init = 1;
    state = 1;
}

if(_player.state_cat == SC_HITSTUN || _player.state == PS_LANDING_LAG){
    state = 2;
}

if state == 2 {
    instance_destroy();
    exit;
}

lifetime--;
if(_player.hitpause){
    lifetime++;
}
if(lifetime <= 0){
    state = 2;
}

if(_type == "nair_visual"){
    x = _player.x+_player.hNairDrag*_player.nairDragHsp
    y = _player.y+_player.vNairDrag*_player.nairDragVsp-_player.aboveNairDragOffset
}
