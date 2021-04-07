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
bigHitboxTimer += 1;
shotTimer += 1;
image_index += 0.1;



//Spin the rock fast after the hit!
if (state == 4)
{
    image_angle -= 15;
    
    //Set to despawn after given amount of frames
    if (state_timer > 30)
    {
        player_id.rockset = false;
        state = 30;
    }
}

if (state == 0) //Spawn
{
    hsp *= 0.8;
    vsp *= 0.93;
    
    image_angle += 3;
    
    //Rock is set properly after given amount of frames
    //Allowing to be hit or ridden
    if (state_timer > 10)
    {
        state = 60;
    }
    
}

if (state == 100) //hopped on rock
{
    //Cancel moves
    
    with (player_id)
    {
        if (state == PS_ATTACK_AIR)
        {
            set_state(PS_IDLE_AIR);
        }
    }
    
    
    //Prevent player from attacking during rock ride
    player_id.move_cooldown[AT_FSPECIAL] = 2;
    player_id.move_cooldown[AT_DSPECIAL] = 2;
    player_id.move_cooldown[AT_USPECIAL] = 2;
    player_id.move_cooldown[AT_NSPECIAL] = 2;
    player_id.move_cooldown[AT_FAIR] = 2;
    player_id.move_cooldown[AT_DAIR] = 2;
    player_id.move_cooldown[AT_NAIR] = 2;
    player_id.move_cooldown[AT_UAIR] = 2;
    
    //Stop riding if player is hit while riding rock
    if (player_id.hitpause)
    {
        state = 3;
        playerInterrupted = true;
    }
    
    //Position player above rock during rock ride
    player_id.x = x;
    player_id.y = y - 10;
    
    //Initial boost
    hsp -= selectedDirection;
    vsp -= 1;
    
    
    
    if (state_timer > 10)
    {
        vsp = 0;
        state_timer = 0;
        state = 1;
    }
}

if (state == 60 && !isShooting) // Idle
{
    //Slow down rock until it stops
    hsp *= 0.8;
    vsp *= 0.93;
    
    //Spin rock
    image_angle += 3;
    
    
    
   
    with (pHitBox) {
         //can only be hit by normals
         rejection = false;
         
         
         
         if (type != 2)
         {
             if (attack == AT_DSPECIAL && player_id.url == other.player_id.url)
             {
                 rejection = true;
             }
             
             if (attack == AT_NSPECIAL && player_id.url == other.player_id.url)
             {
                 rejection = true;
             }
             if (attack == AT_USPECIAL && player_id.url == other.player_id.url)
             {
                 rejection = true;
             }
         }
        if (attack == AT_FSPECIAL && player_id.url == other.player_id.url)
        {
            rejection = true;
        }
        if (attack == AT_USTRONG && player_id.url == other.player_id.url)
        {
            kb_angle = 90;
            hit_flipper = 0;
            if (abs(other.y - other.player_id.y) > 150)
            {
                rejection = true;
            }
        }
        if (kb_value < 0.1)
        {
            rejection = true;
        }
        
         if (hit_priority == 0)
         {
             rejection = true;
         }
         if (attack == AT_DAIR)
         {
             kb_angle = 270;
         }
         if (attack == AT_NAIR)
         {
            hit_flipper = 0;
            kb_angle = 40;
         }
         
         //hit by yuuto
      if player_id == other.player_id && place_meeting(x,y,other) && !rejection{ //detect if it's you and not the enemy player
          //do stuff
            sound_play(sound_effect);
            
            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
            other.state = 73;
            other.xHold = other.x;
            other.yHold = other.y;
            other.knockbackHold = kb_value;
            other.hitAngle = get_hitbox_angle(self);//point_direction(x, y, other.x, other.y);
            other.pranked = false;
            other.hboxtype = type;
            other.framesToCharge = 9;
            other.vspHold = other.vsp;
            other.hspHold = other.hsp;
            exit;
      }
      
      //hit by other player
      if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && !rejection{ //detect if it's you and not the enemy player
          //do stuff
            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
            other.state = 73;
            other.xHold = other.x;
            other.yHold = other.y;
            other.knockbackHold = kb_value;
            other.hitAngle = get_hitbox_angle(self);//point_direction(x, y, other.x, other.y);
            other.pranked = true;
            other.assailant_id = player_id;
            other.assailant_number = player;
            other.hboxtype = type;
            other.framesToCharge = 9;
            other.vspHold = other.vsp;
            other.hspHold = other.hsp;
            exit;
      }
    }
    

    if (place_meeting(x, y-55, player_id) && player_id.vsp > 1 && player_id.state != PS_HITSTUN)
    {
        selectedDirection = player_id.spr_dir;
        hsp = 2 * (-selectedDirection);
        vsp = 5;
        state_timer = 0;
        state = 100;
        sound_play(sound_get("sfx_yuuto_warp"));
        
    }
}

if (state == 73) //Just hit
{
    ignores_walls = true;
    can_be_grounded = false;
    sound_play(sound_get("sfx_yuuto_smack"));
    player_id.move_cooldown[AT_NSPECIAL] = 70;
    if (hboxtype == 1) //only on physical hitboxes; projectiles shouldn't put into hitpause
    if (pranked)
    {
        assailant_id.hitpause = true;
        assailant_id.hitstop = 7;
        assailant_id.old_hsp = assailant_id.hsp; //set old_hsp and old_vsp to not ruin player flow
        assailant_id.old_vsp = assailant_id.vsp;
        assailant_id.has_hit = true; //tick the has_hit flag like vanilla articles that can be hit
    }
    else
    {
        player_id.hitpause = true;
        player_id.hitstop = 7;
        player_id.old_hsp = player_id.hsp; //set old_hsp and old_vsp to not ruin player flow
        player_id.old_vsp = player_id.vsp;
        player_id.has_hit = true; //tick the has_hit flag like vanilla articles that can be hit
    }
    
    state = 74;
}

if (state == 74) // Initial shake after hit
{
    x = xHold + random_func(10, 20, true ) - 10;
    y = yHold + random_func(11, 20, true ) - 10;
    framesToCharge -= 1;
    
    if (framesToCharge < 1)
    {
        x = xHold;
        y = yHold;
        
        if (pranked)
        {
            //assailant_id.hsp = hspHold;
            //assailant_id.vsp = vspHold;
        }
        else
        {
            //player_id.hsp = hspHold;
            //player_id.vsp = vspHold;
        }
        
        
        state = 61;
    }
    
}

if (state == 61) // Knockback of the rock after getting smacked away
{
    //hsp = 20;
    
    //Determine velocity and angle of rock's launch
    pushSpeed = knockbackHold * 5;
    hsp = lengthdir_x(pushSpeed, hitAngle);
    vsp = lengthdir_y(pushSpeed, hitAngle);
          
    state_timer = 0;
    fullSpeed = true;

    //sound_play(sound_get("sfx_yuuto_smack"));
    
    state = 2;

    //Fix up velocity of rock, preventing it from going too fast
    //or too slow
    if (abs(hsp) > 7 && vsp < -1)
    {
        vsp = -1;
        if (hsp > 0)
        {
            hsp = 17;
        }
        else
        {
            hsp = -17;
        }
    }
    
    if (vsp < -4)
    {
        hsp = 0;
    }
    if (abs(hsp) < 10 && abs(hsp) > 5)
    {
        if (hsp > 0)
        {
            hsp = 17;
        }
        else
        {
            hsp = -17;
        }
    }
    vsp -= 2;
    
    if (vsp < -20)
    {
        vsp = -20;
    }
    if (vsp > 20)
    {
        vsp = 20;
    }
}

if (state == 3) //Rock collided with someone, let it stay on screen for a bit
{
    if (!playerInterrupted)
    {
        //check if player gets a vertical boost after the ride
        if (!playerHop && player_id.vsp < -1)
        {
            playerHop = true;
        }
        
        //Let the player jump after the hit
        if (tackled && !playerHop)
        {
            player_id.hsp = (-hsp) / 2;
            player_id.vsp = -7;
            player_id.djumps = 0;
            player_id.rockset = false;
            player_id.djumps = 0;
            player_id.rockset = false;
            //tackled = false;
        }
    }
    
    
    if (state_timer > 20)
    {
        state = 30;
    }
}

if (state == 2) // rock zoomin
{
    can_be_grounded = false;
    ignores_walls = true;
    isRiding = false;
    image_angle += 20;
    
    player_id.move_cooldown[AT_NSPECIAL] = 2;
    if(bigHitboxTimer > 1)
    {
        bigHitboxTimer = 0;
        rockBox = create_hitbox(AT_NSPECIAL, 3, x + (player_id.spr_dir * 16), y+0);
        rockBox.article_id = id;
        rockBox.destroy_article_on_absorb = 1;
        rockBox.vortexMove = 1;
        
        if (hsp > 0 && spr_dir == 1)
        {
            rockBox.kb_angle = 50;
        }
        if (hsp > 0 && spr_dir == -1)
        {
            rockBox.kb_angle = 130;
        }
        if (hsp < 0 && spr_dir == 1)
        {
            rockBox.kb_angle = 130;
        }
        if (hsp < 0 && spr_dir == -1)
        {
            rockBox.kb_angle = 50;
        }
        if (pranked)
        {
            //square.player_id = assailant_id;
            rockBox.player = assailant_number;
        }
    }
    
    if (state_timer > 50)
    {
        player_id.rockset = false;
        instance_destroy();
        exit;
    }
    
    if (tackled)
    {
        tackled = true;
        player_id.move_cooldown[AT_NSPECIAL] = 40;
        state = 4;
        
        state_timer = 0;
        hsp = -hsp;
        vsp = -2;
    }
    
    vsp += 0.4;
}



if (state == 1) // Player riding rock
{
    if (isRiding)
    {
        if (player_id.was_parried)
        {
            ignores_walls = true;
            can_be_grounded = false;
            
            tackled = true;
            state = 3;
            player_id.vsp = 0;
            player_id.hsp = hsp/4;
            player_id.move_cooldown[AT_NSPECIAL] = 40;
            state_timer = 0;
            hsp = -hsp/4;
            vsp = -2;
        }
    }
    
    
    player_id.x = x;
    player_id.y = y - 10;
 
    //Prevent player from attacking during rock ride
    player_id.move_cooldown[AT_FSPECIAL] = 2;
    player_id.move_cooldown[AT_DSPECIAL] = 2;
    player_id.move_cooldown[AT_USPECIAL] = 2;
    player_id.move_cooldown[AT_NSPECIAL] = 2;
    player_id.move_cooldown[AT_FAIR] = 2;
    player_id.move_cooldown[AT_DAIR] = 2;
    player_id.move_cooldown[AT_NAIR] = 2;
    player_id.move_cooldown[AT_UAIR] = 2;
    
    if(bigHitboxTimer > 1 && state_timer > 10)
    {
        bigHitboxTimer = 0;
        var square = create_hitbox(AT_NSPECIAL, 2, x + (player_id.spr_dir * 16), y+0);
        square.article_id = 1;
        square.vortexMove = 1;
        
        isRiding = true;
        
        if (hsp > 0 && spr_dir == 1)
        {
            square.kb_angle = 50;
        }
        if (hsp > 0 && spr_dir == -1)
        {
            square.kb_angle = 130;
        }
        if (hsp < 0 && spr_dir == 1)
        {
            square.kb_angle = 130;
        }
        if (hsp < 0 && spr_dir == -1)
        {
            square.kb_angle = 50;
        }
        //{
        //    square.kb_angle = 130;
        //}
        
    }
    
    
    if (selectedDirection > 0 && hsp < 18)
    {
        hsp += 4;
        
        if (hsp > 18)
        {
            hsp = 18;
        }
    }
    
    if (selectedDirection < 0 && hsp > -18)
    {
        hsp -= 4;
        
        if (hsp < -18)
        {
            hsp = -18;
        }
    }
    
    if (!fullSpeed && abs(hsp) >= 18 - 4)
    {
        sound_stop(sound_get("sfx_yuuto_warp"));
        sound_play(sound_get("sfx_yuuto_rocket"));
        fullSpeed = true;
    }
    
    if (player_id.down_down)
    {
        vsp = 5;
    }
    if (player_id.up_down)
    {
        vsp = -5;
    }
    
    
    if (hit_wall) {
        ignores_walls = true;
        can_be_grounded = false;
        
        player_id.hsp = hsp/2;
        hsp *= -0.6; //reverse rock vertical, reduce speed because it's a rock and not a bouncy ball
        vsp = -4;
        player_id.vsp = -8; //much better vertical bounce when rock rebounds from a wall
        player_id.rockset = false;
        player_id.djumps = 0;
        state_timer = 0;
        state = 2;
    }
    
    if (state_timer > 20 || (!free && place_meeting(x,y+2,asset_get("par_block")) ) )
    {
        ignores_walls = true;
        can_be_grounded = false;
        
        player_id.hsp = hsp/2;
        player_id.vsp = -3;
        player_id.rockset = false;
        player_id.djumps = 0;
        state_timer = 0;
        state = 2;
    }
    
    if (tackled)
    {
        ignores_walls = true;
        can_be_grounded = false;
        
        tackled = true;
        state = 3;
        player_id.vsp = 0;
        player_id.move_cooldown[AT_NSPECIAL] = 40;
        state_timer = 0;
        hsp = -hsp/4;
        vsp = -2;
    }
    
    if (player_id.hitpause)
    {
        ignores_walls = true;
        can_be_grounded = false;
        
        state = 3;
        playerInterrupted = true;
    }
}




if (isShooting)
{
    vsp = 0;
    hsp = 0;
    
    //Enlarging effect during shooting
    if (state == 69)
    {
        image_xscale += 0.15;
        image_yscale += 0.15;
        
        if (shotTimer > 2)
        {
            state = 70;
            shotTimer = 0;
            aimX = player_id.closestEnemy.x;
            aimY = player_id.closestEnemy.y;
            
        }
    }
    else if (image_xscale > 1)
    {
        image_xscale -= 0.05;
        image_yscale -= 0.05;
    
    }
    
    
    //Shoot bullets
    if (shotTimer > 5 && state == 70)
    {
        if (shotCount < 4)
        {
            if (player_id.special_down && shotCount == 0)
            {
                bulletForward = -1;
            }
            
            var square = create_hitbox(AT_NSPECIAL, shotCount + 4, x, y);
            square.through_platforms = 2;
            sound_stop(sound_get("sfx_yuuto_bullet"));
            sound_play(sound_get("sfx_yuuto_bullet"));
            image_xscale = 1.3;
            image_yscale = 1.3;
            shotCount += 1;
            shotTimer = 0;
            
            if (abs(x - aimX) > 300)
            {
                square.vsp *= 0.75;
                square.hsp *= 1.2;
            }
            
            if (abs(x - aimX) < 100 && y < aimY - 66)
            {
                square.hsp *= 0.4;
            }
            
            if (y - aimY > -65)
            {
                square.vsp -= 3;
            }
            
            //fix up direction
            if (spr_dir == 1)
            {
                if (lockedDirection > 0)
                {
                    if (bulletForward == 1)
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 50;
                        }
                        else
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 50;
                        }
                        
                    }
                    else
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 130;
                        }
                        else
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 130;
                        }
                        
                    }
                }
                else
                {
                    if (bulletForward == 1)
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 130;
                        }
                        else
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 130;
                        }
                        
                    }
                    else
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 50;
                        }
                        else
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 50;
                        }
                        
                    }
                }
            }
            else
            {
                if (lockedDirection > 0)
                {
                    if (bulletForward == 1)
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 130;
                        }
                        else
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 130;
                        }
                        
                    }
                    else
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 50;
                        }
                        else
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 50;
                        }
                        
                    }
                }
                else
                {
                    if (bulletForward == 1)
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 50;
                        }
                        else
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 50;
                        }
                        
                    }
                    else
                    {
                        if (player_id.spr_dir == 1)
                        {
                            square.hsp = square.hsp;
                            square.kb_angle = 130;
                        }
                        else
                        {
                            square.hsp = -square.hsp;
                            square.kb_angle = 130;
                        }
                        
                    }
                }
            }
           
        }
        else
        {
            
            state = 30
        }
    }
    player_id.rockset = false;
}

if (state == 30) //despawn rock
{
    image_alpha -= 0.1;
    
    if (image_alpha < 0.1)
    {
        player_id.rockset = false;
        player_id.nspecialCooldown = 0;
        
        instance_destroy();
        exit;
    }

}

if (duration > 3000)
{
    player_id.flameset = false;
    player_id.flame = noone;
    player_id.rockset = false;
    instance_destroy();
    exit;
}