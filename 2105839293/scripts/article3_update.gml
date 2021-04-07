//article1_update

if (init == 0){
    init = 1;
    
    /*with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }*/
}

state_timer++;
duration++;

image_index += 1;

//image_angle += 27;

//Vortex spawned, do these actions
if (state == 0)
{
    if (x < 150)
    {
        x = 150;
    }
    if (x > room_width - 150)
    {
        x = room_width - 150;
    }
    
    //Keep enlarging until it's big
    if (image_xscale < 1)
    {
        image_xscale += 0.06;
        image_yscale += 0.06;
        
        if (image_xscale > 1)
        {
            image_xscale = 1;
            image_yscale = 1;
        }
    }
    //Create the pull hitbox
    if (state_timer == 5)
    {
        det_hitbox = create_hitbox(AT_DSPECIAL, 1, x , y);
    }
    
    
    
    if (instance_exists(det_hitbox)) {
        
        with (oPlayer) {
            //if this player is on another team from this yuuto and is in range
            if ( get_player_team(player) != get_player_team(other.player_id.player) 
            && place_meeting(x, y, other.det_hitbox) )
            {
                var xDistance = other.x - x;
                var totalDistance = point_distance(x, y, other.x, other.y);
                
                var speedManipulation = (310 * (1/totalDistance)) * sign(xDistance);
                if (abs(xDistance) > 18) { //less speed jitter near the center
                    x += clamp(speedManipulation,-4,4);
                }
                
                //Prevent gimping by removing pratfall
                if (state == PS_PRATFALL) {
                    set_state(PS_HITSTUN);
                }
            }
        }
        
        
        /*
        with (pHitBox)
        {
            if (other.debugNumber < 1)
            {
                other.debugNumber = 1;
            }
            
            if ("article_id" in self && "vortexMove" in self)
            {
                if (other.debugNumber < 11)
                {
                    other.debugNumber = 11;
                }
                if (instance_exists(article_id))
                {
                    if (other.debugNumber < 111)
                    {
                        other.debugNumber = 111;
                    }
                    if (article_id != other.id && article_id != other.player_id.previousRockID && article_id != other.player_id.previousFlameID)
                    {
                        if (other.debugNumber < 1111)
                        {
                            other.debugNumber = 1111;
                        }
                        other.detectedArticle = article_id;
                    }
                    
                    
                }
                
            }
            
            if (type == 2)
            {
                var xDistance = other.x - x;
                var yDistance = other.y - y;
                var totalDistance = point_distance(x, y, other.x, other.y);
                
                var speedManipulation = (400 * (1/totalDistance)) * sign(xDistance);
                var speedManipulation2 = (800 * (1/totalDistance)) * sign(yDistance);
                
                //hit_priority = 0;
                
                if (abs(xDistance) > 1 && abs(xDistance) < 90 && abs(yDistance) > 1 && abs(yDistance) < 180) { //less speed jitter near the center
                    x += clamp(speedManipulation,-30,30);
                    
                    if (hsp > 7)
                    {
                        hsp = 7;
                    }
                    if (hsp < -7)
                    {
                        hsp = -7;
                    }
                    
                    if (hsp > 0.5)
                    {
                        hsp *= 0.95;
                    }
                    
                    if (vsp > 0.5)
                    {
                        vsp *= 0.95;
                    }
                }
                if (abs(yDistance) > 25 && abs(yDistance) < 180) { //less speed jitter near the center
                    y += clamp(speedManipulation2,-30,30);
                    
                }
            }
        }
        */
        
        
        
    }
    
    if (instance_exists(detectedArticle) && detectedArticle != noone)
    {
        with(detectedArticle)
        {
            if (abs(x - other.x) < 180 && abs(y - other.y) < 180)
            {
                if (x > other.x)
                {
                    x -= 20;
                }
                if (x < other.x)
                {
                    x += 20;
                }
                if (y > other.y)
                {
                    y -= 20;
                }
                if (y < other.y)
                {
                    y += 20;
                }
            }
            
            /*
            var xArticleDistance = other.x - x;
                    var yArticleDistance = other.y - y;
                    var totalArticleDistance = point_distance(x, y, other.x, other.y);
                    var speedArticleManipulation = (400 * (1/totalArticleDistance)) * sign(xArticleDistance);
                    var speedArticleManipulation2 = (800 * (1/totalArticleDistance)) * sign(yArticleDistance);
                    if (abs(xArticleDistance) > 1 && abs(xArticleDistance) < 90 && abs(yArticleDistance) > 1 && abs(yArticleDistance) < 180)
                    {
                        x += clamp(speedArticleManipulation,-30,30);
                    
                        if (hsp > 7)
                        {
                            hsp = 7;
                        }
                        if (hsp < -7)
                        {
                            hsp = -7;
                        }
                        
                        if (hsp > 0.5)
                        {
                            hsp *= 0.95;
                        }
                        
                        if (vsp > 0.5)
                        {
                            vsp *= 0.80;
                        }
                    }
                    if (abs(yArticleDistance) > 25 && abs(yArticleDistance) < 180) 
                    { //less speed jitter near the center
                        y += clamp(speedArticleManipulation2,-30,30);
                        
                    }
            */
        }
        
    }
    
    
    /* OLD DSPEC CODE
    if (detected)
    {
        xDistance = x - enemy.x;
        totalDistance = point_distance(x, y, enemy.x, enemy.y);
        
        if (totalDistance != 0)
        {
            speedManipulation = 200 * (1/(totalDistance));
            if (xDistance < 0)
            {
                speedManipulation = abs(speedManipulation) * -1;
            }
            enemy.hsp += speedManipulation;
            if (enemy.hsp > 5)
            {
                enemy.hsp = 5;
            }
            if (enemy.hsp < -5)
            {
                enemy.hsp = -5;
            }
            
        }
        
        
        /*
        if (x > enemy.x)
        {
            enemy.hsp = 5;
        }
        else
        {
            enemy.hsp = -5;
        }
    }
    */
    
    //How long does the vortex pull last?
    if (duration > 35)
    {
        state = 1;
        state_timer = 0;
        
        instance_destroy(det_hitbox);
    }
}

//Shrink vortex as it ends
if (state == 1)
{
    if (image_xscale > 0)
    {
        image_xscale -= 0.11;
        image_yscale -= 0.11;
        if (image_xscale < 0.1)
        {
            state = 2;
            image_alpha = 0;
            state_timer = 0;
            last_hitbox = create_hitbox(AT_DSPECIAL, 2, x , y);
        }
    }
}

//Despawn
if (state == 2)
{
    if (state_timer > 60)
    {
        player_id.dspecialCooldown = 0;
        player_id.absorb = noone;
        instance_destroy(self);
        exit;
    }
}