//checkpoint
var anim_speed = 0.12;

with(oPlayer){
    if(position_meeting(x,y - 5,other)){
        other.activated = true;
        other.owner = player;
    }
}

if(!activated && sprite_index != "checkpoint"+ string(owner)){
    sprite_index = sprite_get("checkpoint"+ string(owner));
}
else{
    sprite_index = sprite_get("checkpoint_active"+ string(owner));
    activated = false;
}

image_index += anim_speed;