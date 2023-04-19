//crash prevention line

currentsprite = sprite_index
currentimage = image_index


if(!instance_exists(disk_obj)) disk_obj = noone;

if(!hitpause && disk_lockout > 0) disk_lockout--;

//SWAPPING

/*if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND { // im putting this here for ease of access and less lines in attack update
    if attack == AT_NSPECIAL && window_timer == 7{
        swap();
    }
}*/




if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    can_swap = 1
    set_attack_value(AT_NAIR, AG_CATEGORY, 1);
    set_attack_value(AT_UAIR, AG_CATEGORY, 1);
    set_attack_value(AT_DAIR, AG_CATEGORY, 1);
    set_attack_value(AT_FAIR, AG_CATEGORY, 1);
    set_attack_value(AT_BAIR, AG_CATEGORY, 1);

}

//print(move_cooldown[AT_USPECIAL_2])

if disk_obj != noone {
    move_cooldown[AT_USPECIAL] = 10 
}
if state == PS_WALL_JUMP || !free || state == PS_HITSTUN {
    //move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_USPECIAL_2] = 0;
    uspec_stall = 4;
}/*
if disk_obj != noone {
    print("exist")
} else {
    print("fasd")
}*/
#define swap()
print("swap")
//if storedatk != 0 {
 //   set_attack(storedatk)
//}
//storedatk = 0;
if (has_skin()) {
    set_skin(-1);
} else {
    set_skin("bite");
}
can_swap = 0
clear_button_buffer( PC_SPECIAL_PRESSED )
var fx = spawn_hit_fx( x, y, 304 )
fx.pause = 8.58



//BITE SKIN SET DONT MOVE THIS DONT PUT ANYTHING BELOW IT
#define set_skin(skin)
///Sets the active skin. You can supply a name or an index.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj {
    if (is_string(argument[0])) {
        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
        var sskin = -1;
        if argument[0] in _ssnksprites.skins {
            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, argument[0])[@3];
        }
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
        else _ssnksprites.skin_active = skin;
    }
}

#define has_skin()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;

#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}