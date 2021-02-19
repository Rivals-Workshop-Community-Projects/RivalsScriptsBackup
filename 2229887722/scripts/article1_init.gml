if (!variable_instance_exists(self, "articleType"))
    articleType = 1; //0 is the experimental Pacifist KO. 1 is yarn tie up sprite. 2 is speed lines background (pre and post draw aren't rendering it properly)

//Yarn ball finish (Pacifist KO) variables
switch (articleType)
{
    case 0:
        enemyYarnFinished = false;
        sprite_index = asset_get("ex_guy_hurt_box");
        image_index = 0;
        enemyTempX = 0;
        enemyTempY = 0;
        
        enemyPlayerID = 0; //Used to keep track of the enemy that got KO'd, in case they respawn after getting yarn finished
    break;
    
    //New, revised variables. Article that shows yarn tying up the enemy
    case 1:
        targetTiedUpEnemy = noone;
        sprite_index = sprite_get("yarn_tie");
    break;
    
    case 2:
        sprite_index = sprite_get("speedlines_bg_darker");
        depth = 30;
        spr_dir *= 1.5;
        image_yscale = 0.75;
        //image_alpha = 0.75;
    break;
    
    case 3:
        sprite_index = sprite_get("speedlines_bg_darker");
        spr_dir *= 1.5;
        image_yscale = 0.75;
        //image_alpha = 0.75;
    break;
}
