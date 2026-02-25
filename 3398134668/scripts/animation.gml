// animation sprites and etc

if (plus_active = true)
{
    switch (state) 
    {
        case PS_IDLE:
        {
            sprite_index = sprite_get("z_idle");
            image_index = state_timer*idle_anim_speed;
        }
        break;
        case PS_CROUCH:
        {
            sprite_index = sprite_get("z_crouch");
        }
        break;
        case PS_DASH_START:
        {
            sprite_index = sprite_get("z_dashstart");
        }
        break;
        case PS_DASH_STOP:
        {
            sprite_index = sprite_get("z_dashstop");
        }
        break;
        case PS_DASH_TURN:
        {
            sprite_index = sprite_get("z_dashturn");
        }
        break;
        case PS_DASH:
        {
            sprite_index = sprite_get("z_dash");
            image_index = state_timer*dash_anim_speed;
        }
        break;
        case PS_WALK:
        {
            sprite_index = sprite_get("z_walk");
        }
        break;
        case PS_WALK_TURN:
        {
            sprite_index = sprite_get("z_walkturn");
        }
        break;
        case PS_JUMPSQUAT:
        {
            sprite_index = sprite_get("z_jumpstart");
        }
        break;
        case PS_FIRST_JUMP:
        {
            sprite_index = sprite_get("z_jump");
        }
        break;
        case PS_DOUBLE_JUMP:
        {
            sprite_index = sprite_get("z_doublejump");
        }
        break;
        case PS_TUMBLE:
        {
            sprite_index = sprite_get("z_pratfall");
        }
        break;
        case PS_IDLE_AIR:
        {
            sprite_index = sprite_get("z_pratfall");
            image_index = state_timer*idle_anim_speed;
        }
        break;
        case PS_WALL_JUMP:
        {
            sprite_index = sprite_get("z_walljump");
        }
        break;
        case PS_PRATFALL:
        {
            sprite_index = sprite_get("z_pratfall");
        }
        break;
        case PS_LAND:
        {
            sprite_index = sprite_get("z_land");
        }
        break;
        case PS_LANDING_LAG:
        {
            sprite_index = sprite_get("z_landinglag");
        }
        break;
        case PS_ROLL_FORWARD:
        {
            sprite_index = sprite_get("z_roll_forward");
        }
        break;
        case PS_ROLL_BACKWARD:
        {
            sprite_index = sprite_get("z_roll_backward");
        }
        break;
        case PS_TECH_GROUND:
        {
            sprite_index = sprite_get("z_tech");
        }
        break;
        case PS_WAVELAND:
        {
            sprite_index = sprite_get("z_waveland");
        }
        break;
        case PS_PARRY:
        {
            sprite_index = sprite_get("z_parry");
        }
        break;
        case PS_PARRY_START:
        {
            sprite_index = sprite_get("z_parry");
        }
        break;
        case PS_AIR_DODGE:
        {
            sprite_index = sprite_get("z_airdodge");
        }
        break;
        case PS_ATTACK_AIR:
        {
            switch (attack) 
            {
                case 49:
                {
                    sprite_index = sprite_get("z_azula_ultimate");
                }
                break;
                case AT_NAIR:
                {
                    sprite_index = sprite_get("z_nair");
                }
                break;
                case AT_FAIR:
                {
                    sprite_index = sprite_get("z_fair");
                }
                break;
                case AT_BAIR:
                {
                    sprite_index = sprite_get("z_bair");
                }
                break;
                case AT_UAIR:
                {
                    sprite_index = sprite_get("z_uair");
                }
                break;
                case AT_FSTRONG:
                {
                    sprite_index = sprite_get("fstrong");
                }
                break;
                case AT_DAIR:
                {
                    sprite_index = sprite_get("z_dair");
                }
                break;
                case AT_FSPECIAL_AIR:
                {
                    sprite_index = sprite_get("z_fspecial");
                }
                break;
                case AT_DSPECIAL:
                {
                    sprite_index = sprite_get("z_dspecial_air");
                }
                break;
                case AT_NSPECIAL_AIR:
                {
                    sprite_index = sprite_get("z_nspecial");
                }
                break;
            }
        }
        break;
        case PS_ATTACK_GROUND:
        {
            switch (attack) 
            {
                case 49:
                {
                    sprite_index = sprite_get("z_azula_ultimate");
                }
                break;
                case AT_TAUNT:
                {
                    sprite_index = sprite_get("z_taunt");
                }
                break;
                case AT_JAB:
                {
                    sprite_index = sprite_get("z_jab");
                }
                break;
                case AT_FTILT:
                {
                    sprite_index = sprite_get("z_ftilt");
                }
                break;
                case AT_FSTRONG:
                {
                    sprite_index = sprite_get("z_fstrong2");
                }
                break;
                case AT_DTILT:
                {
                    sprite_index = sprite_get("z_dtilt");
                }
                break;
                case AT_DSTRONG:
                {
                    sprite_index = sprite_get("z_dstrong2");
                }
                break;
                case AT_UTILT:
                {
                    sprite_index = sprite_get("z_utilt");
                }
                break;
                case AT_USTRONG:
                {
                    sprite_index = sprite_get("z_ustrong");
                }
                break;
                case AT_DATTACK:
                {
                    sprite_index = sprite_get("z_dattack");
                }
                break;
                case AT_FSPECIAL:
                {
                    sprite_index = sprite_get("z_fspecial");
                }
                break;
                case AT_NSPECIAL:
                {
                    sprite_index = sprite_get("z_nspecial");
                }
                break;
                case AT_DSPECIAL:
                {
                    sprite_index = sprite_get("z_dspecial");
                }
                break;
                case AT_USPECIAL:
                {
                    sprite_index = sprite_get("z_uspecial");
                }
                break;
            }
        }
        break;
    }
}
else
{
    switch (state) 
    {
        case PS_IDLE:
        {
            sprite_index = sprite_get("idle");
            image_index = state_timer*idle_anim_speed;
        }
        break;
        case PS_CROUCH:
        {
            sprite_index = sprite_get("crouch");
        }
        break;
        case PS_DASH_START:
        {
            sprite_index = sprite_get("dashstart");
        }
        break;
        case PS_DASH_STOP:
        {
            sprite_index = sprite_get("dashstop");
        }
        break;
        case PS_DASH_TURN:
        {
            sprite_index = sprite_get("dashturn");
        }
        break;
        case PS_DASH:
        {
            sprite_index = sprite_get("dash");
            image_index = state_timer*dash_anim_speed;
        }
        break;
        case PS_WALK:
        {
            sprite_index = sprite_get("walk");
        }
        break;
        case PS_WALK_TURN:
        {
            sprite_index = sprite_get("walkturn");
        }
        break;
        case PS_JUMPSQUAT:
        {
            sprite_index = sprite_get("jumpstart");
        }
        break;
        case PS_FIRST_JUMP:
        {
            sprite_index = sprite_get("jump");
        }
        break;
        case PS_DOUBLE_JUMP:
        {
            sprite_index = sprite_get("doublejump");
        }
        break;
        case PS_TUMBLE:
        {
            sprite_index = sprite_get("pratfall");
        }
        break;
        case PS_IDLE_AIR:
        {
            sprite_index = sprite_get("pratfall");
            image_index = state_timer*idle_anim_speed;
        }
        break;
        case PS_WALL_JUMP:
        {
            sprite_index = sprite_get("walljump");
        }
        break;
        case PS_PRATFALL:
        {
            sprite_index = sprite_get("pratfall");
        }
        break;
        case PS_LAND:
        {
            sprite_index = sprite_get("land");
        }
        break;
        case PS_LANDING_LAG:
        {
            sprite_index = sprite_get("landinglag");
        }
        break;
        case PS_ROLL_FORWARD:
        {
            sprite_index = sprite_get("roll_forward");
        }
        break;
        case PS_ROLL_BACKWARD:
        {
            sprite_index = sprite_get("roll_backward");
        }
        break;
        case PS_TECH_GROUND:
        {
            sprite_index = sprite_get("tech");
        }
        break;
        case PS_WAVELAND:
        {
            sprite_index = sprite_get("waveland");
        }
        break;
        case PS_PARRY:
        {
            sprite_index = sprite_get("parry");
        }
        break;
        case PS_PARRY_START:
        {
            sprite_index = sprite_get("parry");
        }
        break;
        case PS_AIR_DODGE:
        {
            sprite_index = sprite_get("airdodge");
        }
        break;
        case PS_ATTACK_AIR:
        {
            switch (attack) 
            {
                case 49:
                {
                    sprite_index = sprite_get("azula_ultimate");
                }
                break;
                case AT_NAIR:
                {
                    sprite_index = sprite_get("nair");
                }
                break;
                case AT_FAIR:
                {
                    sprite_index = sprite_get("fair");
                }
                break;
                case AT_BAIR:
                {
                    sprite_index = sprite_get("bair");
                }
                break;
                case AT_UAIR:
                {
                    sprite_index = sprite_get("uair");
                }
                break;
                case AT_DAIR:
                {
                    sprite_index = sprite_get("dair");
                }
                break;
                case AT_FSPECIAL_AIR:
                {
                    sprite_index = sprite_get("fspecial");
                }
                break;
                case AT_DSPECIAL_AIR:
                {
                    sprite_index = sprite_get("dspecial_air");
                }
                break;
                case AT_NSPECIAL_AIR:
                {
                    sprite_index = sprite_get("nspecial");
                }
                break;
            }
        }
        break;
        case PS_ATTACK_GROUND:
        {
            switch (attack) 
            {
                case 49:
                {
                    sprite_index = sprite_get("azula_ultimate");
                }
                break;
                case AT_TAUNT:
                {
                    sprite_index = sprite_get("taunt");
                }
                break;
                case AT_JAB:
                {
                    sprite_index = sprite_get("jab");
                }
                break;
                case AT_FTILT:
                {
                    sprite_index = sprite_get("ftilt");
                }
                break;
                case AT_FSTRONG:
                {
                    sprite_index = sprite_get("fstrong");
                }
                break;
                case AT_DTILT:
                {
                    sprite_index = sprite_get("dtilt");
                }
                break;
                case AT_DSTRONG:
                {
                    sprite_index = sprite_get("dstrong");
                }
                break;
                case AT_UTILT:
                {
                    sprite_index = sprite_get("utilt");
                }
                break;
                case AT_USTRONG:
                {
                    sprite_index = sprite_get("ustrong");
                }
                break;
                case AT_DATTACK:
                {
                    sprite_index = sprite_get("dattack");
                }
                break;
                case AT_FSPECIAL:
                {
                    sprite_index = sprite_get("fspecial");
                }
                break;
                case AT_DSPECIAL:
                {
                    sprite_index = sprite_get("dspecial");
                }
                break;
                case AT_NSPECIAL:
                {
                    sprite_index = sprite_get("nspecial");
                }
                break;
                case AT_USPECIAL:
                {
                    sprite_index = sprite_get("uspecial");
                }
                break;
            }
        }
        break;
    }
}

if wallSlide && has_rune("A"){
    sprite_index = sprite_get("wall_slide");
    image_index = 0;
}

if attack == 49 && window == 1{
    with hurtboxID sprite_index = sprite_get("azula_ultimate_hurt");
}