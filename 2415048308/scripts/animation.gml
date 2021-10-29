if (state == PS_CROUCH && down_down){
    if (state_timer > 20){
        sprite_index = sprite_get("crouch");
        image_index = 4;
    }
}

if (state == PS_PRATFALL){
    if (state_timer > 15){
        image_index = 3;
    }
}

if (state == PS_SPAWN && !spooky_idle) {
    if (introTimer < 10 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    if (introTimer == 0 && introTimer2 == 0) { 
    //put your intro sound here
    }
}

if (spooky_idle == true){
    changeAnim(sprite_get("dummy_spooky"), sprite_get("idle"));
    var frames = 8;
    var frame_dur = 6;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}

#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}