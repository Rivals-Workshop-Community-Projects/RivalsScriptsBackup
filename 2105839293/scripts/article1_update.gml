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
if (state < 1000)
{
    image_index += 0.5;
}
else
{
    image_index += 0.25;
}

//Flame just summoned, perform these actions
if (state == 0){
    //initial parry
    if (flameParried && !parryProcessed)
    {
        parryProcessed = true;
        hsp = -initialHorizontal;
        vsp = -initialVertical;
        hits = 0;
        hitboxesMade = 0;
        state = 0;
        state_timer = 5;
        duration = 0;
        spr_dir = -spr_dir;
        
    }
    
    if (state_timer mod 2 == 0 && state_timer mod 2 < 7)
    {
        var flameDetector = create_hitbox(AT_FSPECIAL, 3, x, y);
        if (flameParried)
        {
            flameDetector.player = parryMaster;
        }
    }
    
    //Slow down the flame 
    hsp *= 0.875;
    vsp *= 0.9;
    
    //Resize flame
    image_xscale = 1;
    image_yscale = 1;
    
    //Create hitbox after a given time
    if (state_timer > 9){
        
        //Explode after the third hit
        if (hits >= 3)
        {
            var square = create_hitbox(AT_FSPECIAL, 2, x, y);
            hits += 1;
            duration = 0;
            
            sound_play(sound_get("sfx_yuuto_explosion"));
            player_id.flameset = false;
            player_id.flame = noone;
            if (flameParried)
            {
                square.player = parryMaster;
            }
            ignited = true;
            state = 690;
            image_xscale = 1;
            image_yscale = 1;
        }
        else
        {
            //Prevent the flame from disappearing prematurely before it
            //completes the multi hits
            if (hits > 0)
            {
                duration = 0;
                hits += 1;
            }
            var square = create_hitbox(AT_FSPECIAL, 1, x, y + 14);
            square.article_id = id;
            square.destroy_article_on_absorb = 1;
            square.vortexMove = 1;
            //If the opponent gets hit while the flame is still moving forward
            //push the enemy forward to align them properly
            if (hitboxesMade == 0)
            {
                square.kb_angle = 40;
                square.kb_value = 8;
                square.hit_flipper = 0;
            }
            
            if (flameParried)
            {
                square.player = parryMaster;
            }
        }
        state_timer = 0;
        
        //If the first hitbox missed while moving forward,
        //make the next hitbox appear faster so the hit timing is proper
        if (hitboxesMade == 0 && hits == 0)
        {
            state_timer = 4;
        }
        hitboxesMade += 1;
        
    }
    

}

//UNUSED STATE, was a state used for positioning the flame with player input
//similar to Cellduh's side B
if (state == 69)
{
    duration = 0;
    vsp *= 0.5;
    hsp *= 0.5;
    
    
    movementSpeed = (69/69)*5;
    vsp += movementSpeed * ((player_id.down_down) - (player_id.up_down));
    hsp += movementSpeed * ((player_id.right_down) - (player_id.left_down));

    
    if (!player_id.special_down)
    {
        state = 0;
        hsp = 0;
        vsp = 0;
    }
}

//Play an explosion animation
if (state == 689)
{
    if (sprite_index != sprite_get("explosionbigger"))
    {
        sprite_index = sprite_get("explosionbigger");
        image_index = 0;
        state_timer = 0;
    }
    
    //Disappear after animation and reset player variables regarding Side B
    if (state_timer >= 31)
    {
        if (ignited)
        {
            player_id.flameset = false;
            player_id.flame = noone;
            player_id.fspecialCooldown = 0;
        }
        instance_destroy();
        exit;
    }
}

//Play an explosion animation
if (state == 690)
{
    if (sprite_index != sprite_get("explosionbigger"))
    {
        sprite_index = sprite_get("explosionbigger");
        image_index = 0;
        state_timer = 0;
    }
    
    //Disappear after animation and reset player variables regarding Side B
    if (state_timer >= 31)
    {
        if (ignited)
        {
            player_id.flameset = false;
            player_id.flame = noone;
            player_id.fspecialCooldown = 0;
        }
        instance_destroy();
        exit;
    }
}

//Play a small explosion animation
if (state == 691)
{
    if (sprite_index != sprite_get("boom"))
    {
        sprite_index = sprite_get("boom");
        image_index = 0;
        state_timer = 0;
    }
    
    //Disappear after animation
    if (state_timer >= 16)
    {
        instance_destroy();
        exit;
    }
}

//This article is a smoke
if (state == 695)
{
    if (sprite_index != sprite_get("smoke"))
    {
        sprite_index = sprite_get("smoke");
        image_index = 0;
        state_timer = 0;
    }
    
    image_alpha -= 0.05;
    hsp *= 0.9;
    vsp *= 0.9;
    image_xscale += 0.1;
    image_yscale += 0.1;
    image_angle += 2 * (-spr_dir);
    
    if (image_alpha < 0.1)
    {
        instance_destroy();
        exit;
    }
}

//Make flames shrink when attack misses
if (state == 700)
{
    duration = 0;
    if (image_xscale > 0)
    {
        image_xscale -= 0.2;
        image_yscale -= 0.2;
    }
    if (image_xscale < 0.1)
    {
        state = 800;
        state_timer = 0;
        
    }
}

//Destroying the flame properly
if (state == 800)
{
    duration = 0;
    image_alpha = 0;
    if (state_timer > 20)
    {
        player_id.flameset = false;
        player_id.flame = noone;
        player_id.fspecialCooldown = 0;
        instance_destroy();
        exit;
    }
    
}


//chizuru mode
if (state == 1000)
{
    if (image_index > 6)
    {
        sound_play(sound_get("sfx_yuuto_rumble"));
        state = 1001;
    }
}

if (state == 1001)
{
    if (image_index > 22)
    {
        sound_stop(sound_get("sfx_yuuto_rumble"));
        sound_play(sound_get("sfx_yuuto_trashout"));
        sound_play(sound_get("sfx_yuuto_jumpwhoosh"));
        state = 1002;
    }
}

if (state == 1002)
{
    if (image_index > 31)
    {
        sound_play(sound_get("sfx_yuuto_land"));
        state = 1003;
    }
}

if (state == 1003)
{
    if (image_index > 33)
    {
        sound_play(sound_get("sfx_yuuto_greet"));
        state = 1004;
    }
}

if (state == 1004)
{
    if (image_index > 44)
    {
        sound_play(sound_get("sfx_yuuto_takeout"));
        state = 1005;
    }
}

if (state == 1005)
{
    if (image_index > 52)
    {
        sound_play(sound_get("sfx_yuuto_bite"));
        state = 1006;
    }
}

if (state == 1006)
{
    if (image_index > 53 && !greeted)
    {
        image_index = 66;
        state = 1007;
    }
    
    if (image_index > 65 && image_index < 67 && greeted)
    {
        sound_play(sound_get("sfx_yuuto_bite"));
        state = 1007;
    }
}

if (state == 1007)
{
    if (image_index > 80 && !greeted)
    {
        image_index = 92;
        state = 1008;
    }
    
    if (image_index > 83 && image_index < 84)
    {
        sound_play(sound_get("sfx_yuuto_thumb"));
        state = 1008;
    }
}

if (state == 1008)
{
    if (image_index > 97)
    {
        depth = player_id.depth - 1;
        sound_play(asset_get("sfx_jumpground"));
        vsp = -9;
        hsp = spr_dir * 1;
        state = 1009;
        state_timer = 0;
    }
}

if (state == 1009)
{
    vsp += 0.5;
    if (image_index < 22)
    {
        image_index = 6;
    }
    if (image_index > 103)
    {
        image_index = 102;
    }
    
    if (state_timer > 60)
    {
        player_id.chizuruSummoned = false;
        instance_destroy();
        exit;
    }
}

if (state == 1000 || state == 1001)
{
    if (!place_meeting(x - (spr_dir),y+2,asset_get("par_block")) && !place_meeting(x - (spr_dir),y+2,asset_get("par_jumpthrough")))
    {
        depth = player_id.depth - 1;
        state = 1009;
        state_timer = 0;
        image_index = 6;
    }
}

//ChizuruGet Hit
if (state > 1002 && state < 1008)
{
    if (!place_meeting(x - (spr_dir),y+2,asset_get("par_block")) && !place_meeting(x - (spr_dir),y+2,asset_get("par_jumpthrough")))
    {
        depth = player_id.depth - 1;
        state = 1009;
        state_timer = 0;
        image_index = 102;
    }
    
    with (pHitBox) {
         //can only be hit by normals
         rejection = false;
         
         if (type != 2)
         {
             if (attack == AT_DSPECIAL)
             {
                 rejection = true;
             }
             if (attack == AT_FSPECIAL)
             {
                 rejection = true;
             }
             if (attack == AT_NSPECIAL)
             {
                 rejection = true;
             }
             if (attack == AT_USPECIAL)
             {
                 rejection = true;
             }
         }
         if (hit_priority == 0)
         {
             rejection = true;
         }
         
         if (spr_dir > 0)
         {
             xEffectOffset = -20;
         }
         else
         {
             xEffectOffset = -30;
         }
         
         //hit by yuuto
      if player_id == other.player_id && place_meeting(x,y,other) && !rejection{ //detect if it's you and not the enemy player
          //do stuff
            sound_play(sound_effect);
            
            spawn_hit_fx(other.x+hit_effect_x+ xEffectOffset,other.y+hit_effect_y-18,hit_effect);
            other.state = 1200;
            other.knockbackHold = kb_value;
            other.hitAngle = get_hitbox_angle(self);//point_direction(x, y, other.x, other.y);
            exit;
      }
      
      //hit by other player
      if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && !rejection{ //detect if it's you and not the enemy player
          //do stuff
            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x+xEffectOffset,other.y+hit_effect_y-18,hit_effect);
            other.state = 1200;
            other.knockbackHold = kb_value;
            other.hitAngle = get_hitbox_angle(self);//point_direction(x, y, other.x, other.y);
            exit;
      }
    }
}

if (state == 1200)
{
    state = 1201;
    pushSpeed = knockbackHold * 5;
    hsp = lengthdir_x(pushSpeed, hitAngle);
    sprite_index = sprite_get("chizuruhurt")
    sound_play(sound_get("sfx_yuuto_interrupted"));
    vsp = -9;
    if (hsp > 0)
    {
        hsp = 3;
        spr_dir = -1;
    }
    else
    {
        hsp = -3;
        spr_dir = 1;
    }
    state_timer = 0;
}


if (state == 1201)
{
    vsp += 0.8;
    if (state_timer > 60)
    {
        player_id.chizuruSummoned = false;
        instance_destroy();
        exit;
    }
}

//After given amount of frames without landing a hit, make the flame shrink
if (duration > 33 && state < 1000)
{
    state = 700;
    
}