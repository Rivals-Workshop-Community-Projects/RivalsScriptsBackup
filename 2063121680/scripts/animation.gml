switch (state){
    case PS_IDLE:
    //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_DOUBLE_JUMP:
    image_index = state_timer/2;
    break;
    
    case PS_PRATLAND:
    if (wasInPratfall) {
        sprite_index = sprite_get("pratland");
        hurtboxID.sprite_index = asset_get("orca_crouchbox");
        if (state_timer <= 1) {
            image_index = 0;
        } else {
            image_index = 1;
        }
    }
    break;
    
    case PS_ATTACK_GROUND:
    switch (attack) {
        case AT_FSPECIAL:
        var angle = ceil((-retAngle - 45)*6/180);
        if (spr_dir == 1) {
            if (angle < 0 && angle > -4) {
                image_index = 0;
            } else if (angle >= -7 && angle <= -4) {
                image_index = 6;
            } else {
                image_index = angle;
            }
        } else {
            if (angle < 0 && angle > -4) {
                image_index = 6;
            } else if (angle >= -7 && angle <= -4) {
                image_index = 0;
            } else {
                image_index = 5 - angle;
            }
        }
        
       
        break;
    }
    break;
    
    default: break;
}

var introTime = get_gameplay_time();
if introTime <= fallStart + fallTime + splatTime {
    sprite_index = asset_get("empty_sprite");
    draw_indicator = false;
} else {
    draw_indicator = true;
}