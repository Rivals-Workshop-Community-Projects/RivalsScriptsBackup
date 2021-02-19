//monitor
with(oPlayer){
    if(position_meeting(x,y - 5,other)){
        other.activated = true;
    }
}

if(!activated && sprite_index != "monitor"){
    sprite_index = sprite_get("monitor");
}
else{
    sprite_index = sprite_get("monitor_active");
    activated = false;
}