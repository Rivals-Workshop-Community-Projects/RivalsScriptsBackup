//

/*
left_down = false;
right_down = false;
up_down = false;
down_down = false;
attack_down = false;
special_down = false;
jump_down = false;
shield_down = false;
strong_down = false;
left_down = false;

ai_target	The current target of the AI.
ai_recovering	Is true while the AI is attempting to recover back onto the stage.
temp_level	The difficulty level of the AI, from 1 to 9.
ai_attack_timer	The amount of frames since the AI last attacked.
ai_attack_time	The minimum amount of frames before the AI can try attacking again.
ready_to_attack	Is true if the AI can perform an attack.
ai_going_into_attack	Is true if the AI is attempting to attack.
ai_going_left	Is true if the AI is moving left.
ai_going_right
*/

var targetDist = point_distance(ai_target.x, ai_target.y, x, y);
//print(targetDist);
//50 is super close
//75 is touching
//100 is almost touching
//stage is like 800

if(!canAttack && attack != 49 && !ai_recovering)
{
    var deltaX;
    var deltaY;
    //if pile is on floor, try to collect it
    if(pieceArticle != noone && instance_exists(pieceArticle) && !pieceArticle.free)
    {
        deltaX = pieceArticle.x - x;
        deltaY = pieceArticle.y - y;
    }
    //if pile is still flying and not below stage, try to go near it
    else if(pieceArticle != noone && instance_exists(pieceArticle) && pieceArticle.y <= get_stage_data(SD_Y_POS) && !ai_recovering)
    {
        deltaX = pieceArticle.x - x + random_func(0, 256, true) - 128;
        deltaY = pieceArticle.y - y;
    }
    //else try to flee from enemy
    else
    {
        deltaX = x - ai_target.x;
        deltaY = y - ai_target.y; //TODO: better flee, going to center stage as well if cornered
    }
    
    deltaX += randOffsetNegPos(50, 200, 0);
    deltaY += randOffsetNegPos(0, 50, 1);//why not even perfect with 0 offset?
    //TODO: walk slower instead?
    
    //print(string(aiIgnoring) + " " + string(aiChaseTimer) + " " + string(aiIgnoreTimer));
    
    //go to piece to collect
    if(!aiIgnoring)
    {
        aiChaseTimer++;
        if(aiChaseTimer > randOffset(60, 120, 0))
        {
            aiIgnoreTimer = 0;
            aiIgnoring = true;
        }
    }
    else //ignore it for a while
    {
        aiIgnoreTimer++;
        if(aiIgnoreTimer > randOffset(30, 60, 0))
        {
            aiChaseTimer = 0;
            aiIgnoring = false;
        }
        //deltaX = x - ai_target.x;
        //deltaY = y - ai_target.y; 
        return;
    }
    
    if (deltaX > 0)
    {
        right_hard_pressed = true;
        right_down = true;
        left_down = false;
        
        //ai_going_right = true;
        //ai_going_left = false;
    }
    else if (deltaX < 0)
    {
        left_hard_pressed = true;
        left_down = true;
        right_down = false;
        
        //ai_going_left = true;
        //ai_going_right = false;
    }
    
    if (deltaY < -25)
    {
        jump_pressed = true;
        down_down = false;
    }
    if (deltaY > 25)
    {
        jump_pressed = false;
        down_hard_pressed = true;
        //down_hard_pressed = true;
        down_down = true;
        //down_down = true;
        up_down = false;
    }
    //joy_dir = 0;
    //joy_pad_idle = true;
    //ready_to_attack = false;
    
    return;
}

if(ai_target.state == PS_RESPAWN || ai_target.state == PS_DEAD)
    return;
    
//recover with nspecial (does this even work?)
if(ai_recovering && djumps >= max_djumps && uspecialCanceled && uspecialAirtime >= 45)
{
    right_down = false;
    left_down = false;
    down_down = false;
    up_down = false;
    special_down = true;
    //TODO: add randomness
}
//TODO: use wall jumps if possible...

if ("fs_charge" in self && !inAttack() && fs_charge >= 200)
{
    //use final smash to kill or recover
    if(targetDist <= randOffset(75, 100, 0) || (ai_recovering && djumps >= max_djumps && uspecialCanceled && uspecialAirtime >= 45))
        fs_ai_attempt_use = true;
    
    move_cooldown[AT_NSPECIAL] = 1000; //TODO: instead just do final smash on nspecial?
}
//else move_cooldown[AT_NSPECIAL] = 0;

    
if(attack == 49 && inAttack())
{
    var deltaY;
    var deltaX = ai_target.x - x;
    if(window == 1 || window == 2)
        deltaY = (ai_target.y+250) - y;
    if(window == 3)
        deltaY = ai_target.y - y;//(view_get_yview() + view_get_hview() * 0.5) - y;
    
    if (deltaX > 0)
    {
        right_hard_pressed = true;
        right_down = true;
        left_down = false;
    }
    else if (deltaX < 0)
    {
        left_hard_pressed = true;
        left_down = true;
        right_down = false;
    }
    
    if (deltaY < -25)
    {
        up_hard_pressed = true;
        up_down = true;
        down_down = false;
    }
    else if (deltaY > 25)
    {
        down_hard_pressed = true;
        down_down = true;
        up_down = false;
    }
}


if(attack == AT_USPECIAL && inAttack() && window == 1 && window_timer == 0)
{
    //hold down to finish enemy?
    var damageScale = get_player_damage(ai_target.player) * difficultyScale(0.01, 0.001);
    aiHoldUspecial = randDo(0.1+damageScale, 0.01+damageScale,0);
    
    //otherwise try to re-use for juggle if target close
    if(!aiHoldUspecial && randDo(0.75, 0.25, 0))
        aiJuggleUspecial = true;
}
if(attack == AT_USPECIAL && window > 1)
{
    if(aiHoldUspecial && window == 2 && inAttack() && has_hit_player)
    {
        up_down = true;
        special_down = true;
    }
    
    if(aiJuggleUspecial && !inAttack() && uspecialAirtime < 55 && ai_target.free//ai_target.state == PS_IDLE_AIR
    && targetDist <= randOffset(400,600,0) && ai_target.y < y+randOffsetNegPos(100,200,0) && abs(ai_target.x-x) < randOffset(200,400,0))
    {
        up_down = true;
        special_down = true;
        goToPlayerHor();
    }
}
if((attack != AT_USPECIAL || !inAttack()) && aiJuggleUspecial && uspecialCanceled && uspecialAirtime < 55 && ai_target.free//ai_target.state == PS_IDLE_AIR
    && targetDist <= randOffset(400,600,0) && ai_target.y < y+randOffsetNegPos(100,200,0) && abs(ai_target.x-x) < randOffset(200,400,0))
{
    {
        up_down = true;
        special_down = true;
        goToPlayerHor();
    }
}
    
    
if(attack == AT_FSPECIAL && inAttack() && !ai_recovering)
{
    if(window == 1)
    {
        aiFspecialOff = randOffsetNegPos(0,250,0);
        aiFspecialOff2 = randOffsetNegPos(0,150,1);
        aiFspecialOff3 = randOffsetNegPos(0,150,2);
    }
    if(window == 2)
    {
        var mintime = 0;
        var maxtime = 120;
        
        var currentDist = 10 + /*ground_friction * */ remap(fspecialCharge, mintime, maxtime, 9, 18) * remap(fspecialCharge, mintime, maxtime, 15, 50);
        currentDist += aiFspecialOff;
        //quit if spr dir in wrong direction
        if(sign(ai_target.x - x+aiFspecialOff2) != spr_dir)
            currentDist = 100000;
        //quit if can reach target
        if(targetDist > currentDist)
            special_down = true;
    }
    if(window == 3 || window == 4)
    {    
        //jump if not on track to hit target anymore
        if((sign(ai_target.x - x+aiFspecialOff2) != spr_dir || abs(ai_target.y - y+aiFspecialOff3) > 200) /*&& random_func(2, 100, false) < 5*/)
            jump_down = true;
        else
            jump_down = false;
    }
    else
        jump_down = false;
}

//use down special if in air and above player (or on ground and player close)
if(attack != AT_DSPECIAL_AIR && !inAttack())
{
    //if in the air and high above enemy and enemy is hittable on floor OR in air
    if(free && ai_target.y > y+10 
    && x > get_stage_data(SD_X_POS) && x < room_width - get_stage_data(SD_X_POS) && randDo(0.1, 0.01, 0) &&
    ((!ai_target.free && abs(ai_target.x - x) <= 180 + clamp(remap(dspecialAirTime, 10, 30, 0, 1),0,1) * 55)
    ||(ai_target.free && abs(ai_target.x - x) <= 100)))
    {
        //down_hard_pressed = true;
        down_down = true;
        up_down = false;
        special_down = true;
    }
}
    
//hold down during dspecial if player significantly lower, to go through platforms
if(attack == AT_DSPECIAL_AIR && inAttack())
{
    if(ai_target.y > y+10)
        down_down = true;
}


//combo jab & fspecial
if (attack == AT_JAB && inAttack() && has_hit_player 
    && (window == 3 || window == 6) && randDo(0.9, 0.05, 0))
{
    up_down = false;
    down_down = false;
    left_down = false;
    right_down = false;
    attack_pressed = true;
}
if (attack == AT_FTILT && inAttack() && has_hit_player 
    && window == 3 && randDo(0.98, 0.3, 1))
{
    up_down = false;
    down_down = false;
    left_down = spr_dir == 1 ? false : true;
    right_down = spr_dir == 1 ? true : false;
    attack_pressed = true;
}
//TODO: also combo dair? and bounce on floor


#define goToPlayerHor() //TODO: calculate in both hsp
var deltaX = ai_target.x - x;
if (deltaX > 0)
{
    right_hard_pressed = true;
    right_down = true;
    left_down = false;
}
else if (deltaX < 0)
{
    left_hard_pressed = true;
    left_down = true;
    right_down = false;
}

#define difficultyScale(best, worst)
return remap(temp_level, 9, 1, best, worst);

#define inAttack()
return (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

#define randDo(best, worst, i)
return random_func(i, 1, false) < (remap(temp_level, 9, 1, best, worst));// * 0.6); //likelyhood to make move between 0 and 1, over difficulty (over one sec?)

#define randOffsetNegPos(best, worst, i)
return randOffset(best, worst, i) * (random_func(i+32,2,true) * 2 - 1);

#define randOffset(best, worst, i)
return random_func(i, 1, false) * (remap(temp_level, 9, 1, best, worst));// * 0.6); 

#define remap(value, low1, high1, low2, high2)
return low2 + (value - low1) * (high2 - low2) / (high1 - low1);

#define target_player_rand
var player_targ = random_func(0,instance_number(oPlayer), true);
var i = 0;
with oPlayer if i == player_targ  && fake_stock > 0 other.ai_target = id; else i++;