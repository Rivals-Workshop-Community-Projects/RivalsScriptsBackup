//
if piece != "P" {
    switch (state){
        case PS_IDLE: sprite_index = sprite_get(piece + "idle") break;
        case PS_CROUCH: sprite_index = sprite_get(piece + "crouch") break;
        case PS_WALK_TURN: sprite_index = sprite_get(piece + "walkturn") break;
        case PS_DASH_START: sprite_index = sprite_get(piece + "dashstart") break;
        case PS_DASH_TURN: sprite_index = sprite_get(piece + "dashturn") break;
        case PS_DASH_STOP: sprite_index = sprite_get(piece + "dashstop") break;
        case PS_FIRST_JUMP: case PS_IDLE_AIR: sprite_index = sprite_get(piece + "jump") break;
        case PS_JUMPSQUAT: sprite_index = sprite_get(piece + "jumpstart") break;
        case PS_LAND: sprite_index = sprite_get(piece + "land") break;
        case PS_WAVELAND: sprite_index = sprite_get(piece + "waveland") break;
        case PS_PRATLAND: case PS_LANDING_LAG: sprite_index = sprite_get(piece + "landinglag") break;
        case PS_DOUBLE_JUMP: sprite_index = sprite_get(piece + "doublejump") break;
        case PS_ROLL_BACKWARD: case PS_TECH_BACKWARD: sprite_index = sprite_get(piece + "roll_backward") break;
        case PS_ROLL_FORWARD: case PS_TECH_FORWARD: sprite_index = sprite_get(piece + "roll_forward") break;
        case PS_AIR_DODGE: sprite_index = sprite_get(piece + "airdodge") break;
        case PS_PARRY_START: case PS_PARRY: sprite_index = sprite_get(piece + "parry") break;
        case PS_PRATFALL: sprite_index = sprite_get(piece + "idle") break;
        case PS_TECH_GROUND: sprite_index = sprite_get(piece + "land") break;
        case PS_HITSTUN_LAND: case PS_HITSTUN: case PS_TUMBLE: case PS_WRAPPED:
        if sprite_index == sprite_get("hurt") sprite_index = sprite_get(piece + "hurt")
        else if sprite_index == sprite_get("uphurt") sprite_index = sprite_get(piece + "uphurt")
        else if sprite_index == sprite_get("downhurt") sprite_index = sprite_get(piece + "downhurt")
        else if sprite_index == sprite_get("bighurt") sprite_index = sprite_get(piece + "bighurt")
        else if sprite_index == sprite_get("bouncehurt") sprite_index = sprite_get(piece + "bouncehurt")
        else if sprite_index == sprite_get("hurtground") sprite_index = sprite_get(piece + "hurtground")
        else if sprite_index == sprite_get("spinhurt") {
            if piece == "Q" || piece == "K" || piece == "B" {
                sprite_index = sprite_get(piece + "hurt")
            } else {
                sprite_index = sprite_get(piece + "spinhurt")
            }
        }
        break;
        case PS_WALK:
        var frames = 2;
        var frame_dur = 12;
        sprite_index = sprite_get(piece + "walk")
        image_index = floor((state_timer mod (frames * frame_dur))/frame_dur) 
        break;
        case PS_DASH:
        var frames = 6;
        var frame_dur = 4;
        sprite_index = sprite_get(piece + "dash")
        image_index = floor((state_timer mod (frames * frame_dur))/frame_dur) 
        break;
        case PS_WALL_JUMP: case PS_WALL_TECH:
        var frames = 6;
        var frame_dur = 6;
        sprite_index = sprite_get(piece + "doublejump")
        image_index = floor((state_timer mod (frames * frame_dur))/frame_dur) 
        break;
    }
} else {
    switch (state){
        case PS_TECH_BACKWARD: sprite_index = sprite_get("roll_backward") break;
        case PS_TECH_FORWARD: sprite_index = sprite_get("roll_forward") break;
        case PS_PRATFALL: sprite_index = sprite_get("idle") break;
        case PS_TECH_GROUND: sprite_index = sprite_get("land") break;
        case PS_WALL_JUMP: case PS_WALL_TECH:
        var frames = 6;
        var frame_dur = 6;
        sprite_index = sprite_get("doublejump")
        image_index = floor((state_timer mod (frames * frame_dur))/frame_dur) 
        break;
    }
}