//gravity flipper
var anim_speed = 0.12;

with (oPlayer) {
    if(y <= other.y && vsp < 0){
        vsp = -vsp * 1.25;
        other.activated = true;
    }
}

if(!activated && sprite_index != "grav_flipper" && timer == 0){
    sprite_index = sprite_get("grav_flipper");
}
else if(activated){
    sprite_index = sprite_get("grav_flipper_activate");
    timer = 25;
    sound_play(sound_get("blip"));
    activated = false;
}

if(timer != 0) timer--;

image_index += anim_speed;