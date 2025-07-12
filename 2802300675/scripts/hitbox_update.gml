//
/* Old Nspec Code
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
*/

if(attack == AT_NSPECIAL){
    //if(upgrade_cooldown > 0){
        //upgrade_cooldown--;
    //}
    
    if(final_upgrade_cooldown > 0){
        if(final_upgrade_cooldown == 1){
            cant_break_clouds = false;
        }
        final_upgrade_cooldown--;
    }
    
    if(hitbox_timer == length){
           spawn_hit_fx(x, y + 20, destroy_fx); 
           sound_play(asset_get("sfx_forsburn_disappear"));
        }
}

if (attack == AT_FSTRONG || attack == AT_USTRONG){
    if(hbox_num == 3){
        if(!free && !destroyed){
            if(hit_priority == 4){
            create_smogball();
            destroyed = true;
            }
        }
    }
}

if (attack == AT_FSTRONG){
    if(hbox_num == 3){
        if(hitbox_timer == 38 && free){
            if(hit_priority == 4){
            create_smogball();
            destroyed = true;
            }
        }
    }
}
if (attack == AT_USTRONG){
    if(hbox_num == 3){
        if(hitbox_timer == 68 && free){
            if(hit_priority == 4){
            create_smogball();
            destroyed = true;
            }
        }
    }
}

if (attack == AT_USPECIAL){
        if(!free && !destroyed){
            if(hit_priority == 4){
            create_smogball();
            destroyed = true;
        }
    }
    if(hitbox_timer == 25 && free){
            if(hit_priority == 4){
            create_smogball();
            destroyed = true;
        }
    }
    if(hbox_num > 1){
        if(hsp == 0){
            if(hit_priority == 4){
            create_smogball();
            destroyed = true;
            }
        }
    }
}
#define create_smogball
sound_play(asset_get("sfx_absa_cloud_place"));
if (!was_parried){
    if(player_id.poisonsmog_article == 0){
        player_id.poisonsmog_article = instance_create(x, y-8, "obj_article1");
    }
}
if(player_id.poisonsmog_article != 0){
player_id.poisonsmog_article.array_size += 1;
player_id.poisonsmog_article.poison_array[player_id.poisonsmog_article.array_size-1] = {sprite_index:player_id.cloud_sprite, poison_active:true, x:x, y:y-8, player_id:player_id, player:player, state_timer:0, lifetime:600, image_index:0, color:c_gray, introtime:40, alpha:0, radiuscircle:55, travel_angle:0, usedbydspec:false, upgradecooldown:0};
}
