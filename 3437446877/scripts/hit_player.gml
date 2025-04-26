if (my_hitboxID.attack == AT_FAIR){
    /*instance_create(x + 30*spr_dir , y, "obj_article1");
    instance_create(x + 60*spr_dir , y, "obj_article1");
    instance_create(x + 90*spr_dir , y, "obj_article1");*/
        grabbed = hit_player_obj;
    instance_create(hit_player_obj.x + 30*spr_dir , hit_player_obj.y, "obj_article2");
    instance_create(hit_player_obj.x + 60*spr_dir , hit_player_obj.y, "obj_article2");
    instance_create(hit_player_obj.x + 90*spr_dir , hit_player_obj.y, "obj_article2");
}

if (my_hitboxID.attack == AT_NAIR){
    /*can_attack = true;*/


    move_cooldown[AT_NAIR] = 9999;
    
}

if (my_hitboxID.attack == AT_NSPECIAL){
    sound_play( asset_get("sfx_waveland_ori") );
instance_create(x, y, "obj_article_solid"); 
    
}

