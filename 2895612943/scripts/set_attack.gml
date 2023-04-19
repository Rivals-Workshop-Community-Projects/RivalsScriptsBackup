//set_attack.gml

if attack == AT_TAUNT && bite() {
  attack = AT_TAUNT_2
}
if special_pressed && up_down && move_cooldown[AT_USPECIAL_2] == 0 ||special_pressed && up_down && move_cooldown[AT_USPECIAL] != 0 {
    if disk_obj != noone {
        attack = AT_USPECIAL_2;
    }
} 
#define bite()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;