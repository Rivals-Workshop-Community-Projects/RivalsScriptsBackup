image_angle -= 2;
state_timer ++;
exist_timer ++;

image_xscale = 1;
image_yscale = 1;

if((player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && state != 3)  
    {state = 3; state_timer = 0;}

if(transporting)
{
    var can_go = true;
    with(obj_article1)
    {
        if(player_id.url == other.player_id.url && collision_circle(other.x,other.y, 12, self, true, false))
            can_go = false;
    }
    with(oPlayer)
    {
        if(collision_circle(other.x,other.y, 18, self, true, false))
            can_go = false;
    }
    with(pHitBox)
    {
        if(collision_circle(other.x,other.y, 18, self, true, false) && unbashable && type == 2)
            can_go = false;
    }
    transporting = !can_go;
}

switch(state)
{
    case 0://Spawn
        image_xscale = ease_quadOut( 0, 1, state_timer, 30)
        image_yscale = image_xscale;

        with(obj_article2)
        {
            if(player_id.url == other.player_id.url)
            {
                if(position_meeting(x-8,y,other))
                {  if(!place_meeting(x,y,asset_get("par_block"))) x += 8; else other.x -= 8;}
                if(position_meeting(x+8,y,other))
                {  if(!place_meeting(x,y,asset_get("par_block"))) x -= 8; else other.x += 8;}
            }
        }

        if(state_timer >= 30)
        {   state_timer = 0; state ++; }
        break;
    case 1://Be kickable and hittable
        with(obj_article1)
        {
            if(player_id.url == other.player_id.url && !other.transporting && collision_circle(other.x,other.y, 12, self, true, false))
            {   other.transport_id = id;  other.transport_bomb = true;}
        }
        with(oPlayer)
        {
            if(collision_circle(other.x,other.y, 18, self, true, false) && initial_invince <= 0 && !other.transporting)
             {   other.transport_id = id;  other.transport_bomb = false;}
        }
        with(pHitBox)
        {
            if(collision_circle(other.x,other.y, 18, self, true, false) && !other.transporting && unbashable && type == 2)
            {   other.transport_id = id;  other.transport_bomb = false;}
        }
        if(transport_id != -1 && instance_exists(transport_id))
        {
            with(obj_article2)
            {
                if(player_id == other.player_id)
                {
                    if(id != other.id && state == 1)
                    {
                        sound_play(sound_get("TB_teleport"), false, noone, 0.6, 1.2)
                        spawn_hit_fx(x, y, 195);
                        other.transport_id.x = x;
                        other.transport_id.y = y;
                        other.transport_id = -1;
                        other.transporting = true;
                        other.state = 2;
                        transporting = true;
                        transport_id = -1;
                        state = 2;
                        if(!other.transport_bomb)
                        {   state_timer = 0; other.state_timer = 0; }
                        else
                        {   state_timer = 60; other.state_timer = 60; }
                    }
                }
            }
            transport_id = -1;
        }
        break;
    case 2: //transfer and be on cooldown.
        image_alpha = 0.5;
        image_xscale = .25+(ease_quartOut( 0, 1, state_timer, 240)*.75)
        image_yscale = image_xscale;
        if(state_timer >= 120)
        {   state_timer = 0; state = 1; image_alpha = 1;}
        break;
    case 3://death
        image_xscale = ease_quadIn( 1, 0, state_timer, 15)
        image_yscale = image_xscale;
        if(state_timer >= 15)
        {   instance_destroy(); }
        break;
}
