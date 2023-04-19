//aa
switch(attack){
    case AT_USTRONG: // Added for animation
        if(window == 2 && strong_charge > 0){
            image_index = ((strong_charge / 6) % 2) + 1;
        }
        break;
        
    default:
        break;
}