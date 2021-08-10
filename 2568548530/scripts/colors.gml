/*

//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 255, 255, 255); //COLOR SLOT 0

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 360, 100, 100);

//Blue Color
set_color_profile_slot(1, 0, 0, 0, 255);

//Red Color
set_color_profile_slot(2, 0, 255, 0, 0);

//Green Color
set_color_profile_slot(3, 0, 0, 255, 0);

//Black Color
set_color_profile_slot(4, 0, 0, 0, 0);

//Purple Color
set_color_profile_slot(5, 0, 255, 0, 255);

*/


/*

set_num_palettes(7);

//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 51, 102, 52); //FUR DARK
set_color_profile_slot(0, 1, 178, 205, 152); //FUR LIGHT
set_color_profile_slot(0, 2, 136, 104, 93); //WOOD

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 20, 11, 19);
set_color_profile_slot_range(1, 3, 23, 18);
set_color_profile_slot_range(2, 2, 9, 35);

//Blue Color
set_color_profile_slot(1, 0, 65, 111, 153);
set_color_profile_slot(1, 1, 169, 196, 222);
set_color_profile_slot(1, 2, 171, 182, 185);

//Red Color
set_color_profile_slot(2, 0, 146, 44, 44);
set_color_profile_slot(2, 1, 216, 175, 175);
set_color_profile_slot(2, 2, 94, 82, 79);

//Green Color
set_color_profile_slot(3, 0, 124, 115, 19);
set_color_profile_slot(3, 1, 205, 204, 152);
set_color_profile_slot(3, 2, 111, 133, 108);

//Black Color
set_color_profile_slot(4, 0, 93, 93, 93);
set_color_profile_slot(4, 1, 205, 205, 205);
set_color_profile_slot(4, 2, 107, 57, 57);

//Purple Color
set_color_profile_slot(5, 0, 82, 51, 102);
set_color_profile_slot(5, 1, 187, 152, 205);
set_color_profile_slot(5, 2, 48, 98, 112);

//Ghost Color
set_color_profile_slot(6, 0, 146, 205, 199);
set_color_profile_slot(6, 1, 193, 210, 208);
set_color_profile_slot(6, 2, 121, 151, 148);

*/


/*

// TESTED COLOR SWAP, works but not ehough shades to have each sticker on cube be individual

//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 255, 241, 230); //white slightly changed (from 232)

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 0, 0, 0);


//set_num_palettes(0);

//just all slots the same..
set_color_profile_slot(1, 0, 255, 241, 230);//0, 0,0,0);
set_color_profile_slot(2, 0, 255, 241, 230);
set_color_profile_slot(3, 0, 255, 241, 230);
set_color_profile_slot(4, 0, 255, 241, 230);
set_color_profile_slot(5, 0, 255, 241, 230);

*/





//palette swap for cube turning (instead of damage scramble)

//set_color_profile_slot(0, 0, 255, 241, 232); //white
//set_color_profile_slot(0, 1, 152, 220, 255); //white shade
//set_color_profile_slot(0, 2, 224, 60, 40); //red
//set_color_profile_slot(0, 3, 135, 22, 70); //red shade


set_color_profile_slot(70, 0, 0, 0, 0);//for hud in lvl select


// DEFAULT COLOR (R, G, B)

set_color_profile_slot(0, 0, 255, 241, 232); //white
set_color_profile_slot(0, 1, 152, 220, 255); //white shade (blue)
//set_color_profile_slot_range(0, 180, 32, 1);//not sure tbh... maybe white needs same hue as blue
//set_color_profile_slot_range(0, 168, 4, 15);//TODO: use the closer white shade

set_color_profile_slot(0, 3, 255, 255, 38); //yellow
//set_color_profile_slot_range(3, 29, 9, 5); //yellow shade
set_color_profile_slot(0, 7, 246, 143, 55); //yellow shade

set_color_profile_slot(0, 6, 255, 163, 0); //orange
set_color_profile_slot_range(6, 18, 17, 34); //orange shade 
//set_color_profile_slot(0, 7, 173, 78, 26); //orange shade

set_color_profile_slot(0, 2, 224, 60, 40); //red
set_color_profile_slot_range(2, 33, 2, 36); //red shade

set_color_profile_slot(0, 4, 0, 231, 86); //green
set_color_profile_slot_range(4, 15, 1, 39); //green shade

set_color_profile_slot(0, 5, 41, 173, 255); //blue
set_color_profile_slot_range(5, 7, 18, 14); //blue shade
/**/


// ALT 1, try swapping colors... nvm doesnt work easily
/*
set_color_profile_slot(1, 0, 255, 241, 232); //white
set_color_profile_slot(1, 1, 152, 220, 255); //white shade (blue)
//set_color_profile_slot(1, 2, 224, 60, 40); //red
set_color_profile_slot(1, 4, 224, 60, 40); //red
set_color_profile_slot(1, 3, 255, 240, 36); //yellow
set_color_profile_slot(1, 4, 0, 231, 86); //green
//set_color_profile_slot(1, 2, 0, 231, 86); //green
set_color_profile_slot(1, 5, 41, 173, 255); //blue
set_color_profile_slot(1, 6, 255, 163, 0); //orange
set_color_profile_slot(1, 7, 246, 143, 55); //yellow shade
*/


//for now fill all alts with  default
/*for(var i = 1; i < 6; i++)
{
    set_color_profile_slot(i, 0, 255, 241, 232); //white
    set_color_profile_slot(i, 1, 152, 220, 255); //white shade (blue)
    set_color_profile_slot(i, 2, 224, 60, 40); //red
    set_color_profile_slot(i, 3, 255, 240, 36); //yellow
    set_color_profile_slot(i, 4, 0, 231, 86); //green
    set_color_profile_slot(i, 5, 41, 173, 255); //blue
    set_color_profile_slot(i, 6, 255, 163, 0); //orange
    set_color_profile_slot(i, 7, 246, 143, 55); //yellow shade
}*/


set_num_palettes(11);

// ALT 1 (moody)
var moody = 1;
set_color_profile_slot(moody, 0, 243, 239, 198); //white
set_color_profile_slot(moody, 1, 245, 183, 132); //white shade (blue)
set_color_profile_slot(moody, 3, 235, 219, 139); //yellow
set_color_profile_slot(moody, 7, 246, 143, 55); //yellow shade
set_color_profile_slot(moody, 6, 207, 139, 62); //orange
set_color_profile_slot(moody, 2, 190, 36, 43); //red
set_color_profile_slot(moody, 4, 32, 181, 98); //green
set_color_profile_slot(moody, 5, 68, 179, 173); //blue

/*
// ALT 2 (dull)
var dull = 1;
set_color_profile_slot(dull, 0, 242, 242, 242); //white
set_color_profile_slot(dull, 1, 192, 203, 220); //white shade (blue)
set_color_profile_slot(dull, 3, 230, 214, 0); //yellow
set_color_profile_slot(dull, 7, 255, 147, 60); //yellow shade
set_color_profile_slot(dull, 6, 230, 136, 37); //orange
set_color_profile_slot(dull, 2, 204, 51, 51); //red
set_color_profile_slot(dull, 4, 89, 176, 12); //green
set_color_profile_slot(dull, 5, 73, 120, 243); //blue
*/

// ALT 3 (dark)
var dark = 2;
set_color_profile_slot(dark, 0, 212, 179, 159); //white
set_color_profile_slot(dark, 1, 166, 128, 118); //white shade (blue)
set_color_profile_slot(dark, 3, 217, 176, 52); //yellow
set_color_profile_slot(dark, 7, 171, 105, 55); //yellow shade
set_color_profile_slot(dark, 6, 194, 118, 31); //orange
set_color_profile_slot(dark, 2, 153, 57, 57); //red
set_color_profile_slot(dark, 4, 19, 157, 8); //green
set_color_profile_slot(dark, 5, 65, 93, 102); //blue

// ALT 4 (pastel)
var pastel = 3;
set_color_profile_slot(pastel, 0, 226, 215, 181); //white
set_color_profile_slot(pastel, 1, 197, 151, 130); //white shade (blue)
set_color_profile_slot(pastel, 3, 254, 231, 97); //yellow
set_color_profile_slot(pastel, 7, 254, 174, 52); //yellow shade
set_color_profile_slot(pastel, 6, 250, 190, 70); //orange
set_color_profile_slot(pastel, 2, 255, 119, 168); //red
set_color_profile_slot(pastel, 4, 190, 235, 113); //green
set_color_profile_slot(pastel, 5, 152, 220, 255); //blue

// ALT 5 (bright / neon)
var neon = 5;
set_color_profile_slot(neon, 0, 255, 241, 232); //white
set_color_profile_slot(neon, 1, 213, 156, 252); //white shade (blue)
set_color_profile_slot(neon, 3, 255, 255, 6); //yellow
set_color_profile_slot(neon, 7, 173, 78, 26); //yellow shade
set_color_profile_slot(neon, 6, 255, 111, 0); //orange
set_color_profile_slot(neon, 2, 238, 3, 255); //red
set_color_profile_slot(neon, 4, 132, 255, 31); //green
set_color_profile_slot(neon, 5, 78, 231, 229); //blue

// ALT 6 (gba)
var gba = 7;
set_color_profile_slot(gba, 0, 217, 240, 200); //white
set_color_profile_slot(gba, 1, 131, 185, 109); //white shade (blue)
set_color_profile_slot(gba, 3, 169, 213, 136); //yellow
set_color_profile_slot(gba, 7, 108, 145, 89); //yellow shade
set_color_profile_slot(gba, 6, 139, 172, 14); //orange
set_color_profile_slot(gba, 2, 49, 98, 49); //red
set_color_profile_slot(gba, 4, 154, 188, 16); //green
set_color_profile_slot(gba, 5, 139, 172, 118); //blue

// ALT 7 (grey scale)
var grey = 8;
set_color_profile_slot(grey, 0, 255, 255, 255); //white
set_color_profile_slot(grey, 1, 192, 203, 220); //white shade (blue)
set_color_profile_slot(grey, 3, 192, 203, 220); //yellow
set_color_profile_slot(grey, 7, 139, 155, 180); //yellow shade
set_color_profile_slot(grey, 6, 90, 105, 136); //orange
set_color_profile_slot(grey, 2, 58, 68, 102); //red
set_color_profile_slot(grey, 4, 139, 155, 180); //green
set_color_profile_slot(grey, 5, 38, 43, 68); //blue

// ALT 8 (silver)
var silver = 9;
set_color_profile_slot(silver, 0, 235, 235, 235); //white
set_color_profile_slot(silver, 1, 177, 180, 183); //white shade (blue)
set_color_profile_slot(silver, 3, 201, 202, 206); //yellow
set_color_profile_slot(silver, 7, 158, 158, 167); //yellow shade
set_color_profile_slot(silver, 6, 178, 182, 194); //orange
set_color_profile_slot(silver, 2, 158, 158, 167); //red
set_color_profile_slot(silver, 4, 192, 203, 220); //green
set_color_profile_slot(silver, 5, 90, 105, 136); //blue

// ALT 9 (gold)
var gold = 10;
set_color_profile_slot(gold, 0, 255, 244, 184); //white
set_color_profile_slot(gold, 1, 255, 207, 64); //white shade (blue)
set_color_profile_slot(gold, 3, 255, 220, 114); //yellow
set_color_profile_slot(gold, 7, 246, 143, 55); //yellow shade
set_color_profile_slot(gold, 6, 255, 220, 114); //orange
set_color_profile_slot(gold, 2, 244, 188, 4); //red
set_color_profile_slot(gold, 4, 250, 190, 70); //green
set_color_profile_slot(gold, 5, 230, 167, 12); //blue

// ALT 10 (LGTBQ / rainbow)
var lgtbq = 6;
set_color_profile_slot(lgtbq, 0, 231, 126, 230);// 159, 0, 192); //white
set_color_profile_slot(lgtbq, 1, 159, 0, 192);// 112, 0, 163); //white shade (blue)
set_color_profile_slot(lgtbq, 3, 255, 255, 0); //yellow
set_color_profile_slot(lgtbq, 7, 230, 165, 53); //yellow shade
set_color_profile_slot(lgtbq, 6, 255, 128, 1); //orange
set_color_profile_slot(lgtbq, 2, 247, 0, 0); //red
set_color_profile_slot(lgtbq, 4, 2, 121, 64); //green
set_color_profile_slot(lgtbq, 5, 139, 155, 180); //blue

/*
// ALT 11 (pico8 alt)
var alt = 4;
set_color_profile_slot(alt, 0, 194, 195, 199); //white
set_color_profile_slot(alt, 1, 95, 87, 79); //white shade (blue)
set_color_profile_slot(alt, 3, 235, 188, 157); //yellow
set_color_profile_slot(alt, 7, 171, 82, 54); //yellow shade
set_color_profile_slot(alt, 6, 171, 82, 54); //orange
set_color_profile_slot(alt, 2, 255, 119, 168); //red
set_color_profile_slot(alt, 4, 19, 157, 8); //green
set_color_profile_slot(alt, 5, 131, 118, 156); //blue
*/

// ALT 11 (weird)
var weird = 4;
set_color_profile_slot(weird, 0, 255, 204, 170); //white
set_color_profile_slot(weird, 1, 255, 119, 168); //white shade (blue)
set_color_profile_slot(weird, 3, 209, 116, 73); //yellow
set_color_profile_slot(weird, 7, 153, 57, 57); //yellow shade
set_color_profile_slot(weird, 6, 238, 3, 255); //orange
set_color_profile_slot(weird, 2, 106, 49, 202); //red
set_color_profile_slot(weird, 4, 120, 204, 168); //green
set_color_profile_slot(weird, 5, 90, 105, 136); //blue
/*
// ALT 12 (bright)
var bright = 12;
set_color_profile_slot(bright, 0, 255, 255, 255); //white
set_color_profile_slot(bright, 1, 226, 215, 181); //white shade (blue)
set_color_profile_slot(bright, 3, 255, 255, 56); //yellow
set_color_profile_slot(bright, 7, 247, 197, 47); //yellow shade
set_color_profile_slot(bright, 6, 255, 170, 0); //orange
set_color_profile_slot(bright, 2, 255, 108, 64); //red
set_color_profile_slot(bright, 4, 0, 255, 144); //green
set_color_profile_slot(bright, 5, 64, 229, 255); //blue
*/

    
// ALT 10 (complete black)
//for(var i = 0; i < 8; i++)
//    set_color_profile_slot(10, i, 29,43,83);
//set_color_profile_slot(10, 1, 33,22,64); //white shade (blue)
//set_color_profile_slot(10, 7, 33,22,64); //yellow shade


//BIG TODO: this will never work bcz my colors have too extreme shades
//          instead make every sprite white with a bit of offset & manually color via script
//          from https://cl-9a.github.io/RoAColorsGmlHelper/
//          these white values & ranges work for my main colors equally (but dont look amazing)
//          especially white shade is boring & red shade too dark... so maybe use 2 leftover color slots
/*
// DEFAULT COLOR

// 1
set_color_profile_slot( 0, 0, 255, 250, 252 );
set_color_profile_slot_range( 0, 7, 1, 51 );

// 2
set_color_profile_slot( 0, 1, 255, 255, 252 );
set_color_profile_slot_range( 1, 1, 2, 51 );

// 3
set_color_profile_slot( 0, 2, 252, 255, 252 );
set_color_profile_slot_range( 2, 1, 2, 49 );

// 4
set_color_profile_slot( 0, 3, 252, 255, 255 );
set_color_profile_slot_range( 3, 1, 1, 56 );

// 5
set_color_profile_slot( 0, 4, 252, 252, 255 );
set_color_profile_slot_range( 4, 1, 2, 51 );

// 6
set_color_profile_slot( 0, 5, 255, 252, 255 );
set_color_profile_slot_range( 5, 1, 2, 49 );


// ALTERNATE COLORS
set_num_palettes( 7 );

// unnamed alt palette
set_color_profile_slot( 1, 0, 41, 173, 255 ); //1
set_color_profile_slot( 1, 1, 41, 173, 255 ); //2
set_color_profile_slot( 1, 2, 41, 173, 255 ); //3
set_color_profile_slot( 1, 3, 41, 173, 255 ); //4
set_color_profile_slot( 1, 4, 41, 173, 255 ); //5
set_color_profile_slot( 1, 5, 41, 173, 255 ); //6

// unnamed alt palette
set_color_profile_slot( 2, 0, 255, 240, 36 ); //1
set_color_profile_slot( 2, 1, 255, 240, 36 ); //2
set_color_profile_slot( 2, 2, 255, 240, 36 ); //3
set_color_profile_slot( 2, 3, 255, 240, 36 ); //4
set_color_profile_slot( 2, 4, 255, 240, 36 ); //5
set_color_profile_slot( 2, 5, 255, 240, 36 ); //6

// unnamed alt palette
set_color_profile_slot( 3, 0, 255, 163, 0 ); //1
set_color_profile_slot( 3, 1, 255, 163, 0 ); //2
set_color_profile_slot( 3, 2, 255, 163, 0 ); //3
set_color_profile_slot( 3, 3, 255, 163, 0 ); //4
set_color_profile_slot( 3, 4, 255, 163, 0 ); //5
set_color_profile_slot( 3, 5, 255, 163, 0 ); //6

// unnamed alt palette
set_color_profile_slot( 4, 0, 0, 231, 86 ); //1
set_color_profile_slot( 4, 1, 0, 231, 86 ); //2
set_color_profile_slot( 4, 2, 0, 231, 86 ); //3
set_color_profile_slot( 4, 3, 0, 231, 86 ); //4
set_color_profile_slot( 4, 4, 0, 231, 86 ); //5
set_color_profile_slot( 4, 5, 0, 231, 86 ); //6

// unnamed alt palette
set_color_profile_slot( 5, 0, 224, 60, 40 ); //1
set_color_profile_slot( 5, 1, 224, 60, 40 ); //2
set_color_profile_slot( 5, 2, 224, 60, 40 ); //3
set_color_profile_slot( 5, 3, 224, 60, 40 ); //4
set_color_profile_slot( 5, 4, 224, 60, 40 ); //5
set_color_profile_slot( 5, 5, 224, 60, 40 ); //6

// unnamed alt palette
set_color_profile_slot( 6, 0, 255, 241, 232 ); //1
set_color_profile_slot( 6, 1, 255, 241, 232 ); //2
set_color_profile_slot( 6, 2, 255, 241, 232 ); //3
set_color_profile_slot( 6, 3, 255, 241, 232 ); //4
set_color_profile_slot( 6, 4, 255, 241, 232 ); //5
set_color_profile_slot( 6, 5, 255, 241, 232 ); //6
*/


// instead of figuring out where to use ranges and where shades, just use greys & ranges:

/*
set_color_profile_slot(0, 0, 255, 255, 255);
set_color_profile_slot_range(0, 1, 1, 17);

set_color_profile_slot(0, 1, 204, 204, 204);
set_color_profile_slot_range(1, 1, 1, 16);

set_color_profile_slot(0, 2, 153, 153, 153);
set_color_profile_slot_range(2, 1, 1, 13);

set_color_profile_slot(0, 3, 115, 115, 115);
set_color_profile_slot_range(3, 1, 1, 12);

set_color_profile_slot(0, 4, 77, 77, 77);
set_color_profile_slot_range(4, 1, 1, 6);

set_color_profile_slot(0, 5, 51, 51, 51);
set_color_profile_slot_range(5, 1, 1, 7);
*/

// nvm too close together, use colors, but shades more close


/*
//works to red
set_color_profile_slot(0, 0, 242, 243, 245); //white
set_color_profile_slot_range(0, 9, 11, 5);

//works to green
set_color_profile_slot(0, 2, 224, 60, 40); //red
set_color_profile_slot_range(2, 17, 9, 16); //red shade

//works to red
set_color_profile_slot(0, 3, 255, 240, 36); //yellow
set_color_profile_slot_range(3, 11, 3, 7); //yellow shade

//works to red
set_color_profile_slot(0, 4, 0, 231, 86); //green
set_color_profile_slot_range(4, 18, 1, 28); //green shade

//works to red
set_color_profile_slot(0, 5, 41, 173, 255); //blue
set_color_profile_slot_range(5, 7, 5, 14); //blue shade

//works to red
set_color_profile_slot(0, 6, 255, 163, 0); //orange
set_color_profile_slot_range(6, 14, 6, 14); //orange shade

// -------> ALL WORK TO SWAP BUT VERY LITTLE CONTRAST
*/


//TODO: if final, copy like below

//set_num_palettes(2); //doesnt work, so all the same:
/*
set_color_profile_slot(1, 0, 255, 241, 232); //white
set_color_profile_slot(1, 1, 152, 220, 255); //white shade
set_color_profile_slot(1, 2, 224, 60, 40); //red
set_color_profile_slot(2, 0, 255, 241, 232); //white
set_color_profile_slot(2, 1, 152, 220, 255); //white shade
set_color_profile_slot(2, 2, 224, 60, 40); //red
set_color_profile_slot(3, 0, 255, 241, 232); //white
set_color_profile_slot(3, 1, 152, 220, 255); //white shade
set_color_profile_slot(3, 2, 224, 60, 40); //red
set_color_profile_slot(4, 0, 255, 241, 232); //white
set_color_profile_slot(4, 1, 152, 220, 255); //white shade
set_color_profile_slot(4, 2, 224, 60, 40); //red
set_color_profile_slot(5, 0, 255, 241, 232); //white
set_color_profile_slot(5, 1, 152, 220, 255); //white shade
set_color_profile_slot(5, 2, 224, 60, 40); //red
*/
