totemAnimCounter++;
if(totemAnimCounter % 4 == 0){
    image_index += 1;
}
if(sprite_index == player_id.totemSpawnAnim && image_index == image_number){
    sprite_index = player_id.totemIdle;
}
if(destroy){
    sprite_index = player_id.totemBreak;
    if(image_index == image_number){
        instance_destroy();
        exit;
    }
}
with(pHitBox){
    if(other.player_id.url == player_id.url 
    && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_NSPECIAL)
    && hbox_num == 1){
        if(place_meeting(x, y, other)){
            if(attack == AT_FSPECIAL && !other.player_id.has_hit){
                if(player.id == other){
                    other.fspecialHit = true;
                }
            }
            player_id.totemwehit = other;
            player_id.totemspr_dir = other.spr_dir;
            player_id.has_hit = true;
            player_id.totemStorePos = other.x;
            player_id.hit_totem = true;
            destroyed = true;
            other.destroy = true;
        }
    }
}
with(pHitBox){
    if(other.player_id.url == player_id.url 
    && (attack == AT_FSPECIAL_2 || attack == AT_NSPECIAL)
    && hbox_num == 2){
        if(player_id.hit_totem){
            other.destroy = true;
        }
    }
}
if(fspecialHit){
    player_id.x = x-50*player_id.spr_dir;
    player_id.hitpause = true;
    player_id.hitstop = 5;
    fspecialHit = false;
}
if(sprite_index == player_id.totemSpawnAnim && totemAnimCounter == 8){
    with(player_id){
        create_hitbox(AT_DSPECIAL, 2, other.x, other.y);
    }
    var totemspawnfx = spawn_hit_fx(x, y-25, 303);
    totemspawnfx.hit_angle = 77*spr_dir;
}
if(sprite_index == player_id.totemSpawnAnim && totemAnimCounter == 25){
    sound_play(asset_get("sfx_plant_eat"));
}