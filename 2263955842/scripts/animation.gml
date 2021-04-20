switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        //image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

/*
// do the grazeBox stuff here since the graze box will be a frame behind the hurtbox otherwise
#macro GRAZE_COOLDOWN 15
if(grazeBox != noone){
    with grazeBox {
        /*
        sprite_index = player_id.hurtboxID.sprite_index;
        image_index = player_id.image_index;
        //  *
        sprite_index = sprite_get("grazebox");
        depth = player_id.depth-1;
        spr_dir = player_id.spr_dir;

        /*
        if(player_id.state == PS_PARRY && player_id.window == 1){
            image_xscale = 1.8;
            image_yscale = 1.8;
        } else {
            image_xscale = 1.6;
            image_yscale = 1.6;
        }
        //  *

        x = player_id.x;
        var yOffset = -30//((sprite_get_bbox_bottom(sprite_index)-sprite_get_bbox_top(sprite_index))*image_yscale-(sprite_get_bbox_bottom(sprite_index)-sprite_get_bbox_top(sprite_index)))/2;
        y = player_id.y+yOffset;
    }

    if(grazeBox.grazeCooldown <= 0){
        if(state_cat != SC_HITSTUN){
            with pHitBox {
                if(player_id != other || can_hit_self && (!(orig_player == other.player && attack == AT_NSPECIAL) || hitbox_timer > 5)){
                    if(can_hit[other.player] && hit_priority){
                        if(place_meeting(x, y, other.grazeBox)){
                            other.grazeMeter+=0.25;
                            other.grazeBox.grazeCooldown = GRAZE_COOLDOWN;
                            break;
                        }
                    }
                }
            }
        }
    } else {
        grazeBox.grazeCooldown--;
    }
}

if grazeMeter > 5 {
    grazeMeter = 5
}

*/

if (!has_rune("A"))
{
    if (state == PS_DASH_START) or (state == PS_DASH) 
    {
        hurtboxID.sprite_index = sprite_get("dash_hurtbox");
    }
    if( state == PS_IDLE) or ( state == PS_WALK) or (state == PS_JUMPSQUAT) or (state == PS_DASH_STOP) or (state == PS_DASH_TURN)  or (state == PS_IDLE_AIR)
    {
        hurtboxID.sprite_index = sprite_get("hurtbox");
    }
}

if (has_rune("O"))
{
    if (state_cat == SC_HITSTUN)
    {
        invincible = true;
        invince_time = 1;
    }
    
}
/*
if (has_rune("O"))
{
    if (state_cat == SC_HITSTUN)
    {
        hurtboxID.sprite_index = sprite_get("nothing");
       
       var col = get_player_color(player);
       for (var i = 0; i < 8; i += 1)
       {
           var r_val = get_color_profile_slot_r(col, i)
           var g_val = get_color_profile_slot_g(col, i)
           var b_val = get_color_profile_slot_b(col, i)
       
            
            set_character_color_slot(i, r_val, g_val, b_val, 0.5)
       }
        
    }
    else if (state_cat == SC_AIR_NEUTRAL) or (state_cat == SC_AIR_COMMITTED)
    {
        hurtboxID.sprite_index = sprite_get("hurtbox");
    }
    
    if (state_cat != SC_HITSTUN)
    {
        var col = get_player_color(player);
       for (var i = 0; i < 8; i += 1)
       {
           var r_val = get_color_profile_slot_r(col, i)
           var g_val = get_color_profile_slot_g(col, i)
           var b_val = get_color_profile_slot_b(col, i)
       
            
            set_character_color_slot(i, r_val, g_val, b_val, 1)
       }
    }
}
*/
    



if (state == PS_IDLE_AIR) and ((prev_state == PS_AIR_DODGE) or (prev_state == PS_ATTACK_AIR))
{
    image_index = 5;
}



if (is_fumo)
{
    sprite_index = sprite_get("fumo")
}


