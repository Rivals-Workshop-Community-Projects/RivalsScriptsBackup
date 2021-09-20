
image_xscale -= (((0.5 + (state_timer / 3)) / 100)) * movement
image_yscale = image_xscale

if(image_xscale <= 0 || image_yscale <= 0){
    instance_destroy();
    exit;
}else if(image_xscale >= 2 || image_yscale >= 1.25){
    instance_destroy();
    exit;
}

state_timer++

x = player_id.x
y = player_id.y - 20

if(image_index < 3){
    image_index += 0.25
}
