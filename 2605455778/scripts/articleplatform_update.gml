platanimcounter++;
if(sprite_index == player_id.wallPlattotemSpawn && platanimcounter % 6 == 0){
    image_index += 1;
}
if(sprite_index == player_id.wallPlattotemSpawn && image_index == image_number){
    sprite_index = player_id.wallPlattotem;
}
if(destroy){
    with(asset_get("oPlayer")){
        onDinockPlat = false;
    }
    var phbox;
    phbox = create_hitbox(AT_DSPECIAL, 3, x, y+32);
    instance_destroy();
    exit;
}
if(jumpcount >= 3){
    destroy = true;
}
with(asset_get("oPlayer")){
    if(!free && place_meeting(x, y+2, other)){
        DinockPlatref = other;
        other.platlifetimer++;
    }
}
if(platlifetimer = 150){
    destroy = true;
}
switch(jumpcount){
        case 1:
            if(image_index < 3){
                if(platanimcounter % 4 == 0){
                    image_index += 1;
                    platlifetimer = 0;
                }
            }
        break;
        case 2:
            if(image_index < 6){
                if(platanimcounter % 4 == 0){
                    image_index += 1;
                    platlifetimer = 0;
                }
            }
        break;
}