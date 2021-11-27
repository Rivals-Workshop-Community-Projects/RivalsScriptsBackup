fall_through = false;

hsp *= 0.98;
vsp *= 0.95;

with(pHitBox)
{
    if(collision_circle(other.x,other.y,50,self,true,false) && hit_priority != 0 && proj_break == 0 && player_id != other.player_id)
    {
        if(other.hit_timer == 0)
        {
            spawn_hit_fx((x+other.x)/2, (y+other.y)/2, 194);
            sound_play(asset_get("sfx_ori_seinhit_medium"));
            other.hit_timer = 60;   
        }
        if(type == 2 && other.state == 0)
        {
            other.state = 1;
        }
        else if(other.state < 2)
        {
            other.state = 2;
        }
    }
}

//Die after 
if(player_id.state == PS_RESPAWN && state < 3)
    state = 2;

if(get_gameplay_time() % 2)
    image_index ++;
    
if(get_gameplay_time() % 15 == 0)
    sound_play(asset_get("sfx_buzzsaw_throw"), false, noone, 0.3);

if(hit_timer != 0)
    hit_timer --;
else
    create_hitbox(AT_NSPECIAL, 1, x, y-30);

switch(state)
{
    case 0:
        //check direction at the start.
        if(vertMove != 0)
        {
            if(vertMove > 0)
            {
                vsp -= 0.5;
                vertMove --;
            }
            else
            {
                vsp += 0.5;
                vertMove ++;
            }
        }
        if(collision_circle(x,y-20,10,asset_get("par_block"),true, false)) //if you hit underground, lets not be as broken 
        {
            hsp /= 1.5;
            vsp /= 1.5;
        }
    break;

    case 1: //return to player.
        hsp -= floor(x - player_id.x) / 200;
        vsp -= floor(y - player_id.y+10) / 200;
        if(player_id.parasiteLevel != 2 || player_id.parasiteLevel != 1 && player_id.parasiteTimer2 > 0)
            player_id.move_cooldown[AT_NSPECIAL] = 20;
            
        with(oPlayer)
        {
            if(collision_circle(other.x,other.y-15,10,self,true,false))
            {
                if(player == other.player)
                    other.state = 4;
            }
        }
    break;

    case 2: //Broken/Death
        spawn_hit_fx(x, y, 301);
        player_id.move_cooldown[AT_NSPECIAL] = 120;
        state = 4;
    break;
    
    case 3://Combust
        if(player_id.parasiteLevel == 2 || player_id.parasiteLevel == 1 && player_id.parasiteTimer2 > 0)
        {
            fx=spawn_hit_fx(x, y-20, 143);
            fx.depth = -999;
            sound_play(asset_get("sfx_forsburn_combust"));
            create_hitbox(AT_NSPECIAL_2, 1, x, y);
            with(oPlayer)
            {
                if(player == other.player)
                {
                    x = floor(other.x);
                    y = floor(other.y);
                    state = PS_ATTACK_AIR;
                    attack = AT_USPECIAL_2;
                    window = 2;
                    window_timer = 0;
                    vsp = -8;
                    hsp = 0;
                }
            }
        }
        state = 4;
    break;

    case 4: //Destroy
        instance_destroy();
    break;
}