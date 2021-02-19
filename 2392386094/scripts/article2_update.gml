//article2_update

if !_init {
    _num = spawn_variables[0];
    //print_debug(string(_num));
    _init = 1;
    exit;
}
//print_debug("SHOULD WORK??? "+string(y));
alive_time++;
if alive_time > 90 {
    y = lerp(y,pos_to[_num],.05);
    //with oPlayer y = lerp(y,other.pos_to[player-1],.05);
}