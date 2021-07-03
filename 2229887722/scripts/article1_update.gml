switch (articleType)
{
    case 0:
    if ("enemyPlayerID" in self)
        var tempEnemyPlayerID = enemyPlayerID;

        with(asset_get("oPlayer")) 
        {
            //If the player has respawned, delete this article so there are no duplicates
            //of the enemy
            if (player == tempEnemyPlayerID)
            {
                if (player.state_cat == SC_GROUND_NEUTRAL || 
                    player.state_cat == SC_AIR_NEUTRAL ||
                    player.state == PS_RESPAWN || player.state = PS_SPAWN)
                        instance_destroy();
            }
        }
    break;
    
    case 1:
        if (targetTiedUpEnemy.state_cat != SC_HITSTUN)
        {
            targetTiedUpEnemy.enemyIsYarnDizzy = false;
            instance_destroy();
        }
        else
        {
            x = targetTiedUpEnemy.x;
            y = targetTiedUpEnemy.y - (targetTiedUpEnemy.char_height * 0.5);
            
            depth = targetTiedUpEnemy.depth - 1;
            targetTiedUpEnemy.enemyIsYarnDizzy = true;
            targetTiedUpEnemy.enemyDizzyTimer += 0.5;
            //targetTiedUpEnemy.invincible = true;
            //targetTiedUpEnemy.invince_time = 20;
        }
    break;
    
    case 2:
        if ("initialize" in self)
        {
            if (initialize == true)
            {
                sprite_index = sprite_get("speedlines_bg_darker");
                depth = 31;
                spr_dir *= 2.5;
                image_yscale = 1.75;
                image_alpha = 0.0;
                initialize = false;
            }
        }
        if (image_alpha > 0)
        {
            if (image_angle != 90)
            {
                if (spr_dir > 0)
                    x = view_get_xview()-20;
                else if (spr_dir < 0)
                    x = view_get_xview() + view_get_wview() + 20;
                y = view_get_yview()-20;
                
                image_yscale = 1.75;
            }
            else
            {
                x = view_get_xview()-20;
                y = view_get_yview() + view_get_hview();
                
                image_yscale = 2.75;
            }
            image_index++;
        }
    break;
    
    case 3:
        if ("initialize" in self)
        {
            if (initialize == true)
            {
                sprite_index = sprite_get("speedlines_bg_darker");
                spr_dir *= 2.5;
                image_yscale = 1.75;
                image_alpha = 1;
                initialize = false;
            }
        }
        if (image_angle != 90)
        {
            if (spr_dir > 0)
                x = view_get_xview()-20;
            else if (spr_dir < 0)
                x = view_get_xview() + view_get_wview() + 20;
            y = view_get_yview()-20;
            
            image_yscale = 1.75;
        }
        else
        {
            x = view_get_xview()-20;
            y = view_get_yview() + view_get_hview();
            
            image_yscale = 2.75;
        }
        image_index++;
    break;
}
