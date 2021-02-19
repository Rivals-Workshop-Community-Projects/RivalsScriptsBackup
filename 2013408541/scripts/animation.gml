if (state == PS_SPAWN) {
    if (introTimer < 13 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}


//var nspecial_effect = spawn_hit_fx(x, y, hit_fx_create( sprite_get( "nspecial_perfect" ), 50));


if (attack == AT_NSPECIAL and nspec_charge >= 60 and window == 2 and window_timer == 1 and nspecial_perfect == false and waryowl >= 1000)
{
    shader_start();
    //spawn_hit_fx( x, y, hit_fx_create( sprite_get( "nspecial_perfect" ), 50 ));
    var nspecial_effect = spawn_hit_fx(x, y, hit_fx_create( sprite_get( "nspecial_perfect" ), 60));
    nspecial_effect.depth = depth - 3;
    if has_rune("M")
    {
        var abyss_portal = spawn_hit_fx(x + 156 * spr_dir, y, hit_fx_create( sprite_get( "abyss_portal" ), 60));
        //abyss_portal.depth = depth - 3;
    }
    //draw_sprite(sprite_get("nspecial_perfect"), get_gameplay_time() * .5, x, y);
    nspecial_perfect = true
    shader_end();
}

/*if attack == AT_NSPECIAL and window == 1 and window_timer >= 19 and special_down
{
    sprite_index = sprite_get("nspecial_charge");
    image_index = floor(image_number*state_timer/(image_number*3.5)); 
}*/

if (helmet == 1)
{
    switch (state)
    {
        case PS_IDLE:
        {
            sprite_index = sprite_get("idle2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_WALK:
        {
            sprite_index = sprite_get("walk2");
            image_index = floor(image_number*state_timer/(image_number*6));
        }
        break;
        case PS_WALK_TURN:
        {
            sprite_index = sprite_get("walkturn2");
            image_index = floor(image_number*state_timer/(image_number*2.5)); 
        }
        break;
        case PS_DASH:
        {
            sprite_index = sprite_get("dash2");
            image_index = floor(image_number*state_timer/(image_number*4));
        }
        break;
        case PS_DASH_START:
        {
            sprite_index = sprite_get("dashstart2");
            image_index = floor(image_number*state_timer/(image_number*4));
        }
        break;
        case PS_DASH_STOP:
        {
            sprite_index = sprite_get("dashstop2");
            image_index = floor(image_number*state_timer/(image_number*2));
        }
        break;
        case PS_DASH_TURN:
        {
            sprite_index = sprite_get("dashturn2");
            image_index = floor(image_number*state_timer/(image_number*4));
        }
        break;
        case PS_CROUCH:
        {
            sprite_index = sprite_get("crouch2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_JUMPSQUAT:
        {
            sprite_index = sprite_get("jumpstart2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_FIRST_JUMP:
        {
            sprite_index = sprite_get("jump2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_DOUBLE_JUMP:
        {
            sprite_index = sprite_get("doublejump2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_LAND:
        {
            sprite_index = sprite_get("land2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_LANDING_LAG:
        {
            sprite_index = sprite_get("landinglag2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PRATFALL:
        {
            sprite_index = sprite_get("pratfall2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PRATLAND:
        {
            sprite_index = sprite_get("waveland2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_WAVELAND:
        {
            sprite_index = sprite_get("waveland2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_IDLE_AIR:
        {
            sprite_index = sprite_get("pratfall2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PARRY_START:
        {
            sprite_index = sprite_get("parry2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PARRY:
        {
            sprite_index = sprite_get("parry2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_HITSTUN:
        {
            sprite_index = sprite_get("hurt2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_HITSTUN_LAND:
        {
            sprite_index = sprite_get("waveland2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_TUMBLE:
        {
            sprite_index = sprite_get("bouncehurt2");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_ROLL_BACKWARD:
        {
            sprite_index = sprite_get("roll_backward2");
            image_index = floor(image_number*state_timer/(image_number*3.5)); 
        }
        break;
        case PS_ROLL_FORWARD:
        {
            sprite_index = sprite_get("roll_forward2");
            image_index = floor(image_number*state_timer/(image_number*3.5)); 
        }
        break;
        case PS_AIR_DODGE:
        {
            sprite_index = sprite_get("roll_forward2");
            image_index = floor(image_number*state_timer/(image_number*3.5)); 
        }
        break;
    }
}