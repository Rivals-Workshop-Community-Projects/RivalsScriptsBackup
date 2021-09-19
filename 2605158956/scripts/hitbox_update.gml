if(attack == AT_DSPECIAL && hbox_num == 1)
{
    if (hitbox_timer > 5)
        hitbox_timer = 5;
    with(pHitBox)
    {
        if(collision_circle(other.x,other.y,24,self,true,false))
        {
            if(attack == AT_FSPECIAL && other.image_index <= 9 && player_id == other.player_id)
            {  other.img_spd = .3; other.image_index ++; /*sound_play(sound_get("TB_watered"));*/ }
        }
    }
    if(image_index == 9)
        img_spd = 0;
    else
        img_spd = .3; 
    
    if(image_index == 19)
        instance_create(x, y, "obj_article1");

    if(image_index >= 22)
        destroyed = true;
    
    if((player_id.attack == AT_DSPECIAL && player_id.window == 1 && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) || (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)) && image_index < 19)
        image_index = 20;
}