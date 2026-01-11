//article1_update
if (instance_exists(attached_projectile))
{
    x = attached_projectile.x + (attached_projectile.spr_dir * 12);
    y = attached_projectile.y;
    if (player_id.orb_slots[orbID] == 0)
    {
        instance_destroy(attached_projectile);
    }
}
else
{
    var targetPosX = player_id.position_delay[orbID * 8] + (pos * player_id.spr_dir) + (player_id.spr_dir * 7);
    var targetPosY = player_id.position_delay[orbID * 8 + 1] + (pos == 0 ? -90 : -75);
    if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT)
    {
        var angle = player_id.state_timer / 6 - (orbID * 20);
        targetPosX = player_id.x + (cos(angle) * 45) + (player_id.spr_dir * 7);
        targetPosY = player_id.y + (sin(angle) * 20) - 90;
    }
    
    var deltaX = floor((targetPosX - x) / 6);
    var deltaY = floor((targetPosY - y) / 6);
    
    x += deltaX;
    y += deltaY;
}

//y += sin(get_gameplay_time() / 18);
//x = targetPosX;
//y = targetPosY;
if (orb_evoke_time < 60)
    orb_evoke_time++;
    
visible = player_id.visible;
if (player_id.custom_clone)
    visible = false;