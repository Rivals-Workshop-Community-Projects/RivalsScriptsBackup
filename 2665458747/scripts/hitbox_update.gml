//hitbox update

if attack == AT_NSPECIAL && hbox_num == 1
{
    if !free
    {
        if (collision_circle(x,y,64,asset_get("par_block"),false,true) || 
        collision_circle(x,y,64,asset_get("par_jumpthrough"),false,true)) || !free
        {
            hsp = 0;
            destroy_fx = 1;
            with player_id
            {
                spawn_hit_fx( other.x, other.y, poison_fx )
            }
            destroyed = true;
        }
    }
    
}

if attack == AT_NSPECIAL_2 && hbox_num == 1
{
    hsp*= 0.95;
    
};