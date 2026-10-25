//animation.gml

switch state{
    case PS_SPAWN:
        if intro_frame < intro_length{
            sprite_index = sprite_get("intro");
            image_index = intro_frame;
            
            /*if intro_frame == intro_length - 4{
                if !blackout_timer blackout_timer = 15;
                else if blackout_timer == 1 intro_frame += 1/4;
            }
            else */intro_frame += 1/4;
        }
    break;
    case PS_WALK:
        if attack_invince{
            force_depth = true;
            depth = 5;
            //sprite_index = sprite_get("walk_empty");
            
            //image_alpha = walkTrans;
            //draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_black, walkTrans);
        }
    break;
    case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
        switch attack{
            case AT_DSPECIAL:
                if window == 5{
                    var dir_mod = 2;
                    var true_ang = dspecAngle;
                    while true_ang < 0 true_ang += 360;
                    if true_ang >= 45 && true_ang < 135 dir_mod = 0;
                    else if true_ang >= 135 && true_ang < 225 dir_mod = 3;
                    else if true_ang >= 225 && true_ang < 315 dir_mod = 1;
                    
                    image_index += dir_mod * 5;
                }
            break;
            case AT_USPECIAL:
                //if floor(image_index) == 2 blackout_timer = 2;
            break;
        }
    break;
}

if (sprite_index == wsleep_compat_spr && !(state_timer mod 24) && !hitstop) {
    var sleep = spawn_hit_fx(x + 24*spr_dir, y - 48, vfx_sleep);
    var slp_drift = 1;
    sleep.spr_dir = 1;
    sleep.hsp = slp_drift*spr_dir;
    sleep.vsp = -slp_drift;
}