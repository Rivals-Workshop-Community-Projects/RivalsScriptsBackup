//user_event 1
//update chao sounds
//NOTE TO SELF: if i want to add custom sound compatibility, basically everything here from [chao_sound_bank] needs to be set up by the character's dev
//NOTE TO OTHERS: ....what are you doing here? ah whatever if you see this you can just mess with this code ig

if ("chao_sound_type" not in owner) //if the owner doesn't control the sound type, automatically set it up
{
    switch (chao_type)
    {
        case 0: case 1: case 2: chao_sound_type = 1; break;
        case 3: chao_sound_type = 2; break;
        case 4: chao_sound_type = 3; break;
    }
}

chao_sound_bank = [[],[],[]]; // re/set all sounds used by the chao
chao_sound_amounts = [0, 0, 0]; // re/set amount of sounds for every action as a number (intro sounds, kill sounds, death sounds)

prefix = "";
switch (chao_sound_type) //set up sound prefix + amount
{
    case 1: //normal
        prefix = "norm_";
        chao_sound_amounts = [5, 4, 4];
        break;
    case 2: //omochao
        prefix = "omo_";
        chao_sound_amounts = [3, 4, 3];
        break;
    case 3: //ssl
        prefix = "ssl_";
        chao_sound_amounts = [1, 1, 1];
        break;
}

//set up nerw array
if (chao_sound_type > 0) //0 = mute so no need to put in sounds
{
    for (var i = 1; i <= chao_sound_amounts[0]; i++) array_push(chao_sound_bank[0], "chao_" + string(prefix) + "intro" + (chao_sound_amounts[0] > 1 ? (string(i)) : ""));
    for (var i = 1; i <= chao_sound_amounts[1]; i++) array_push(chao_sound_bank[1], "chao_" + string(prefix) + "kill" + (chao_sound_amounts[1] > 1 ? (string(i)) : ""));
    for (var i = 1; i <= chao_sound_amounts[2]; i++) array_push(chao_sound_bank[2], "chao_" + string(prefix) + "death" + (chao_sound_amounts[2] > 1 ? (string(i)) : ""));
}