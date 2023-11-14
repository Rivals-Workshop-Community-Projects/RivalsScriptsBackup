//colors.gml

//details
//  sonic's colors are a little funky
//  all of his alts and the //init_shader code are in [user_event15.gml]
//  this is so he can have dynamic color changes
//  he still needs his basic setup here though

//base colors
set_color_profile_slot(0, 0, 61, 206, 255); //aura
set_color_profile_slot(0, 1, 38, 58, 246); //blue
set_color_profile_slot(0, 2, 2, 149, 2); //green
set_color_profile_slot(0, 3, 255, 215, 170); //skin
set_color_profile_slot(0, 4, 255, 0, 0); //red
set_color_profile_slot(0, 5, 170, 255, 0); //white - clothes
set_color_profile_slot(0, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(0, 7, 249, 58, 255); //portrait light

//super sonic colors
set_color_profile_slot(0, 8, 255, 200, 0); //aura (super)
set_color_profile_slot(0, 9, 201, 129, 31); ///blue (super)
set_color_profile_slot(0, 10, 255, 0, 0); //green (super)
set_color_profile_slot(0, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(0, 12, 999, 999, 999); //red (super)
set_color_profile_slot(0, 13, 255, 255, 255); //white - clothes (super)
set_color_profile_slot(0, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(0, 15, 255, 248, 183); //portrait light (super)

//ranges
set_color_profile_slot_range(0, 17, 44, 18); //aura
set_color_profile_slot_range(1, 1, 9, 57); //blue
set_color_profile_slot_range(2, 8, 2, 42); //green
set_color_profile_slot_range(3, 16, 17, 31); //skin
set_color_profile_slot_range(4, 6, 2, 43); //red
set_color_profile_slot_range(5, 1, 1, 49); //white - clothes
set_color_profile_slot_range(6, 1, 1, 20); //white - eyes
set_color_profile_slot_range(7, 1, 22, 36); //portrait light

var pal_num = 0;

//////////////////////////////////////////////////////////// ALTERNATE COLORS ////////////////////////////////////////////////////////////

pal_num ++; //1 - eggman (eggman nega)
set_color_profile_slot(pal_num, 0, 222, 52, 0); //aura
set_color_profile_slot(pal_num, 1, 135, 62, 36); //blue
set_color_profile_slot(pal_num, 2, 19, 38, 209); //green
set_color_profile_slot(pal_num, 3, 252, 190, 146); //skin
set_color_profile_slot(pal_num, 4, 26, 30, 40); //red
set_color_profile_slot(pal_num, 5, 240, 40, 0); //white - clothes
set_color_profile_slot(pal_num, 6, 58, 124, 224); //white - eyes
set_color_profile_slot(pal_num, 7, 199, 112, 29); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 117, 135, 140); //blue (super)
set_color_profile_slot(pal_num, 10, 19, 38, 209); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 186, 19, 19); //red (super)
set_color_profile_slot(pal_num, 13, 255, 211, 53); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 37, 58, 196); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; //2 - tails (super tails)
set_color_profile_slot(pal_num, 0, 255, 228, 107); //aura
set_color_profile_slot(pal_num, 1, 255, 174, 13); //blue
set_color_profile_slot(pal_num, 2, 0, 130, 230); //green
set_color_profile_slot(pal_num, 3, 247, 251, 252); //skin
set_color_profile_slot(pal_num, 4, 242, 64, 10); //red
set_color_profile_slot(pal_num, 5, 242, 252, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 242, 252, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 228, 59); //portrait light
set_color_profile_slot(pal_num, 8, 255, 200, 0); //aura (super)
set_color_profile_slot(pal_num, 9, 222, 163, 76); //blue (super)
set_color_profile_slot(pal_num, 10, 227, 79, 0); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; //3 - knuckles (hyper knuckles)
set_color_profile_slot(pal_num, 0, 237, 89, 73); //aura
set_color_profile_slot(pal_num, 1, 237, 18, 18); //blue
set_color_profile_slot(pal_num, 2, 84, 38, 201); //green
set_color_profile_slot(pal_num, 3, 222, 149, 112); //skin
set_color_profile_slot(pal_num, 4, 237, 18, 18); //red
set_color_profile_slot(pal_num, 5, 85, 240, 65); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 148, 71); //portrait light
set_color_profile_slot(pal_num, 8, 255, 150, 201); //aura (super)
set_color_profile_slot(pal_num, 9, 230, 124, 179); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 0, 0); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 236, 242); //portrait light (super)

pal_num ++; //4 - amy (super state amy)
set_color_profile_slot(pal_num, 0, 247, 54, 238); //aura
set_color_profile_slot(pal_num, 1, 240, 92, 163); //blue
set_color_profile_slot(pal_num, 2, 20, 171, 49); //green
set_color_profile_slot(pal_num, 3, 235, 198, 155); //skin
set_color_profile_slot(pal_num, 4, 255, 38, 67); //red
set_color_profile_slot(pal_num, 5, 242, 252, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 242, 252, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 247, 156, 228); //portrait light
set_color_profile_slot(pal_num, 8, 255, 125, 212); //aura (super)
set_color_profile_slot(pal_num, 9, 240, 163, 200); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; //5 - chaos (chaos chao)
set_color_profile_slot(pal_num, 0, 74, 177, 255); //aura
set_color_profile_slot(pal_num, 1, 0, 183, 255); //blue
set_color_profile_slot(pal_num, 2, 17, 214, 73); //green
set_color_profile_slot(pal_num, 3, 19, 49, 145); //skin
set_color_profile_slot(pal_num, 4, 0, 183, 255); //red
set_color_profile_slot(pal_num, 5, 77, 205, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 17, 214, 73); //white - eyes
set_color_profile_slot(pal_num, 7, 145, 244, 255); //portrait light
set_color_profile_slot(pal_num, 8, 255, 200, 0); //aura (super)
set_color_profile_slot(pal_num, 9, 143, 168, 166); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 218, 255, 254); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; //6 - shadow (super shadow)
set_color_profile_slot(pal_num, 0, 255, 179, 0); //aura
set_color_profile_slot(pal_num, 1, 27, 37, 58); //blue
set_color_profile_slot(pal_num, 2, 219, 28, 22); //green
set_color_profile_slot(pal_num, 3, 229, 126, 68); //skin
set_color_profile_slot(pal_num, 4, 227, 227, 227); //red
set_color_profile_slot(pal_num, 5, 183, 7, 3); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 60, 87, 122); //portrait light
set_color_profile_slot(pal_num, 8, 255, 229, 125); //aura (super)
set_color_profile_slot(pal_num, 9, 173, 161, 119); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 0, 0); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 255, 255, 255); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 235, 153, 153); //portrait light (super)

pal_num ++; //7 - silver (super silver)
set_color_profile_slot(pal_num, 0, 83, 224, 168); //aura
set_color_profile_slot(pal_num, 1, 243, 251, 252); //blue
set_color_profile_slot(pal_num, 2, 230, 177, 74); //green
set_color_profile_slot(pal_num, 3, 245, 215, 180); //skin
set_color_profile_slot(pal_num, 4, 0, 207, 148); //red
set_color_profile_slot(pal_num, 5, 30, 106, 156); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 255, 255); //portrait light
set_color_profile_slot(pal_num, 8, 152, 242, 220); //aura (super)
set_color_profile_slot(pal_num, 9, 166, 147, 82); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 0, 0); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; //8 - blaze (burning blaze)
set_color_profile_slot(pal_num, 0, 237, 95, 168); //aura
set_color_profile_slot(pal_num, 1, 203, 129, 222); //blue
set_color_profile_slot(pal_num, 2, 255, 184, 79); //green
set_color_profile_slot(pal_num, 3, 245, 245, 245); //skin
set_color_profile_slot(pal_num, 4, 237, 39, 142); //red
set_color_profile_slot(pal_num, 5, 255, 255, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 240, 194, 233); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 217, 100, 107); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 207, 47, 23); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 252, 230, 230); //portrait light (super)

pal_num ++; //9 - scourge (super scourge)
set_color_profile_slot(pal_num, 0, 0, 255, 0); //aura
set_color_profile_slot(pal_num, 1, 45, 212, 72); //blue
set_color_profile_slot(pal_num, 2, 61, 135, 191); //green
set_color_profile_slot(pal_num, 3, 245, 182, 140); //skin
set_color_profile_slot(pal_num, 4, 28, 148, 28); //red
set_color_profile_slot(pal_num, 5, 32, 30, 79); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 148, 247, 122); //portrait light
set_color_profile_slot(pal_num, 8, 238, 148, 255); //aura (super)
set_color_profile_slot(pal_num, 9, 116, 23, 120); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 0, 0); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 167, 25, 207); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 0, 0, 0); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 244, 184, 255); //portrait light (super)

pal_num ++; // 10 - mario (fire mario)
set_color_profile_slot(pal_num, 0, 255, 148, 148); //aura
set_color_profile_slot(pal_num, 1, 235, 0, 39); //blue
set_color_profile_slot(pal_num, 2, 0, 150, 184); //green
set_color_profile_slot(pal_num, 3, 252, 188, 160); //skin
set_color_profile_slot(pal_num, 4, 128, 53, 24); //red
set_color_profile_slot(pal_num, 5, 41, 106, 227); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 250, 143, 132); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 145, 142, 126); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 163, 25); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 235, 0, 39); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; // 11 - spark (super spark)
set_color_profile_slot(pal_num, 0, 84, 213, 255); //aura
set_color_profile_slot(pal_num, 1, 255, 200, 33); //blue
set_color_profile_slot(pal_num, 2, 38, 18, 15); //green
set_color_profile_slot(pal_num, 3, 245, 195, 44); //skin
set_color_profile_slot(pal_num, 4, 41, 106, 227); //red
set_color_profile_slot(pal_num, 5, 191, 26, 0); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 242, 171); //portrait light
set_color_profile_slot(pal_num, 8, 255, 200, 0); //aura (super)
set_color_profile_slot(pal_num, 9, 222, 174, 29); //blue (super)
set_color_profile_slot(pal_num, 10, 70, 242, 112); //green (super)
set_color_profile_slot(pal_num, 11, 255, 239, 59); //skin (super)
set_color_profile_slot(pal_num, 12, 255, 239, 59); //red (super)
set_color_profile_slot(pal_num, 13, 250, 138, 57); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 242, 171); //portrait light (super)

pal_num ++; // 12 - lilac
set_color_profile_slot(pal_num, 0, 163, 247, 255); //aura
set_color_profile_slot(pal_num, 1, 167, 94, 191); //blue
set_color_profile_slot(pal_num, 2, 214, 39, 182); //green
set_color_profile_slot(pal_num, 3, 237, 184, 240); //skin
set_color_profile_slot(pal_num, 4, 41, 106, 227); //red
set_color_profile_slot(pal_num, 5, 75, 224, 250); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 215, 170, 230); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 13 - abyss
set_color_profile_slot(pal_num, 0, 240, 102, 255); //aura
set_color_profile_slot(pal_num, 1, 56, 54, 122); //blue
set_color_profile_slot(pal_num, 2, 169, 74, 184); //green
set_color_profile_slot(pal_num, 3, 148, 154, 194); //skin
set_color_profile_slot(pal_num, 4, 169, 74, 184); //red
set_color_profile_slot(pal_num, 5, 234, 206, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 106, 127, 207); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 14 - gameboy (super sonic - gameboy)
set_color_profile_slot(pal_num, 0, 167, 186, 74); //aura
set_color_profile_slot(pal_num, 1, 83, 122, 62); //blue
set_color_profile_slot(pal_num, 2, 15, 56, 15); //green
set_color_profile_slot(pal_num, 3, 211, 226, 154); //skin
set_color_profile_slot(pal_num, 4, 167, 186, 74); //red
set_color_profile_slot(pal_num, 5, 211, 226, 154); //white - clothes
set_color_profile_slot(pal_num, 6, 211, 226, 154); //white - eyes
set_color_profile_slot(pal_num, 7, 211, 226, 154); //portrait light
set_color_profile_slot(pal_num, 8, 211, 226, 154); //aura (super)
set_color_profile_slot(pal_num, 9, 167, 186, 74); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 83, 122, 62); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 15 - milestone / fake metal (super fake metal)
set_color_profile_slot(pal_num, 0, 46, 105, 255); //aura
set_color_profile_slot(pal_num, 1, 44, 40, 166); //blue
set_color_profile_slot(pal_num, 2, 255, 0, 0); //green
set_color_profile_slot(pal_num, 3, 54, 50, 186); //skin
set_color_profile_slot(pal_num, 4, 54, 50, 186); //red
set_color_profile_slot(pal_num, 5, 54, 50, 186); //white - clothes
set_color_profile_slot(pal_num, 6, 0, 0, 0); //white - eyes
set_color_profile_slot(pal_num, 7, 46, 105, 255); //portrait light
set_color_profile_slot(pal_num, 8, 255, 255, 52); //aura (super)
set_color_profile_slot(pal_num, 9, 176, 158, 27); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 255, 255, 52); //skin (super)
set_color_profile_slot(pal_num, 12, 255, 255, 52); //red (super)
set_color_profile_slot(pal_num, 13, 255, 255, 52); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; // 16 - seasonals
switch (get_match_setting(SET_SEASON))
{
    case 1: // vday
        set_color_profile_slot(pal_num, 0, 237, 150, 236); //aura
        set_color_profile_slot(pal_num, 1, 245, 96, 149); //blue
        set_color_profile_slot(pal_num, 2, 245, 75, 164); //green
        set_color_profile_slot(pal_num, 3, 245, 186, 174); //skin
        set_color_profile_slot(pal_num, 4, 255, 255, 255); //red
        set_color_profile_slot(pal_num, 5, 194, 41, 120); //white - clothes
        set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
        set_color_profile_slot(pal_num, 7, 252, 187, 204); //portrait light
        set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
        set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
        set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
        set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
        set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
        set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
        set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
        set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)
        break;
    case 2: // summer
        set_color_profile_slot(pal_num, 0, 245, 171, 149); //aura
        set_color_profile_slot(pal_num, 1, 255, 213, 115); //blue
        set_color_profile_slot(pal_num, 2, 84, 184, 217); //green
        set_color_profile_slot(pal_num, 3, 240, 166, 120); //skin
        set_color_profile_slot(pal_num, 4, 24, 121, 217); //red
        set_color_profile_slot(pal_num, 5, 255, 255, 255); //white - clothes
        set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
        set_color_profile_slot(pal_num, 7, 255, 245, 184); //portrait light
        set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
        set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
        set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
        set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
        set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
        set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
        set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
        set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)
        break;
    case 3: // halloween / lord X
        //FAKE COLORS
        set_color_profile_slot(pal_num, 0, 56, 0, 82); //aura
        set_color_profile_slot(pal_num, 1, 82, 82, 189); //blue
        set_color_profile_slot(pal_num, 2, 48, 48, 48); //green
        set_color_profile_slot(pal_num, 3, 219, 157, 134); //skin
        set_color_profile_slot(pal_num, 4, 222, 0, 0); //red
        set_color_profile_slot(pal_num, 5, 222, 222, 222); //white - clothes
        set_color_profile_slot(pal_num, 6, 222, 222, 222); //white - eyes
        set_color_profile_slot(pal_num, 7, 150, 160, 255); //portrait light
        set_color_profile_slot(pal_num, 8, 240, 240, 62); //aura (super)
        set_color_profile_slot(pal_num, 9, 240, 240, 62); //blue (super)
        set_color_profile_slot(pal_num, 10, 48, 48, 48); //green (super)
        set_color_profile_slot(pal_num, 11, 219, 157, 134); //skin (super)
        set_color_profile_slot(pal_num, 12, 222, 0, 0); //red (super)
        set_color_profile_slot(pal_num, 13, 222, 222, 222); //white - clothes (super)
        set_color_profile_slot(pal_num, 14, 222, 222, 222); //white - eyes (super)
        set_color_profile_slot(pal_num, 15, 255, 255, 250); //portrait light (super)
        break;
    case 4: // christmas
        set_color_profile_slot(pal_num, 0, 212, 233, 247); //aura
        set_color_profile_slot(pal_num, 1, 238, 250, 250); //blue
        set_color_profile_slot(pal_num, 2, 56, 194, 95); //green
        set_color_profile_slot(pal_num, 3, 255, 249, 227); //skin
        set_color_profile_slot(pal_num, 4, 87, 255, 92); //red
        set_color_profile_slot(pal_num, 5, 227, 4, 0); //white - clothes
        set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
        set_color_profile_slot(pal_num, 7, 255, 255, 255); //portrait light
        set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
        set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
        set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
        set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
        set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
        set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
        set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
        set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)
        break;
}

pal_num ++; // 17 - infamous
set_color_profile_slot(pal_num, 0, 79, 232, 178); //aura
set_color_profile_slot(pal_num, 1, 109, 230, 226); //blue
set_color_profile_slot(pal_num, 2, 222, 40, 219); //green
set_color_profile_slot(pal_num, 3, 134, 185, 224); //skin
set_color_profile_slot(pal_num, 4, 45, 88, 156); //red
set_color_profile_slot(pal_num, 5, 206, 47, 247); //white - clothes
set_color_profile_slot(pal_num, 6, 237, 211, 237); //white - eyes
set_color_profile_slot(pal_num, 7, 215, 247, 240); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 18 - gold rank (diamond)
set_color_profile_slot(pal_num, 0, 255, 222, 130); //aura
set_color_profile_slot(pal_num, 1, 255, 201, 94); //blue
set_color_profile_slot(pal_num, 2, 143, 171, 181); //green
set_color_profile_slot(pal_num, 3, 255, 208, 179); //skin
set_color_profile_slot(pal_num, 4, 255, 219, 8); //red
set_color_profile_slot(pal_num, 5, 200, 236, 247); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 249, 214); //portrait light
set_color_profile_slot(pal_num, 8, 89, 230, 255); //aura (super)
set_color_profile_slot(pal_num, 9, 89, 152, 181); //blue (super)
set_color_profile_slot(pal_num, 10, 212, 167, 42); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 7, 152, 219); //red (super)
set_color_profile_slot(pal_num, 13, 247, 210, 111); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 249, 214); //portrait light (super)

pal_num ++; // 19 - the flash
set_color_profile_slot(pal_num, 0, 242, 62, 48); //aura
set_color_profile_slot(pal_num, 1, 242, 62, 48); //blue
set_color_profile_slot(pal_num, 2, 14, 152, 232); //green
set_color_profile_slot(pal_num, 3, 250, 187, 144); //skin
set_color_profile_slot(pal_num, 4, 255, 191, 0); //red
set_color_profile_slot(pal_num, 5, 255, 191, 0); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 247, 179, 91); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 20 - dark sonic (dark super sonic)
set_color_profile_slot(pal_num, 0, 38, 58, 246); //aura
set_color_profile_slot(pal_num, 1, 19, 27, 122); //blue
set_color_profile_slot(pal_num, 2, 2, 149, 2); //green
set_color_profile_slot(pal_num, 3, 255, 215, 170); //skin
set_color_profile_slot(pal_num, 4, 237, 18, 18); //red
set_color_profile_slot(pal_num, 5, 255, 255, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 29, 87, 184); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 32, 32, 48); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 255, 255); //green (super)
set_color_profile_slot(pal_num, 11, 13, 15, 18); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 48, 48, 74); //portrait light (super)

pal_num ++; // 21 - snick (& snick.exe) (super snick)
set_color_profile_slot(pal_num, 0, 163, 81, 245); //aura
set_color_profile_slot(pal_num, 1, 152, 80, 248); //blue
set_color_profile_slot(pal_num, 2, 0, 0, 0); //green
set_color_profile_slot(pal_num, 3, 152, 80, 248); //skin
set_color_profile_slot(pal_num, 4, 224, 48, 0); //red
set_color_profile_slot(pal_num, 5, 255, 255, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 152, 80, 248); //portrait light
set_color_profile_slot(pal_num, 8, 255, 246, 130); //aura (super)
set_color_profile_slot(pal_num, 9, 255, 235, 0); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 255, 235, 0); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 255, 255); //portrait light (super)

pal_num ++; // 22 - maypul
set_color_profile_slot(pal_num, 0, 169, 245, 124); //aura
set_color_profile_slot(pal_num, 1, 108, 155, 113); //blue
set_color_profile_slot(pal_num, 2, 37, 141, 172); //green
set_color_profile_slot(pal_num, 3, 228, 225, 173); //skin
set_color_profile_slot(pal_num, 4, 65, 62, 55); //red
set_color_profile_slot(pal_num, 5, 169, 245, 124); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 249, 249); //white - eyes
set_color_profile_slot(pal_num, 7, 169, 245, 124); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 23 - bar (theikos state bar)
set_color_profile_slot(pal_num, 0, 38, 153, 255); //aura
set_color_profile_slot(pal_num, 1, 245, 117, 50); //blue
set_color_profile_slot(pal_num, 2, 84, 47, 0); //green
set_color_profile_slot(pal_num, 3, 247, 198, 153); //skin
set_color_profile_slot(pal_num, 4, 0, 79, 196); //red
set_color_profile_slot(pal_num, 5, 26, 33, 48); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 201, 120); //portrait light
set_color_profile_slot(pal_num, 8, 255, 200, 0); //aura (super)
set_color_profile_slot(pal_num, 9, 49, 148, 166); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 211, 84); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 247, 244, 230); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 204, 255, 255); //portrait light (super)

pal_num ++; // 24 - keqing
set_color_profile_slot(pal_num, 0, 223, 128, 255); //aura
set_color_profile_slot(pal_num, 1, 200, 132, 227); //blue
set_color_profile_slot(pal_num, 2, 214, 66, 202); //green
set_color_profile_slot(pal_num, 3, 242, 216, 160); //skin
set_color_profile_slot(pal_num, 4, 131, 78, 194); //red
set_color_profile_slot(pal_num, 5, 156, 166, 230); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 237, 181, 245); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 25 - rumia
set_color_profile_slot(pal_num, 0, 78, 23, 133); //aura
set_color_profile_slot(pal_num, 1, 240, 187, 62); //blue
set_color_profile_slot(pal_num, 2, 214, 0, 0); //green
set_color_profile_slot(pal_num, 3, 247, 214, 165); //skin
set_color_profile_slot(pal_num, 4, 26, 28, 31); //red
set_color_profile_slot(pal_num, 5, 255, 255, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 255, 243, 110); //portrait light
set_color_profile_slot(pal_num, 8, 999, 999, 999); //aura (super)
set_color_profile_slot(pal_num, 9, 999, 999, 999); //blue (super)
set_color_profile_slot(pal_num, 10, 999, 999, 999); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 999, 999, 999); //portrait light (super)

pal_num ++; // 26 - hud color (uses default as a base)
set_color_profile_slot(pal_num, 0, 61, 206, 255); //aura
set_color_profile_slot(pal_num, 1, 38, 58, 246); //blue
set_color_profile_slot(pal_num, 2, 2, 149, 2); //green
set_color_profile_slot(pal_num, 3, 255, 215, 170); //skin
set_color_profile_slot(pal_num, 4, 255, 0, 0); //red
set_color_profile_slot(pal_num, 5, 255, 255, 255); //white - clothes
set_color_profile_slot(pal_num, 6, 255, 255, 255); //white - eyes
set_color_profile_slot(pal_num, 7, 91, 165, 240); //portrait light
set_color_profile_slot(pal_num, 8, 255, 200, 0); //aura (super)
set_color_profile_slot(pal_num, 9, 201, 129, 31); ///blue (super)
set_color_profile_slot(pal_num, 10, 255, 0, 0); //green (super)
set_color_profile_slot(pal_num, 11, 999, 999, 999); //skin (super)
set_color_profile_slot(pal_num, 12, 999, 999, 999); //red (super)
set_color_profile_slot(pal_num, 13, 999, 999, 999); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 999, 999, 999); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 248, 183); //portrait light (super)

set_num_palettes(pal_num + 1);


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"aura","colors":[{"r":171,"g":255,"b":253},{"r":120,"g":237,"b":255},{"r":61,"g":206,"b":255,"main":true},{"r":38,"g":170,"b":234},{"r":25,"g":128,"b":211}]},{"name":"blue","colors":[{"r":38,"g":58,"b":246,"main":true},{"r":17,"g":32,"b":176},{"r":7,"g":16,"b":103}]},{"name":"green","colors":[{"r":2,"g":149,"b":2,"main":true},{"r":1,"g":100,"b":13},{"r":0,"g":43,"b":5}]},{"name":"skin","colors":[{"r":255,"g":215,"b":170,"main":true},{"r":220,"g":164,"b":126},{"r":179,"g":116,"b":92}]},{"name":"red","colors":[{"r":255,"g":0,"b":0,"main":true},{"r":200,"g":0,"b":8},{"r":147,"g":2,"b":13}]},{"name":"white - clothes","colors":[{"r":170,"g":255,"b":0,"main":true},{"r":129,"g":194,"b":0},{"r":88,"g":133,"b":0}]},{"name":"white - eyes","colors":[{"r":255,"g":255,"b":255,"main":true},{"r":207,"g":207,"b":207}]},{"name":"portrait light","colors":[{"r":249,"g":58,"b":255,"main":true},{"r":208,"g":16,"b":214},{"r":160,"g":4,"b":165}]},{"name":"aura (super)","colors":[{"r":255,"g":200,"b":0,"shd_val":1,"main":true}]},{"name":"blue (super)","colors":[{"r":201,"g":129,"b":31,"shd_val":1,"main":true}]},{"name":"green (super)","colors":[{"r":255,"g":0,"b":0,"shd_val":1,"main":true}]},{"name":"skin (super)","colors":[{"r":255,"g":215,"b":170,"shd_val":1,"main":true}]},{"name":"red (super)","colors":[{"r":255,"g":0,"b":0,"shd_val":1,"main":true}]},{"name":"white - clothes (super)","colors":[{"r":255,"g":255,"b":255,"shd_val":1,"main":true}]},{"name":"white - eyes (super)","colors":[{"r":255,"g":255,"b":255,"shd_val":1,"main":true}]},{"name":"portrait light (super)","colors":[{"r":255,"g":248,"b":183,"shd_val":1,"main":true}]}]}
=== END JSON PALETTE ===
*/



/*
// super sonic: fire mario alt (fire sonic)
set_color_profile_slot(pal_num, 8, 255, 148, 148); //aura (super)
set_color_profile_slot(pal_num, 9, 117, 18, 12); //blue (super)
set_color_profile_slot(pal_num, 10, 255, 163, 25); //green (super)
set_color_profile_slot(pal_num, 11, 252, 188, 160); //skin (super)
set_color_profile_slot(pal_num, 12, 227, 219, 186); //red (super)
set_color_profile_slot(pal_num, 13, 255, 255, 255); //white - clothes (super)
set_color_profile_slot(pal_num, 14, 255, 255, 255); //white - eyes (super)
set_color_profile_slot(pal_num, 15, 255, 164, 99); //portrait light (super)
//shading data: [1, -1, 1, 1, 1, 1, 1, 1]