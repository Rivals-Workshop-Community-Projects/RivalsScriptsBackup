//Destroy self
if((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL && player_id.state_timer == 1 || player_id.state == PS_RESPAWN)
{
    with(player_id)
        spawn_hit_fx(other.x,other.y+30, item_destroyedfx);
    sound_play(asset_get("sfx_abyss_seed_land"), false, noone, 0.7, 1);
    destroyed = true;
}
if(collision_circle(x,y-20,50,oPlayer,false,false))
{
    with(oPlayer)
    {
        if(url == other.player_id.url && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
        (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) && !other.destroyed && collision_circle(other.x,other.y-20,50,id,false,false))
        {
            with(other)
            {
                depth = player_id.depth + 2;
            }
            if(!can_break && instance_exists(grabbed_player_obj)) { if(get_player_damage(grabbed_player_obj.player) > 70) { sound_play(sound_get("crowd_shock"), false, noone, 1.5, 1); hitstop += 12;} can_break = true; }
            if(break_table)
            {
                if(can_break) other.mask_index = asset_get("empty_sprite");
                fx = spawn_hit_fx(x, y-30, 134);
                fx.depth = -9;
                spawn_hit_fx(other.x, other.y+30, item_destroyedfx);
                sound_play(sound_get("table_break"), false, noone, 2, 1.1);
                sound_play(asset_get("sfx_abyss_seed_land"), false, noone, 2, 1);
                other.destroyed = true;
                break_table = false;
                crowdHype ++;
            }
        }
    }
}
else if(mask_index != sprite_get("table_mask"))
    mask_index = sprite_get("table_mask");

with(oPlayer)
{
    //Destroy table when youre getting spiked into it
    if(sent_down && vsp > 0 && state == PS_HITSTUN && collision_circle(x,y,30,other,false,false))
    {
        fx = spawn_hit_fx(x, y-30, 134);
        fx.depth = -9;
        spawn_hit_fx(other.x, other.y+30, other.player_id.item_destroyedfx);
        with(other)
        {
            hbox = create_hitbox(AT_DSPECIAL, 1, x, y)
            if(player_id.state == PS_HITSTUN)
                hbox.can_hit_self = true;
            else
                player_id.crowdHype ++;
            sound_play(sound_get("table_break"), false, noone, 2, 1.1);
        }
        other.destroyed = true;
    }
    if(sent_down && !hitpause && vsp < 0)
        sent_down = false;
}

if(hitting_ground(0))
{
    free = false;
    vsp = 0;
    if(hitting_ground(-1))
        y -= 2;
}
else if (free)
    vsp += .5;

if(vsp != 0) mask_index = asset_get("empty_sprite");

if(destroyed)
{
    instance_destroy();
    exit;
}

#define hitting_ground(y1)
{
    return(collision_rectangle(x-33,y+30+y1,x+33,y+34+y1,asset_get("par_block"),true,false) 
    || collision_rectangle(x-33,y+30+y1,x+33,y+34+y1,asset_get("par_jumpthrough"),true,false) 
    || collision_rectangle(x-33,y+30+y1,x+33,y+34+y1,asset_get("obj_article_platform"),true,false));
}