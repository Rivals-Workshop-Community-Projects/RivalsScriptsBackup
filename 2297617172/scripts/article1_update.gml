//article1_update

sprite_index = sprite_get("cloud");

image_index = player_id.image_index;

if (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND){
    if (player_id.attack == AT_DSPECIAL){
        if (player_id.window < 4){
            x = player_id.x;
            y = player_id.y;
        }
    }
}

if ((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) || player_id.attack != AT_DSPECIAL){
    instance_destroy();
    exit;
}