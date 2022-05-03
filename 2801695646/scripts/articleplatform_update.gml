

var _xpos = round(player_id.x);
var _ypos = round(player_id.y - 36);

var _ply_col = (instance_place(x, y - 4, oPlayer));

//if (x != _xpos) x = _xpos;
//if (y != _ypos) y = _ypos;
hsp = round(player_id.hsp);
vsp = round(player_id.vsp);


if (instance_exists(_ply_col)) {
    _ply_col.go_through = true;                                                 // Players on the player platform phase through other players. No pushing!
}