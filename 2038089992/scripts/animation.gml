switch (state) {
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;

    case PS_DOUBLE_JUMP:
    sprite_index = sprite_get("jump");
    var frame = floor(state_timer/10);
    if (frame > 4) {
        image_index = 4;
    } else {
        image_index = frame;
    }

    break;

    default: break;
}

if state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_IDLE_AIR || state == PS_TUMBLE {
    switch (djumpPressVar) {
        case 0:
            djumpXMod = 0;
            break;
        case 1:
            djumpXMod = 0;
            break;
        case 2:
            sprite_index = sprite_get("hover");
            var frame = floor(djumpHoverTime/3);
            if (frame > 2) { //hovering animation frame time
                if (hsp < -2) {
                    if (spr_dir = 1) {
                        image_index = 4;
                        djumpXMod = 20;
                    } else {
                        image_index = 2;
                        djumpXMod = -20;
                    }
                } else if (hsp > 2) {
                    if (spr_dir = 1) {
                        image_index = 2;
                        djumpXMod = -20;
                    } else {
                        image_index = 4;
                        djumpXMod = 20;
                    }
                } else {
                    image_index = 3;
                    djumpXMod = 0;
                }
            } else {
                image_index = frame;
            }
            break;
        case 3:
            sprite_index = sprite_get("hover");
            var frame = 5 + floor(djumpEndingTime/5);
            if (frame > 7) {
                image_index = 7;
            } else {
                image_index = frame;
            }
            break;
    }
}

//intro anim
var intro_time = get_gameplay_time();
if (intro_time <= 15 * 4 - 1) {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/4);
}
if intro_time <= 40 {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
if intro_time == 30 {
    sound_play(asset_get("sfx_waterwarp"))
}
