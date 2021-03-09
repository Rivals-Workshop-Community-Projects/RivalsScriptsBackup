//hitbox_update

if (attack == AT_USPECIAL){
    if (!free){
        var misobody = instance_create(x, y+4, "obj_article1");
        misobody.player_id = player_id;
        misobody.player = player;
        misobody.spr_dir = spr_dir;
        misobody.image_index = 0;
        with (player_id){
            sound_play(asset_get("sfx_land"));
        }
        
        instance_destroy();
        exit;
    }
    
    //蓋に当たる
    if (free and player_id.hutahit = true and player_id.hutahit2 = true){
        var misobody = instance_create(x, y+4, "obj_article1");
        misobody.player_id = player_id;
        misobody.player = player;
        misobody.spr_dir = spr_dir;
        misobody.image_index = 0;
        instance_destroy();
        exit;
    }
    
    
    //画面外
    if (y > room_height + 100){
        sound_play(asset_get("sfx_death1"));
        
        if(player_id.bodyless) player_id.bodyloss = true;
        player_id.headdie = false;
        instance_destroy();
        exit;
    }
}


//頭NB自爆
if(attack == AT_NSPECIAL_2 && hbox_num == 1){
     can_hit_self = true;
}