// article2_update

if player_id.hitpause == false{
    switch(effect_num)
    {
        case 0:
            // sprite_index = sprite_get("dig_dirt_burst");
            anim_timer ++
            image_index = anim_timer/3
            if anim_timer >= 12 instance_destroy();
            break;
        case 1:
            // print("Hello")
            // sprite_index = sprite_get("blastseed_explosion");
            anim_timer ++
            image_index = anim_timer/3
            if anim_timer < 4{
                x = player_id.x+(25*player_id.spr_dir)
                y = player_id.y-39
            }
            if anim_timer >= 12 instance_destroy();
            break;
    }
}
