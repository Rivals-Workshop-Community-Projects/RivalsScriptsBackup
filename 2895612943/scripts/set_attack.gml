//set_attack.gml

if attack == AT_TAUNT && bite() {
  attack = AT_TAUNT_2
}
//if special_pressed && up_down && move_cooldown[AT_USPECIAL_2] == 0 ||special_pressed && up_down && move_cooldown[AT_USPECIAL] != 0 {
if attack == AT_USPECIAL && move_cooldown[AT_USPECIAL_2] == 0 && move_cooldown[AT_USPECIAL] != 0 {
    if(instance_exists(disk_obj) && disk_obj != noone && !disk_obj.destroyed){
        attack = AT_USPECIAL_2;
        uspec_coord = [1,1];
        
        disk_obj.y -= 2;
        disk_obj.bounces = 0;
        disk_obj.enemies = 1;
        disk_obj.hitbox_timer--;
        disk_obj.hsp = 0;
        disk_obj.vsp = 0;
        
        //decide if uspec will catch the disk or not
        if(point_distance(x, y-(char_height/2), disk_obj.x, disk_obj.y) <= uspec_range){
            uspec_catch = true;
            set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 120);
            sound_play(asset_get("mfx_confirm"), 0, noone, 0.6, 1.05);
        }else{
            uspec_catch = false;
            set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, uspec_max_travel);
        }
    }
} 
#define bite()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;