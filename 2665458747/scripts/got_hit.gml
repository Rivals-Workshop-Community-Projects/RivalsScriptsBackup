//hit

switch (croagstance)
{
    case 1://Toxic Stance
    {
        
        hitstun*=0.9;
        round(hitstun);
        
    }break;
    
    case 2://Punish Stance
    {
        
    }break;
}

with hit_player_obj
{
    if ("croagpoison" in self)
    {
        croagpoison -= 5 + other.enemy_hitboxID.damage;
        croagpoison = clamp(croagpoison, 0, 100);
    }
}