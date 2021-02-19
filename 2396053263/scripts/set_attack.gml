//set_attack

//HEARTBREAK FUNCTIONALITY (SET_ATTACK)
//By: Delta Parallax

//This code checks to see if the player is performing the attack that allows hearts to be broken, and if so, tells the hearts that they should be broken.

heartSetAttack();

#define heartSetAttack

//Check if the move allows detonation and make sure there are actually hearts in play.
if (attack == heartDetonationAttack and !array_equals(heartChains, []) and !heartBreakInProgress)
{
    //If so, loop through every element in the array
    for (var i = 0; i < array_length_1d(heartChains); i++)
    {
        //Noone means that a heart was placed on someone but it got removed, so ignore this case.
        if heartChains[i] != noone
        {
            heartBreakInProgress = true;
            //Play a sound, stop the article, and tell it to break.
            sound_play(heartSounds[0]);
            
            heartChains[i].hsp = 0;
            heartChains[i].vsp = 0; 
            
            heartChains[i].heartBreakSplitX[0] = heartChains[i].x;
            heartChains[i].heartBroken = true;
            heartChains[i].heartBreakState = 0;
        }
    }
}

user_event(13); //woag!