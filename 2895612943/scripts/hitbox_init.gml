//Stuff for disk.
is_bite = bite();

if attack == AT_DSPECIAL {
    with player_id {
        if bite() {
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecproj"));
        } else {
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("b_dspecproj"));
        }
    }
}


if(attack == AT_FSPECIAL && hbox_num == 1){
    bounces = 0;
    phase = 1;
    hitbox_timer = 0;
    uspec = 1;
    if(!bite()){
        hsp = hsp/2.5;
        vsp = vsp/2.5;
        disk_ver = 1;
    }else{
        image_index = 7;
        disk_ver = -1;
    }
    if(player_id.attack == AT_USPECIAL){
        uspec = 2;
        enemies = 1;
    }
    original_hsp = hsp;
    original_vsp = vsp;
    orig_x = x;
    orig_y = y;
    swap_cd = 0;
    prev_vsp = vsp;
    prev_hsp = hsp;
    
}
#define bite()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;
