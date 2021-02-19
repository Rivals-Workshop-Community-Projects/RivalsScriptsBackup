//animation

if mounted {
    switch state {
        case PS_WALK:
            spr_custom = ride_spr;
            break;
        case PS_AIR_DODGE:
            spr_custom = 0;
            mounted_sprite = sprite_get("airdodge");
            break;
        default:
            spr_custom = 0;
            mounted_sprite = sprite_index;
            break;
    }
    /*if last_hurtbox != hurtboxID {
        hurtboxID.y += mounted_offset;
        last_hurtbox = hurtboxID;
        with asset_get("pHitBox") {
            if player_id == other.id {
                y_pos += other.mounted_offset;
            }
        }
    }*/
    if spr_custom != 0 mounted_sprite = spr_custom;
    mounted_index = image_index;
    sprite_index = asset_get("empty_sprite");
    image_index = mounted_index;
    //Load Array
    /*
    switch state {
        case PS_DASH_TURN:
            mounted_xoffset = 68;
            break;
        case PS_CROUCH:
        case PS_HITSTUN:
        case PS_TECH_GROUND:
            mounted_xoffset = 64;
            break;
        case PS_ROLL_BACKWARD:
        case PS_ROLL_FORWARD:
        case PS_TECH_BACKWARD:
        case PS_TECH_FORWARD:
            mounted_xoffset = 62;
            break;
        case PS_WALK:
        case PS_DASH:
        case PS_DASH_START:
        case PS_DASH_STOP:
        case PS_FIRST_JUMP:
        case PS_JUMPSQUAT:
            mounted_xoffset = 56;
            break;
        case PS_IDLE:
            mounted_xoffset = 52;
            break;
        case PS_PARRY_START:
        case PS_PARRY:
            mounted_xoffset = 48;
            break;
        case PS_WALK_TURN:
            mounted_xoffset = 46;
            break;
        case 5:
        case 6:
            switch attack {
                case AT_DATTACK:
                case AT_DTILT:
                case AT_NAIR:
                case AT_FAIR:
                case AT_BAIR:
                case AT_UAIR:
                case AT_DAIR:
                case AT_USTRONG:
                case AT_DSTRONG:
                    mounted_xoffset = 56;
                    break;
                case AT_UTILT:
                case AT_JAB:
                case AT_FSTRONG:
                    mounted_xoffset = 52;
                    break;
            }
        
        }*/
}