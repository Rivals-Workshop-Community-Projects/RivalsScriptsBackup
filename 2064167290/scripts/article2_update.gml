//article2_update


switch (state)
{
    case 0:
        if (image_index < 1)
        {
            var image_spd = entrance_spd;
        }
        else
        {
            var image_spd = 0;
        }
        var sprite = sprite_get("ustrong_pale_entrance");
    break;
    case 1:
        var image_spd = 0.1;
        var sprite = sprite_get("ustrong_pale_looking");
    break;
    case 2:
        if (image_index < 1){
        var image_spd = 0.1;
        }
        else
        {
            var image_spd = 0;
        }
        var sprite = sprite_get("ustrong_pale_hurt");
    break;
    case 3:
        var image_spd = 0.2;
        var sprite = sprite_get("pale_bounce_right");
    break;
    case 4:
        var image_spd = 0.2;
        var sprite = sprite_get("pale_solotaunt");
    break;
}
state_timer += 1;


if (sprite_index != sprite)
{
    sprite_index = sprite;
}


image_index += image_spd;


if (state == 0) and (state_timer >= 7)
{
    state = 1;
    state_timer = 0;
}
if (state == 2) and (state_timer >= 35)
{
    if (player_id.runeN)
    {
        state = 0;
        state_timer = 0;
        image_index = 1;
    }
    else
    {
        state = 1;
    }
}
if (state == 3) and (state_timer > 29)
{
    state = 1;
}
if (state == 4) and (state_timer > 54)
{
    state = 1;
}
// rune N

if (player_id.runeN)
{
    var thisobjectowner = player_id;
    var need_hitbox = false;
    
    
    if (state == 1) and (state_timer > 20)
    {
       
        with (oPlayer)
        {
            if (player != thisobjectowner.player)
            {
                if (place_meeting(x,y,other)) and (state == PS_HITSTUN) and (state_timer > 3)
                {
                    var need_hitbox = true;
                }
            }
            
        }
    }
    
    
    if (need_hitbox)
    {
        state = 3;
        state_timer = 0;
        create_hitbox( AT_USTRONG, 5, floor(x), floor(y) - 60 );
    }
    
    /*
    if (player_id.state == PS_FIRST_JUMP)
    {
        state = 3;
    }
    */
    
}



if (!player_id.runeN) or ((player_id.attack == AT_USTRONG) and (player_id.state == PS_ATTACK_GROUND))
{
    if (state == 1)  and (state_timer >= 36)
    {
        if (spr_dir == player_id.spr_dir)
        {
            spawn_hit_fx( x, y,leaving_effect);
        }
        else
        {
            spawn_hit_fx( x, y,leaving_effect_mirror);
        }
        
        
        
        player_id.timer_before_swipe = 14;
        
        
        instance_destroy(self);
    }
}






