if (rock == true)
{
    switch (attack) 
    {
        case AT_NSPECIAL: //rock smash
        {
            attack = AT_NSPECIAL_2;
        }
         break; 
         
        case AT_DSPECIAL: //Seismic smash
        {
            attack = AT_DSPECIAL_2;
        }
         break;
         
        case AT_FSPECIAL: //Jackhammer
        {
            attack = AT_FSPECIAL_2;
        }
         break;    
         
        case AT_USPECIAL: //Rising comet
        {
            attack = AT_USPECIAL_2;
        }
         break; 
         
        case AT_FSTRONG: //rock toss forward
        case AT_FAIR:
        {
            attack = AT_FSTRONG_2;
        }
        break; 
        
        case AT_USTRONG: //rock toss up
        case AT_UAIR:
        {
            //attack = AT_USTRONG_2;
        }
        break;         
}
}

