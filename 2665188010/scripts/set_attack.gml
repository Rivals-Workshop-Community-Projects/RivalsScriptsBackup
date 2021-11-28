//set_attack

switch(attack){
    case AT_NSPECIAL:
        if !azelf_futureready attack = AT_DSPECIAL;
        break;
    case AT_DSPECIAL:
        if azelf_futureready attack = AT_DSPECIAL_2;
        break;
}