//hit_player

//NSPECIAL GRAB FUNCTIONALITY (HIT_PLAYER)
//Edited by: Delta Parallax
//Grab the opponent, make sure nspecial_pos is updated for the ease.

switch (my_hitboxID.attack)
{
    case AT_USPECIAL:
        if (my_hitboxID.hbox_num == 1 and vsp < 0 and uspecial_loops > 0) // check to see if it's a linking hit and you're moving upwards
        {
            var lerpam;
            lerpam = [0.1,0.07]
            if heartDebug
            {
                print_debug("HB "+ string(uspecial_loops) +" pos change: x="+string(hit_player_obj.x-lerp(floor(hit_player_obj.x), x + (16 * spr_dir),lerpam[0])) + ", y="+string(hit_player_obj.y-lerp(floor(hit_player_obj.y), y - 72,lerpam[1])))
                if uspecial_loops == 4 print_debug("||||||||||||||||||||||||||||||||||")
                
            }
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x + (16 * spr_dir),lerpam[0]) //update x
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y - 72,lerpam[1]) //update y
        }
    break;
    case AT_NSPECIAL:
    if (has_hit_player)
    {
        djumps = 0;
        nspecial_target = hit_player_obj;
        nspecial_pos = [floor(nspecial_target.x), floor(nspecial_target.y)];
    }
    break;
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
if (!my_hitboxID.was_parried and !hit_player_obj.clone and hit_player_obj.heartChainPlayer == noone and found != -1 and (array_find_index(heartAttackNumbers[found], my_hitboxID.hbox_num) != -1 or heartAttackNumbers[found][0] == -1) and !heartBreakInProgress)
{
    //play a sound
    sound_play(sound_get("heart_applied"))
    
    //Mark the player as chained
    hit_player_obj.heartChainPlayer = id;

    //Create the heart, giving it the chained player's id
    var hx, hy, heart;
    hx = hit_player_obj.x;
    hy = hit_player_obj.y - (hit_player_obj.char_height * .5);
    
    heart = instance_create(floor(hx),floor(hy),"obj_article1");
    heart.chainedPlayer = hit_player_obj;
    
    var find;
    find = findSpot();
    heart.heartChainsPos = find; 
    hit_player_obj.heartPosition = find;
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
    
    if (("heartbrakeCompatibility" in hit_player_obj) and hit_player_obj.heartbrakeCompatibility)
    {
        print("using")
        heart.useCompatibility = true;
        heart.articleSprites =  hit_player_obj.heartbrakeSprites;
        heart.sprite_index = hit_player_obj.heartbrakeSprites[4];
        heart.image_index = 0
    }
    // else
    // {
    //     heart.sprite_index = heartSprites[4];
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

