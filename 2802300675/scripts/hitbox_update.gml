//

if(attack == AT_NSPECIAL){
    if(hbox_num = 1 || hbox_num = 2){
        if(hitbox_timer == 39){
           spawn_hit_fx(x, y + 20, player_id.hitsmoke); 
           sound_play(asset_get("sfx_hod_fspecial_spirit"));
        }
    }
}
if(attack == AT_NSPECIAL){
    if(hbox_num = 3){
        if(hitbox_timer == 49){
           spawn_hit_fx(x, y + 20, player_id.bigsmoke); 
           sound_play(asset_get("sfx_forsburn_disappear"));
        }
    }
}

if (attack == AT_FSTRONG){
    if(hbox_num == 3){
        if(!free && !destroyed){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x, y-8, ("obj_article1"));
            destroyed = true;
            }
        }
    }
}
if (attack == AT_USTRONG){
    if(hbox_num == 3){
        if(!free && !destroyed){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x, y-8, ("obj_article1"));
            destroyed = true;
            }
        }
    }
}

if (attack == AT_FSTRONG){
    if(hbox_num == 3){
        if(hitbox_timer == 38 && free){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x, y-8, ("obj_article1"));
            destroyed = true;
            }
        }
    }
}
if (attack == AT_USTRONG){
    if(hbox_num == 3){
        if(hitbox_timer == 68 && free){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x, y-8, ("obj_article1"));
            destroyed = true;
            }
        }
    }
}

if (attack == AT_USPECIAL){
        if(!free && !destroyed){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x, y-8, ("obj_article1"));
            destroyed = true;
        }
    }
}

if (attack == AT_USPECIAL){
        if(hitbox_timer == 20 && free){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x, y-8, ("obj_article1"));
            destroyed = true;
        }
    }
}
if (attack == AT_USPECIAL){
    if(hbox_num > 1){
        if(hsp == 0){
            if(hit_priority == 4){
            sound_play(asset_get("sfx_absa_cloud_place"));
            player_id.smog_cloud = instance_create(x + spr_dir * 10, y-8, ("obj_article1"));
            destroyed = true;
            }
        }
    }
}
