//article_platform_update
// Geyser

if (last_state != state)
{
    last_state = state;
    state_timer = 0;
}
state_timer += 1;


switch(state)
{
    case 0:
    
    var x_true = x_rising;
    var y_true = y_rising;
    
        if(y_rising > player_id.y)
        {
            y_rising -= rising_spd
            if (y_rising <= player_id.y)
            {
                y_rising = player_id.y;
                state = 1;
                y = y_rising;
                x = x_rising;
                
                with(player_id)
                {
                    window = 3;
                    window_timer = 0;
                }
            }
        }
    break;
    case 1:
    
        var x_true = x;
        var y_true = y;
    
        if (state_timer > 136)
        {
            if !(has_rune("E"))
            {
                if (state_timer % 3 != 0)
                {
                    vsp = 1;
                }
                else
                {
                    vsp = 0;
                }
            }
        }
        if (collision_circle(x - 40,y - 2,1,asset_get("par_block"),false,true)) and (collision_circle(x + 40,y - 2,1,asset_get("par_block"),false,true))
        {
            destroyed = true;
        }
        
        if (y > room_height + 200)
        {
            destroyed = true;
        }
    break;
}

var nitori_url = player_id.url;
with(oPlayer)
{
    if (collision_rectangle(other.x - 40,other.y,other.x + 40, room_height + 200,self,false,false))
    {
        if (!inside_water)
        {
            inside_water = true;
           // sound_play(sound_get("enter_water"))
        }
        
       // burn_timer = 150;
       
       if (has_rune("M"))
       {
           if (self != other.player_id)
           {
                burned = true;
                burnt_id = other.player_id;
                if (!burned)
                {
                    burn_timer = 0;
                }
                
           }
       }
        
        if ((url == nitori_url) and ((down_down) or (!free))) or (state == PS_AIR_DODGE) or (state == PS_RESPAWN) or (invincible)
        {
            
        }
        else if (free)
        {
            var max_s = (-15 - has_rune("F") * 8) * (gravity_speed + 0.3)
            
            
            if (vsp > max_s)
            {
                vsp -= 1 + has_rune("F") * 2;
            }
        }
        
         if (url == nitori_url) and (up_down) and (vsp > -1) and (free)
         {
             vsp -= 0.5;
         }
         
         if (url == nitori_url) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) and (attack == AT_DSPECIAL)
         {
             if(vsp < -8)
             {
                vsp = -8;
             }
         }
    }
    else
    {
        inside_water = false;
    }
}


image_index += image_spd;


if (destroyed)
{
    var y_pos = y;
    
    with(player_id)
    {
        spawn_hit_fx( other.x, other.y, geyser_destroy_fx)
        
        while(y_pos < room_height)
        {
            spawn_hit_fx( other.x, y_pos, water_column_destroy_fx)
            y_pos += sprite_get_height(sprite_get("water_column"));
        }
    }
    instance_destroy(self);
}






