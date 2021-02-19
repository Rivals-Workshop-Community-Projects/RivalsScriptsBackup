
if get_player_color(player) != 6{
    if gametime < introdelay{
        sprite_index = asset_get("empty_sprite");
    }else{
        if gametime < introdelay + 60{
            sprite_index = sprite_get("intro");
            // image_speed = 2.5;
            if (gametime % 5 == 0){
                index++;
            }
            if index < image_number{
                image_index = index;
            }
            
        }
    }
}else{
    if gametime < introdelay{
        sprite_index = sprite_get("intro_abyss");
        image_index = 0;
    }else{
        if gametime < introdelay + 120{
            sprite_index = sprite_get("intro_abyss");
            // image_speed = 2.5;
            if (gametime % 5 == 0){
                index++;
            }
            if index < image_number{
                image_index = index;
            }
            
        }
    }
}



