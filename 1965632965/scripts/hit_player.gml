 if(my_hitboxID.attack == AT_NSPECIAL_GRENADE){
     if(my_hitboxID.hbox_num == 1){
         sound_play(asset_get("sfx_ell_explosion_medium"));
         spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 143);
         var explod = create_hitbox(AT_NSPECIAL_GRENADE, 2, my_hitboxID.x, my_hitboxID.y);
        explod.player = 0;
     }    
 }
 
if(my_hitboxID.attack == AT_NSPECIAL_SHELL and my_hitboxID.hbox_num < 3 and abs(my_hitboxID.hsp) > 1){
    
    var newshell = create_hitbox(AT_NSPECIAL_SHELL, my_hitboxID.hbox_num + 1, my_hitboxID.x, my_hitboxID.y);
    //newshell.player = hit_player_obj.player;
    newshell.hsp = my_hitboxID.hsp * -1.5;
    newshell.vsp = -3;
    my_hitboxID.destroyed = true;
    
}

if(my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID.hbox_num == 3){
        if(table != noone){
            table.tablehit = 0;
            if(table.tabletech == 1){
                table = noone;
                instance_destroy(table);
            }
            
        }
        
    }
}

if(my_hitboxID.attack == AT_USPECIAL){
    move_cooldown[AT_USPECIAL] = 30;
}