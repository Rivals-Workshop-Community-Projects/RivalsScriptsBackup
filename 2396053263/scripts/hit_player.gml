//hit_player

//NSPECIAL GRAB FUNCTIONALITY (HIT_PLAYER)
//Edited by: Delta Parallax

//Grab the opponent, make sure nspecial_pos is updated for the ease.
if (my_hitboxID.attack == AT_NSPECIAL){
    nspecial_target = hit_player_obj;
    nspecial_pos = [floor(nspecial_target.x), floor(nspecial_target.y)];
}

//HEARTBREAK FUNCTIONALITY (HIT_PLAYER)
//By: Delta Parallax

//This code checks to see if the attack was a heart explosion triggered by the detonation move. If it was, jump to the endlag windows and stop the hit player.

//This code checks if the attack that hit the player is a move that allows a heart to be placed on the player, and the hitbox corresponds to one that can place a heart.
//If the above is true, the hit player hasn't been chained yet, and a heart isn't already breaking, then the debuff is applied and the chain appears.

heartHitPlayer();

#define heartHitPlayer

//If the heart hit the a player and if you are performing a move 

//Still experimental

// if (my_hitboxID.attack == AT_EXTRA_1 and attack = AT_NSPECIAL and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and window >= 4)
// {
//     window = window < 8 ? 7 : 10;
//     window_timer = 0;
//     iasa_script()
    
//     //Just to be sure.
//     hit_player_obj.hsp = 0;
//     hit_player_obj.vsp = 0;
//     exit;
// }

//Check conditions
var found;
found = array_find_index(heartAttacks, my_hitboxID.attack);
if (!hit_player_obj.clone and hit_player_obj.heartChainPlayer == noone and found != -1 and (array_find_index(heartAttackNumbers[found], my_hitboxID.hbox_num) != -1 or heartAttackNumbers[found][0] == -1) and !heartBreakInProgress)
{
    //Mark the player as chained
    hit_player_obj.heartChainPlayer = id;

    //Create the heart, giving it the chained player's id
    var hx, hy, heart;
    hx = hit_player_obj.x;
    hy = hit_player_obj.y - (hit_player_obj.char_height * .5);
    
    heart = instance_create(hx,hy,"obj_article1");
    heart.chainedPlayer = hit_player_obj;
    heart.heartChainsPos = findSpot();
    heart.depth = 0;
    
    //Transfer stats
    heart.heartBreakRadius = heartBreakRadius;
    heart.heartBreakDelay = heartBreakDelay;
    heart.heartReassembleDelay = heartReassembleDelay;
    heart.heartShakeMult = heartShakeMult;
    heart.heartDistanceThreshold = heartDistanceThreshold;
    heart.heartTension = heartTension;
    heart.heartFriction = heartFriction;
    heart.heartLerpVal = heartLerpVal;
    heart.heartBreakMaxTimer = heartBreakMaxTimer;
    heart.heartBreakDetectSelf = heartBreakDetectSelf;
    
    // if (hit_player_obj.url == "2233589685")
    // {
    //     heart.sprite_index = 
    // }

    //Add to array of current hearts
    heartChains[findSpot()] = heart;
}
// else
// {
//     print_debug("hit_player_obj.heartChainPlayer == noone: "+string(hit_player_obj.heartChainPlayer == noone));
//     print_debug("found != -1: "+string(found != -1));
//     print_debug("attack that would place a heart: "+string((array_find_index(heartAttackNumbers[found], my_hitboxID.hbox_num) != -1 or heartAttackNumbers[found][0] == -1)));
//     print_debug("!heartBreakInProgress: "+string(!heartBreakInProgress));
//     print_debug("|||||||||||||||||||||||||||||||||")
// }
#define findSpot
//Helper function for heartChains
for (var t = 0; t < array_length_1d(heartChains); t++)
{
    if (heartChains[t] == noone)
    {
        return t;
    }
}

return t;

