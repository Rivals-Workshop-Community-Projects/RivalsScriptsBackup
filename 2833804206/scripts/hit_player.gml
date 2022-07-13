//hit_player.gml

var _hnum = my_hitboxID.hbox_num
var _atk = my_hitboxID.attack

if (_atk == AT_NSPECIAL && _hnum == 1) || (_atk == AT_DSPECIAL && _hnum <= 2) || (_atk == AT_DSPECIAL_AIR) {
    hit_player_obj.r2_oiled = true
    hit_player_obj.r2_oil_timer = 120
}

if _atk == AT_FSPECIAL && _hnum == 1 && hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND {
    window = 4
    window_timer = 0
    r2_grab_id = hit_player_obj
    destroy_hitboxes()
    
    hit_player_obj.r2_grabbed = id
} else {
    hit_player_obj.r2_grabbed = 0
}

if (_atk == AT_FSTRONG && _hnum == 3) || (_atk == AT_USPECIAL) || (_atk == AT_DSPECIAL && _hnum == 3) {
    if hit_player_obj.r2_oiled && hit_player_obj.r2_oil_timer > 30 {
        hit_player_obj.r2_burning = true
        hit_player_obj.r2_burning_timer = 0
    }
}