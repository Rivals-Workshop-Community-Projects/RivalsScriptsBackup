 with (asset_get("pHitBox")) {
        frog_cooldown = 1;
     }
     
     
     
     
if (my_hitboxID.attack == AT_FSPECIAL){
    var whenhitfspecial = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 55, fspecialhiteffect ); 
    whenhitfspecial.depth = -10;
          shake_camera(8, 10); 
          destroy_hitboxes();
    
}

if (my_hitboxID.attack == AT_EXTRA_2){
    var whenhitfspecial = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 55, fspecialhiteffect ); 
    whenhitfspecial.depth = -10;
          shake_camera(8, 10); 
    
}


with (asset_get("pHitBox")){
    if (self.attack == AT_DATTACK && other.has_hit_player){
        other.hsp = 0;
    }
}


if (my_hitboxID.attack == AT_NSPECIAL){
    with (asset_get("pHitBox")){
        if (attack == AT_NSPECIAL){
            if(player_id = other.id && in_hitpause = false){
    vsp = -8.25;
    hsp = -8 * spr_dir
        pr_dir = spr_dir * -1
    }
        }
}
}


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num = 1){
    if (has_rune("N")){
        spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 143 );
        create_hitbox( AT_NSPECIAL, 2, hit_player.x, hit_player.y - 25);
        my_hitboxID.length = 0;
        shake_camera(5, 12);
        sound_play(sound_get("dstrongexplosion"))
    }
}

if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num = 1){
    final_hitsprite = hit_player;
    window = 3;
}