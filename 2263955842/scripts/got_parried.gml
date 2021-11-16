// got parried

if (my_hitboxID.attack == AT_NSPECIAL)
{
    parry_lag = 80;
}

if (my_hitboxID.attack == AT_DSTRONG)
{
    parry_lag = 80;
}

if (my_hitboxID.attack == AT_DSPECIAL) or (my_hitboxID.attack == AT_FSPECIAL_2) or (my_hitboxID.attack == AT_DSPECIAL_2) // or(my_hitboxID.attack == AT_FSPECIAL)
{
    if (free)
    {
        parry_lag = 40;
    }
    else
    {
        parry_lag = 65;
    }
}

// destroying yinyang
var yinyang_id = noone
with (obj_article2){
    if(player_id == other){
            // inside the article
        var yinyang_id = self;
    }
}

if (yinyang_id != noone)
{
    yinyang_id.life = 0;
}

// destroying all cards
/*
while(ds_list_size(dspe_list))
{
    instance_destroy(dspe_list[|0]);
    ds_list_delete(dspe_list,0);
}
*/
        
        
// Reflect Seals
if(my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FSPECIAL_2 or my_hitboxID.attack == AT_FSPECIAL_AIR){
    my_hitboxID.was_parried = true;
    with(pHitBox){
        if(player_id == other and (attack == AT_FSPECIAL or attack == AT_FSPECIAL_2 or attack == AT_FSPECIAL_AIR) and was_parried == false){
            player = other.hit_player;
            vsp = -vsp*1.5;
            hsp = -hsp*1.5;
            hitbox_timer = 0;
            was_parried = true;
        }
    }
}

// Destroy Seals
/*
with pHitBox {
    if (player_id == other) and ( (attack == AT_DSPECIAL) or (attack == AT_FSPECIAL_2)) //(attack == AT_FSPECIAL) or
    {
        destroyed = true;
    }
    
    if (attack == AT_FSPECIAL) and (player_id == other) and (other.my_hitboxID == AT_FSPECIAL)
    {
        vsp *= 1.5;
        hsp *= 1.5;
        
        if (self != other.my_hitboxID)
        {
            player = other.hit_player;
            vsp = -vsp;
            hsp = -hsp;
            hitbox_timer = 0;
            got_parried = true;
        }
    }
    
}*/        



        
        
        