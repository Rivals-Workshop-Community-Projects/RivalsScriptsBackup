//Draw field around acorn
#macro AS_SPAWN 0
#macro AS_SPAWN_TRANSITION 1
#macro AS_IDLE 2
#macro AS_HIT 3
#macro AS_DESTROY 4

switch (state) {
    case AS_IDLE:
        var anim_speed = 1/4;
        var anim_length = 8;
        switch (charge) {
            case -1:
                draw_sprite(sprite_get("negative"), floor(state_timer * anim_speed) mod anim_length, x, y);
                break;
            case 1:
                draw_sprite(sprite_get("positive"), floor(state_timer * anim_speed) mod anim_length, x, y);
                break;
        }
        break;

    case AS_SPAWN_TRANSITION:
    case AS_HIT:
        var anim_speed = 1/4;
        switch (charge) {
            case -1:
                draw_sprite(sprite_get("negative_open"), floor(state_timer * anim_speed), x, y);
                break;
            case 1:
                draw_sprite(sprite_get("positive_open"), floor(state_timer * anim_speed), x, y);
                break;
        }
        break;
}

//Acorn destroy draw
if (state == 4) {
    var anim_speed = 1/2;
    switch (charge) {
        case -1:
            draw_sprite(sprite_get("negative_close"), floor(state_timer * anim_speed), x, y);
            break;
        case 1:
            draw_sprite(sprite_get("positive_close"), floor(state_timer * anim_speed), x, y);
            break;
    }

    draw_sprite_ext(sprite_get("acorn"), 0, x, y, spr_dir, 1, 0, c_white, 1);
}