//post-draw

var cubeSprite = undefined;
if holdingCube {
    switch state {
        case PS_ATTACK_GROUND:
        switch attack {
            case AT_DTHROW:
            cubeSprite = sprite_get("dthrow_cube");
            break;
            
            case AT_UTHROW:
            cubeSprite = sprite_get("uthrow_cube");
            break;
            
            case AT_FTHROW:
            cubeSprite = sprite_get("fthrow_cube");
            break;
            
            case AT_NSPECIAL:
            cubeSprite = sprite_get("pickup_cube");
            break;
        }
        break;
        
        case PS_ATTACK_AIR:
        switch attack {
            case AT_DTHROW:
            cubeSprite = sprite_get("dthrow_air_cube");
            break;
            
            case AT_UTHROW:
            cubeSprite = sprite_get("uthrow_air_cube");
            break;
            
            case AT_FTHROW:
            cubeSprite = sprite_get("fthrow_air_cube");
            break;
            
            case AT_NSPECIAL:
            cubeSprite = sprite_get("pickup_cube");
            break;
        }
        break;
        
        case PS_IDLE:
        cubeSprite = sprite_get("idle_block_cube");
        break;
        
        case PS_WALK:
        case PS_DASH_START:
        case PS_DASH:
        case PS_DASH_STOP:
        cubeSprite = sprite_get("walk_block_cube");
        break;
        
        case PS_WALK_TURN:
        case PS_DASH_TURN:
        cubeSprite = sprite_get("walkturn_block_cube");
        break;
        
        case PS_JUMPSQUAT:
        cubeSprite = sprite_get("jumpstart_block_cube");
        break;
        
        case PS_FIRST_JUMP:
        case PS_IDLE_AIR:
        cubeSprite = sprite_get("jump_block_cube");
        break;
        
        case PS_LAND:
        cubeSprite = sprite_get("land_block_cube");
        break;
        
        case PS_HITSTUN:
        case PS_TUMBLE:
        cubeSprite = sprite_get("hurt_block_cube");
        break;
        
        case PS_HITSTUN_LAND:
        cubeSprite = sprite_get("hurtground_block_cube");
        break;
    }
}

var heldColour = c_red;
if heldExplode && heldExplodeTimer < heldExplodeThreshhold {
    if get_gameplay_time() mod 30 > 15 {
        heldColour = c_yellow;
    }
}

if cubeSprite != undefined {
    draw_sprite_ext(cubeSprite, image_index, x, y, spr_dir, 1, 0, c_white, 1);
    if heldPower >= compactThreshhold {
        draw_sprite_ext(cubeSprite, image_index, x, y, spr_dir, 1, 0, heldColour, 100/(heldExplodeTimer+1));
    }
}

with pHitBox {
    if player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1 {
        var cubeColour = c_red;
        if willExplode && explodeTimer < explodeThreshhold {
            if get_gameplay_time() mod 30 > 15 {
                cubeColour = c_yellow;
            }
        }
        var colourPower = 0;
        if power >= player_id.compactThreshhold {
            colourPower = 100/(explodeTimer+1);
        }
        with other {
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y, other.spr_dir, 1, 0, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y, other.spr_dir, 1, 0, cubeColour, colourPower);
            if other.in_hitpause {
                draw_sprite_ext(sprite_get("block_grey"), other.image_index, other.x, other.y, other.spr_dir, 1, 0, c_white, 1);
            }
            
        }
    }
}

//fstrong
if attack == AT_FSTRONG && window == 3 {
    var imgindex = floor(window_timer/5)
    if imgindex <= 3 {
        draw_sprite_ext(sprite_get("fstrong_vfx"), imgindex, x, y, spr_dir, 1, 0, c_white, 1)
    }
}