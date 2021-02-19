//HEARTBREAK FUNCTIONALITY (DEATH)
//By: Delta Parallax

//Basically loops through the array, deletes every heart chain, and unlinks players.
heartDeath();

#define heartDeath

//Loop through every element
for (var i = 0; i < array_length_1d(heartChains); i++)
{
    //Get the current element in the array.
    var h;
    h = heartChains[i];
    if (h != noone)
    {
        //Unlink players and destroy hearts.
        h.chainedPlayer.heartChainPlayer = noone;
        h.chainedPlayer = noone;
        instance_destroy(h);
    }
}

//Reset the array.
heartChains = [];

//Hearts aren't being broken, reset this variable.
heartBreakInProgress = false;