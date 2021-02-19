//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 5, 54, 123, 141); //Eyes
set_color_profile_slot(0, 1, 166, 115, 75); //Fur
set_color_profile_slot(0, 2, 219, 119, 101); //Tail,Ear
set_color_profile_slot(0, 3, 240, 236, 236); //Pants
set_color_profile_slot(0, 4, 255, 249, 249); //Shine
set_color_profile_slot(0, 0, 236, 141, 202); //Gauntlets


//COLOR RANGE (H,S,V)
set_color_profile_slot_range(5, 10, 75, 40); //Eye Range
set_color_profile_slot_range(1, 55, 50, 50);//Fur Range
set_color_profile_slot_range(2, 15, 40 , 1); //Tail/Ear
set_color_profile_slot_range(3, 10, 1 , 50); //Pants
set_color_profile_slot_range(4, 5, 5, 0); //Shine
set_color_profile_slot_range(0, 20, 50, 50); //Gauntlets


set_num_palettes( 16 );

//Blue Color
set_color_profile_slot(1, 5, 0, 50, 188); //Eyes Blue
set_color_profile_slot(1, 1, 226, 205, 179); //Fur Blue
set_color_profile_slot(1, 2, 221, 148, 148); //Tail Blue
set_color_profile_slot(1, 3, 30, 107, 145); //Pants Blue
set_color_profile_slot(1, 4, 255, 249, 249); //Shine Blue
set_color_profile_slot(1, 0, 198, 206, 227); //Gauntlets Blue


//Red Color
set_color_profile_slot(2, 5, 34, 82, 217); //Eyes Red
set_color_profile_slot(2, 1, 193, 158, 106); //Fur Red
set_color_profile_slot(2, 2, 143, 110, 89); //Tail Red
set_color_profile_slot(2, 3, 220, 25, 25); //Pants Red
set_color_profile_slot(2, 4, 255, 249, 249); //Shine Red
set_color_profile_slot(2, 0, 245, 198, 0); //Gauntlets Red


//Green Color
set_color_profile_slot(3, 5, 113, 155, 111); //Eyes Green
set_color_profile_slot(3, 1, 145, 86, 70); //Fur Green
set_color_profile_slot(3, 2, 143, 110, 89); //Tail Green
set_color_profile_slot(3, 3, 42, 59, 47); //Pants Green
set_color_profile_slot(3, 4, 255, 249, 249); //Shine Green
set_color_profile_slot(3, 0, 133, 197, 71); //Gauntlets Green


//Black Color
set_color_profile_slot(4, 5, 112, 28, 130); //Eyes Black
set_color_profile_slot(4, 1, 189, 188, 189); //Fur Black
set_color_profile_slot(4, 2, 186, 173, 162); //Tail Black
set_color_profile_slot(4, 3, 77, 72, 72); //Pants Black
set_color_profile_slot(4, 4, 255, 249, 249); //Shine Black
set_color_profile_slot(4, 0, 117, 116, 116); //Gauntlets Black


//Garnet
set_color_profile_slot(5, 5, 245, 237, 76); //Eyes Yellow
set_color_profile_slot(5, 1, 107, 64, 93); //Fur Yellow
set_color_profile_slot(5, 2, 81, 80, 82); //Tail Yellow
set_color_profile_slot(5, 3, 71, 65, 79); //Pants Yellow
set_color_profile_slot(5, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(5, 0, 228, 18, 102); //Gauntlets Yellow

//Seasonal Skin
switch (get_match_setting(SET_SEASON)) {
    case 1: //valentine's day
        set_color_profile_slot(6, 5, 247, 53, 157); //Eyes Holiday
        set_color_profile_slot(6, 1, 100, 73, 57); //Fur Holiday
        set_color_profile_slot(6, 2, 241, 216, 231); //Tail Holiday
        set_color_profile_slot(6, 3, 255, 88, 203); //Pants Holiday
        set_color_profile_slot(6, 4, 255, 249, 249); //Shine Holiday
        set_color_profile_slot(6, 0, 241, 45, 98); //Gauntlets Holiday
    break;
    
    case 2: //summer
        set_color_profile_slot(6, 5, 34, 180, 56); //Eyes Holiday
        set_color_profile_slot(6, 1, 246, 186, 119); //Fur Holiday
        set_color_profile_slot(6, 2, 124, 75, 44); //Tail Holiday
        set_color_profile_slot(6, 3, 172, 249, 255); //Pants Holiday
        set_color_profile_slot(6, 4, 255, 249, 249); //Shine Holiday
        set_color_profile_slot(6, 0, 255, 145, 185); //Gauntlets Holiday
    break;
    default:
    //case 3: //halloween
        set_color_profile_slot(6, 5, 209, 9, 23); //Eyes Holiday
        set_color_profile_slot(6, 1, 142, 109, 92); //Fur Holiday
        set_color_profile_slot(6, 2, 110, 153, 134); //Tail Holiday
        set_color_profile_slot(6, 3, 161, 206, 98); //Pants Holiday
        set_color_profile_slot(6, 4, 255, 249, 249); //Shine Holiday
        set_color_profile_slot(6, 0, 159, 59, 189); //Gauntlets Holiday
    break;
    case 4: //christmas
        set_color_profile_slot(6, 5, 0, 50, 188); //Eyes Holiday
        set_color_profile_slot(6, 1, 223, 196, 141); //Fur Holiday
        set_color_profile_slot(6, 2, 247, 74, 142); //Tail Holiday
        set_color_profile_slot(6, 3, 89, 193, 53); //Pants Holiday
        set_color_profile_slot(6, 4, 255, 249, 249); //Shine Holiday
        set_color_profile_slot(6, 0, 236, 54, 67); //Gauntlets Holiday
    break;
}
//Vaporwave 
set_color_profile_slot(7, 5, 104, 62, 144); //Eyes 
set_color_profile_slot(7, 1, 221, 221, 211); //Fur 
set_color_profile_slot(7, 2, 154, 136, 113); //Tail 
set_color_profile_slot(7, 3, 240, 121, 169); //Pants 
set_color_profile_slot(7, 4, 255, 249, 249); //Shine 
set_color_profile_slot(7, 0, 102, 248, 169); //Gauntlets 

//Daisy
set_color_profile_slot(8, 5, 54, 123, 141); //Eyes Yellow
set_color_profile_slot(8, 1, 186, 88, 65); //Fur Yellow
set_color_profile_slot(8, 2, 233, 164, 84); //Tail Yellow
set_color_profile_slot(8, 3, 255, 137, 9); //Pants Yellow
set_color_profile_slot(8, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(8, 0, 25, 241, 148); //Gauntlets Yellow

//Champion (SlimePuffen)
set_color_profile_slot(9, 5, 22, 217, 148); //Eyes Yellow
set_color_profile_slot(9, 1, 153, 215, 242); //Fur Yellow
set_color_profile_slot(9, 2, 85, 133, 104); //Tail Yellow
set_color_profile_slot(9, 3, 245, 219, 139); //Pants Yellow
set_color_profile_slot(9, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(9, 0, 23, 166, 115); //Gauntlets Yellow
//Domon
set_color_profile_slot(10, 5, 218, 11, 62); //Eyes Yellow
set_color_profile_slot(10, 1, 224, 173, 128); //Fur Yellow
set_color_profile_slot(10, 2, 233, 164, 84); //Tail Yellow
set_color_profile_slot(10, 3, 190, 185, 173); //Pants Yellow
set_color_profile_slot(10, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(10, 0, 46, 122, 60); //Gauntlets Yellow


//Ryu
set_color_profile_slot(11, 5, 54, 123, 141); //Eyes Yellow
set_color_profile_slot(11, 1, 154, 113, 79); //Fur Yellow
set_color_profile_slot(11, 2, 233, 181, 135); //Tail Yellow
set_color_profile_slot(11, 3, 241, 240, 229); //Pants Yellow
set_color_profile_slot(11, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(11, 0, 218, 11, 62); //Gauntlets Yellow

//Yang
set_color_profile_slot(12, 5, 215, 123, 186); //Eyes Yellow
set_color_profile_slot(12, 1, 235, 202, 127); //Fur Yellow
set_color_profile_slot(12, 2, 248, 221, 196); //Tail Yellow
set_color_profile_slot(12, 3, 70, 48, 37); //Pants Yellow
set_color_profile_slot(12, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(12, 0, 237, 119, 41); //Gauntlets Yellow

//Rivalry - Ash
set_color_profile_slot(13, 5, 69, 47, 54); //Eyes Yellow
set_color_profile_slot(13, 1, 243, 223, 158); //Fur Yellow
set_color_profile_slot(13, 2, 60, 58, 53); //Tail Yellow
set_color_profile_slot(13, 3, 225, 69, 83); //Pants Yellow
set_color_profile_slot(13, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(13, 0, 99, 155, 255); //Gauntlets Yellow

//Nexus 
set_color_profile_slot(14, 5, 45, 184, 102); //Eyes Yellow
set_color_profile_slot(14, 1, 130, 130, 170); //Fur Yellow
set_color_profile_slot(14, 2, 219, 119, 101); //Tail Yellow
set_color_profile_slot(14, 3, 231, 225, 238); //Pants Yellow
set_color_profile_slot(14, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(14, 0, 198, 141, 236); //Gauntlets Yellow

//G7
set_color_profile_slot(15, 5, 255, 237, 238); //Eyes Yellow
set_color_profile_slot(15, 1, 57, 51, 51); //Fur Yellow
set_color_profile_slot(15, 2, 106, 99, 99); //Tail Yellow
set_color_profile_slot(15, 3, 196, 33, 44); //Pants Yellow
set_color_profile_slot(15, 4, 255, 249, 249); //Shine Yellow
set_color_profile_slot(15, 0, 238, 238, 238); //Gauntlets Yellow