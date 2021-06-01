//unload.gml
//nothing to unload really, but set the units back to being clones when we're done
if (is_master_player) {
    
    if (instance_exists(unit_player_id_array[0])) with unit_player_id_array[0] { 
        visible = false; custom_clone = true;
        deactivate_pet(pet_obj);
        instance_destroy(); 
    }
        
    if (instance_exists(unit_player_id_array[1])) with unit_player_id_array[1] { 
        visible = false; custom_clone = true; ds_list_destroy(ds_list_original_hurt_sprites);
        deactivate_pet(pet_obj);
        instance_destroy(); 
    }
    
    deactivate_pet(pet_obj);
    //if (instance_exists(pet_obj)) pet_obj.visible = false;
    //if (instance_exists(original_pet_obj)) pet_obj.visible = false;
    visible = true;
    
}

#define deactivate_pet(pet_id)
//something about pets and clones makes the game crash, try to fix that somehow
if (!instance_exists(pet_id)) return;
pet_id.visible = false;
pet_obj.sprite_index = asset_get("empty_sprite");
return;