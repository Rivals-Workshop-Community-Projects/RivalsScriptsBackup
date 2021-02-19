//Saves the name of the character as abilitygiven
abilitygiven = 0

switch(select-1){
    case 1:
        abilitygiven = 1; //ZET
    break;
	case 2:
        abilitygiven = 2; //ORCANE
    break;
	case 4:
        abilitygiven = 3; //KRAGG
    break;
	case 3:
        abilitygiven = 4; //WRASTOR
    break;
	case 6:
        abilitygiven = 5; //MAYPUL
	break;
	case 5:
        abilitygiven = 6; //FORSBURN
    break;
	case 7:
        abilitygiven = 7; //ABSA
    break;
	case 8:
        abilitygiven = 8; //ETALUS
    break;
	case 9:
        abilitygiven = 9; //ORI
    break;
	case 10:
	    abilitygiven = 10; //RANNO
    break;
	case 11:
        abilitygiven = 11; //CLAIREN
    break;
	case 13:
        abilitygiven = 12; //ELLIANA
    break;
	case 12:
        abilitygiven = 13; //SYLVANOS
    break;
	case 14:
        abilitygiven = 14; //SHOVEL KNIGHT
    break;
    default:
	abilitygiven = ((real(url)+5) mod 15) +1
        //abilitygiven = 15; //MOLLO
    break;
}

if url = 1865940669 { //Sandbert
	abilitygiven = 17
}
if url = 1866016173 { //Guadua
	abilitygiven = 18
}

current_ability = 0
abilitygiven = kirbyability
swallowed = 0
