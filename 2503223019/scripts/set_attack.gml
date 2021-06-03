user_event(13);

if (attack == AT_TAUNT)
{if (up_down)
	{   attack = AT_TAUNT_2;}}


if (attack == AT_DSPECIAL)
{
    var TOTAL_WEIGHTS = 10;
    var random_dspec = random_func(3, TOTAL_WEIGHTS, true);
    
    switch (random_dspec)
    {
        case 0:
            //nothing happens, stay on combust variant
            break;
        case 1:
        case 2:
        case 3:
            // "Courage" variant
            attack = AT_DSPECIAL_AIR;
            break;
        case 4:
        case 5:
        case 6:
            // "Limit" variant
            attack = AT_DTHROW;
            break;
        case 7:
            attack = AT_FSPECIAL_2
            break;
        case 8:
             attack = AT_FSPECIAL_2
            break;
        case 9:
             attack = AT_FSPECIAL_2
            break;
        //as many cases as you need, up to (but not including) "TOTAL_WEIGHTS"
        default: //error prevention case; just because things could AND WILL go wrong
            // "Swallow" variant
            attack = AT_DSPECIAL_2;
            break;
    }
}