var palettes_number = 14;
var i = 0;

set_num_palettes(palettes_number);

//DEFAULT COLOR (R,G,B)

//Body Color & Shading
set_color_profile_slot(0, 0, 255, 255, 255); //COLOR SLOT 0
set_color_profile_slot(0, 1, 192, 192, 192); //COLOR SLOT 1

//Tongue Colors
set_color_profile_slot(0, 2, 255, 128, 160); //COLOR SLOT 2
set_color_profile_slot(0, 3, 192, 96, 128); //COLOR SLOT 3

//Trident, Artifact, Round, and Jetpack Accent Colors
set_color_profile_slot(0, 4, 192, 0, 0); //COLOR SLOT 4

//Gaster Blaster Eye and Laser Color
set_color_profile_slot(0, 5, 0, 224, 255); //COLOR SLOT 5

//Jetpack Base Color
set_color_profile_slot(0, 6, 255, 255, 0); //COLOR SLOT 6




//COLOR RANGE (Hue,Saturation,Value)
set_color_profile_slot_range(0, 3, 3, 3); //body
set_color_profile_slot_range(1, 3, 3, 3); //shading

set_color_profile_slot_range(2, 3, 3, 3); //tongue light
set_color_profile_slot_range(3, 3, 3, 3); //tongue dark

set_color_profile_slot_range(4, 3, 50, 50); //trident
set_color_profile_slot_range(5, 20, 80, 3); //blaster
set_color_profile_slot_range(6, 3, 3, 3); //jetpack



//Set default colors for all color palettes
//
//This significantly lowers the amount of "set_color_profile_slot"
//functions that need to be called for each individual color scheme
for (i = 0; i <= palettes_number; i++)
{
	set_color_profile_slot(i, 0, 255, 255, 255); //body
	set_color_profile_slot(i, 1, 192, 192, 192); //shading

	set_color_profile_slot(i, 2, 255, 128, 160); //tongue light
	set_color_profile_slot(i, 3, 192, 96, 128); //tongue dark

	set_color_profile_slot(i, 4, 192, 0, 0); //trident
	set_color_profile_slot(i, 5, 0, 224, 255); //blaster
	set_color_profile_slot(i, 6, 255, 255, 0); //jetpack
}



//Blue Color
set_color_profile_slot(1, 0, 0, 64, 255); //body
set_color_profile_slot(1, 1, 0, 32, 128); //shading

set_color_profile_slot(1, 2, 255, 128, 160); //tongue light
set_color_profile_slot(1, 3, 192, 96, 128); //tongue dark

set_color_profile_slot(1, 4, 192, 0, 0); //trident
set_color_profile_slot(1, 5, 0, 224, 255); //blaster
set_color_profile_slot(1, 6, 255, 255, 0); //jetpack




//Red Color
set_color_profile_slot(2, 0, 255, 0, 0); //body
set_color_profile_slot(2, 1, 128, 0, 0); //shading

set_color_profile_slot(2, 4, 224, 224, 224); //trident
set_color_profile_slot(2, 6, 255, 0, 0); //jetpack



//Green Color
set_color_profile_slot(3, 0, 0, 192, 0); //body
set_color_profile_slot(3, 1, 0, 128, 0); //shading



//Yellow Color
set_color_profile_slot(4, 0, 255, 255, 0); //body
set_color_profile_slot(4, 1, 255, 224, 0); //shading

set_color_profile_slot(4, 6, 255, 255, 255); //jetpack



//Purple Color
set_color_profile_slot(5, 0, 224, 64, 224); //body
set_color_profile_slot(5, 1, 128, 32, 128); //shading

set_color_profile_slot(5, 4, 255, 224, 0); //trident
set_color_profile_slot(5, 6, 255, 0, 0); //jetpack



//Cyan Color
set_color_profile_slot(6, 0, 0, 224, 255); //body
set_color_profile_slot(6, 1, 0, 128, 160); //shading

set_color_profile_slot(6, 5, 255, 0, 0); //blaster



//Monochrome Color
set_color_profile_slot(7, 0, 255, 255, 255); //body
set_color_profile_slot(7, 1, 255, 255, 255); //shading

set_color_profile_slot(7, 2, 0, 0, 0); //tongue light
set_color_profile_slot(7, 3, 255, 255, 255); //tongue dark

set_color_profile_slot(7, 4, 512, 512, 512); //trident
set_color_profile_slot(7, 5, -512, 512, 512); //blaster
set_color_profile_slot(7, 6, 255, 255, 255); //jetpack




//Early Access Color
set_color_profile_slot(8, 0, 210, 225, 155); //body
set_color_profile_slot(8, 1, 210, 225, 155); //shading

set_color_profile_slot(8, 2, 170, 185, 75); //tongue light
set_color_profile_slot(8, 3, 80, 125, 60); //tongue dark

set_color_profile_slot(8, 4, 80, 120, 60); //trident
set_color_profile_slot(8, 5, 170, 180, 75); //blaster
set_color_profile_slot(8, 6, 210, 225, 155); //jetpack





//Abyss Color
set_color_profile_slot(9, 0, 144, 128, 160); //body
set_color_profile_slot(9, 1, 80, 64, 96); //shading

set_color_profile_slot(9, 2, 160, 176, 224); //tongue light
set_color_profile_slot(9, 3, 96, 128, 160); //tongue dark

set_color_profile_slot(9, 4, 224, 128, 255); //trident
set_color_profile_slot(9, 5, 224, 128, 255); //blaster
set_color_profile_slot(9, 6, 160, 64, 192); //jetpack




//Valentine's Day Color
set_color_profile_slot(10, 0, 255, 128, 224); //body
set_color_profile_slot(10, 1, 192, 96, 160); //shading

set_color_profile_slot(10, 2, 255, 96, 96); //tongue light
set_color_profile_slot(10, 3, 192, 64, 64); //tongue dark

set_color_profile_slot(10, 4, 224, 224, 224); //trident
set_color_profile_slot(10, 5, 255, 0, 255); //blaster
set_color_profile_slot(10, 6, 224, 96, 192); //jetpack




//Halloween Color
set_color_profile_slot(11, 0, 255, 96, 0); //body
set_color_profile_slot(11, 1, 160, 48, 0); //shading

set_color_profile_slot(11, 2, 192, 96, 96); //tongue light
set_color_profile_slot(11, 3, 160, 64, 64); //tongue dark

set_color_profile_slot(11, 4, 160, 224, 64); //trident
set_color_profile_slot(11, 5, 160, 224, 64); //blaster
set_color_profile_slot(11, 6, 96, 96, 96); //jetpack




//Champion Color
set_color_profile_slot(12, 0, 192, 224, 224); //body
set_color_profile_slot(12, 1, 128, 192, 192); //shading

set_color_profile_slot(12, 2, 96, 80, 64); //tongue light
set_color_profile_slot(12, 3, 48, 32, 24); //tongue dark

set_color_profile_slot(12, 4, 176, 255, 192); //trident
set_color_profile_slot(12, 5, 128, 224, 160); //blaster
set_color_profile_slot(12, 6, 64, 64, 64); //jetpack




//Infamous Color
set_color_profile_slot(13, 0, 0, 255, 160); //body
set_color_profile_slot(13, 1, 0, 192, 96); //shading

set_color_profile_slot(13, 2, 224, 96, 255); //tongue light
set_color_profile_slot(13, 3, 144, 64, 255); //tongue dark

set_color_profile_slot(13, 4, 144, 64, 255); //trident
set_color_profile_slot(13, 5, 224, 96, 255); //blaster
set_color_profile_slot(13, 6, 64, 224, 255); //jetpack




//Random Color
// set_color_profile_slot(14, 0, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
// set_color_profile_slot(14, 1, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
// set_color_profile_slot(14, 2, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
// set_color_profile_slot(14, 3, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
// set_color_profile_slot(14, 4, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
// set_color_profile_slot(14, 5, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
// set_color_profile_slot(14, 6, irandom_range(15,255), irandom_range(15,255), irandom_range(15,255));
