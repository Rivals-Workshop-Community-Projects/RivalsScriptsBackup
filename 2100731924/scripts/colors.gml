// DEFAULT COLOR

// Jacket
set_color_profile_slot( 0, 0, 57, 92, 104 );
set_color_profile_slot_range( 0, 24, 32, 21 );

// Skin/Pot
set_color_profile_slot( 0, 1, 216, 155, 141 );
set_color_profile_slot_range( 1, 20, 10, 21 );

// Pants
set_color_profile_slot( 0, 2, 111, 170, 193 );
set_color_profile_slot_range( 2, 19, 16, 27 );

// Hair
set_color_profile_slot( 0, 3, 51, 44, 41 );
set_color_profile_slot_range( 3, 19, 9, 11 );

// Shoe/Shirt Light
set_color_profile_slot( 0, 4, 224, 222, 220 );
set_color_profile_slot_range( 4, 1, 1, 1 );

// Shoe/Shirt Dark
set_color_profile_slot( 0, 5, 191, 178, 181 );
set_color_profile_slot_range( 5, 1, 1, 1 );

// Stem
set_color_profile_slot( 0, 6, 149, 67, 94 );
set_color_profile_slot_range( 6, 12, 3, 18 );

// Leaves
set_color_profile_slot( 0, 7, 82, 180, 127 );
set_color_profile_slot_range( 7, 27, 9, 28 );

// This is setup for the unlimited alts system (you can't use shading slot 8, 9, or 10 anyway)
// set this macro to the number of alts you have [Edit necessary]
#macro NUM_ALTS 34
set_color_profile_slot( 0, 8, -1, 0, NUM_ALTS ); // r = current unlimited alt; g = previous base game alt; b = total number of unlimited alts
set_color_profile_slot( 0, 9, 0, 0, -1 ); // r = timer between alt switches on CSS; g = whether you last increased or decreased your alt on the CSS; b = whether you're on the online or offline CSS (-1 means not yet known)
set_color_profile_slot( 0, 10, -1, -1, 0 ); // r = the alt whose sfx last played even if it's blank; g = the id of the last played sound or -1 if no sound was played; b = timer for the random alt

// ALTERNATE COLORS
set_num_palettes( NUM_ALTS ); // you should actually be fine if you just set this to 16, but I have it like this anyway

// You also have to actually make all the alts. You can make the extra ones like you would make normal ones. I recommend using this tool: https://cl-9a.github.io/RoAColorsGmlHelper/
// You can increase the maximum number of alts at the bottom
// This is what Joshua & Batit's colors.gml looks like (made with the above tool): https://pastebin.com/1wtd5fkR
// [Edit necessary]

// Hime
set_color_profile_slot( 1, 0, 116, 184, 229 ); //Jacket
set_color_profile_slot( 1, 1, 223, 155, 154 ); //Skin/Pot
set_color_profile_slot( 1, 2, 206, 180, 167 ); //Pants
set_color_profile_slot( 1, 3, 109, 140, 161 ); //Hair
set_color_profile_slot( 1, 4, 224, 222, 220 ); //Shoe/Shirt Light
set_color_profile_slot( 1, 5, 191, 178, 181 ); //Shoe/Shirt Dark
set_color_profile_slot( 1, 6, 255, 254, 255 ); //Stem
set_color_profile_slot( 1, 7, 237, 127, 126 ); //Leaves

// Liz
set_color_profile_slot( 2, 0, 0, 0, 0 ); //Jacket
set_color_profile_slot( 2, 1, 204, 119, 119 ); //Skin/Pot
set_color_profile_slot( 2, 2, 245, 95, 140 ); //Pants
set_color_profile_slot( 2, 3, 245, 95, 140 ); //Hair
set_color_profile_slot( 2, 4, 41, 41, 100 ); //Shoe/Shirt Light
set_color_profile_slot( 2, 5, 37, 21, 71 ); //Shoe/Shirt Dark
set_color_profile_slot( 2, 6, 93, 244, 188 ); //Stem
set_color_profile_slot( 2, 7, 93, 244, 188 ); //Leaves

// Acid Rainbows
set_color_profile_slot( 3, 0, 71, 185, 89 ); //Jacket
set_color_profile_slot( 3, 1, 221, 159, 134 ); //Skin/Pot
set_color_profile_slot( 3, 2, 149, 176, 196 ); //Pants
set_color_profile_slot( 3, 3, 182, 73, 218 ); //Hair
set_color_profile_slot( 3, 4, 224, 222, 220 ); //Shoe/Shirt Light
set_color_profile_slot( 3, 5, 191, 178, 181 ); //Shoe/Shirt Dark
set_color_profile_slot( 3, 6, 213, 41, 77 ); //Stem
set_color_profile_slot( 3, 7, 118, 37, 54 ); //Leaves

// Donyoku
set_color_profile_slot( 4, 0, 76, 89, 92 ); //Jacket
set_color_profile_slot( 4, 1, 192, 172, 123 ); //Skin/Pot
set_color_profile_slot( 4, 2, 243, 157, 25 ); //Pants
set_color_profile_slot( 4, 3, 62, 64, 96 ); //Hair
set_color_profile_slot( 4, 4, 224, 222, 220 ); //Shoe/Shirt Light
set_color_profile_slot( 4, 5, 191, 178, 181 ); //Shoe/Shirt Dark
set_color_profile_slot( 4, 6, 243, 157, 25 ); //Stem
set_color_profile_slot( 4, 7, 50, 206, 225 ); //Leaves

// Pomme
set_color_profile_slot( 5, 0, 167, 83, 132 ); //Jacket
set_color_profile_slot( 5, 1, 233, 190, 224 ); //Skin/Pot
set_color_profile_slot( 5, 2, 251, 234, 244 ); //Pants
set_color_profile_slot( 5, 3, 241, 140, 214 ); //Hair
set_color_profile_slot( 5, 4, 66, 26, 91 ); //Shoe/Shirt Light
set_color_profile_slot( 5, 5, 35, 13, 64 ); //Shoe/Shirt Dark
set_color_profile_slot( 5, 6, 251, 234, 244 ); //Stem
set_color_profile_slot( 5, 7, 183, 101, 184 ); //Leaves

// Abyss
set_color_profile_slot( 6, 0, 116, 94, 135 ); //Jacket
set_color_profile_slot( 6, 1, 111, 127, 188 ); //Skin/Pot
set_color_profile_slot( 6, 2, 79, 61, 94 ); //Pants
set_color_profile_slot( 6, 3, 79, 61, 94 ); //Hair
set_color_profile_slot( 6, 4, 224, 222, 220 ); //Shoe/Shirt Light
set_color_profile_slot( 6, 5, 191, 178, 181 ); //Shoe/Shirt Dark
set_color_profile_slot( 6, 6, 220, 113, 255 ); //Stem
set_color_profile_slot( 6, 7, 166, 172, 214 ); //Leaves

// Early Access
set_color_profile_slot( 7, 0, 83, 122, 62 ); //Jacket
set_color_profile_slot( 7, 1, 211, 226, 154 ); //Skin/Pot
set_color_profile_slot( 7, 2, 167, 186, 74 ); //Pants
set_color_profile_slot( 7, 3, 83, 122, 62 ); //Hair
set_color_profile_slot( 7, 4, 211, 226, 154 ); //Shoe/Shirt Light
set_color_profile_slot( 7, 5, 211, 226, 154 ); //Shoe/Shirt Dark
set_color_profile_slot( 7, 6, 83, 122, 62 ); //Stem
set_color_profile_slot( 7, 7, 167, 186, 74 ); //Leaves

// Contest One
set_color_profile_slot( 8, 0, 155, 70, 70 ); //Jacket
set_color_profile_slot( 8, 1, 225, 175, 155 ); //Skin/Pot
set_color_profile_slot( 8, 2, 63, 53, 53 ); //Pants
set_color_profile_slot( 8, 3, 123, 80, 56 ); //Hair
set_color_profile_slot( 8, 4, 111, 53, 53 ); //Shoe/Shirt Light
set_color_profile_slot( 8, 5, 75, 34, 34 ); //Shoe/Shirt Dark
set_color_profile_slot( 8, 6, 55, 105, 70 ); //Stem
set_color_profile_slot( 8, 7, 53, 47, 56 ); //Leaves

// Sans
set_color_profile_slot( 9, 0, 104, 151, 205 ); //Jacket
set_color_profile_slot( 9, 1, 212, 192, 190 ); //Skin/Pot
set_color_profile_slot( 9, 2, 207, 233, 252 ); //Pants
set_color_profile_slot( 9, 3, 177, 177, 177 ); //Hair
set_color_profile_slot( 9, 4, 215, 216, 218 ); //Shoe/Shirt Light
set_color_profile_slot( 9, 5, 163, 166, 177 ); //Shoe/Shirt Dark
set_color_profile_slot( 9, 6, 93, 139, 97 ); //Stem
set_color_profile_slot( 9, 7, 240, 135, 189 ); //Leaves

// Contest Three
set_color_profile_slot( 10, 0, 221, 221, 221 ); //Jacket
set_color_profile_slot( 10, 1, 229, 194, 175 ); //Skin/Pot
set_color_profile_slot( 10, 2, 96, 90, 88 ); //Pants
set_color_profile_slot( 10, 3, 51, 44, 41 ); //Hair
set_color_profile_slot( 10, 4, 85, 133, 104 ); //Shoe/Shirt Light
set_color_profile_slot( 10, 5, 63, 104, 79 ); //Shoe/Shirt Dark
set_color_profile_slot( 10, 6, 115, 119, 125 ); //Stem
set_color_profile_slot( 10, 7, 201, 87, 87 ); //Leaves

// Content Four
set_color_profile_slot( 11, 0, 182, 99, 156 ); //Jacket
set_color_profile_slot( 11, 1, 232, 178, 199 ); //Skin/Pot
set_color_profile_slot( 11, 2, 163, 42, 71 ); //Pants
set_color_profile_slot( 11, 3, 51, 44, 41 ); //Hair
set_color_profile_slot( 11, 4, 222, 187, 217 ); //Shoe/Shirt Light
set_color_profile_slot( 11, 5, 192, 155, 196 ); //Shoe/Shirt Dark
set_color_profile_slot( 11, 6, 177, 46, 122 ); //Stem
set_color_profile_slot( 11, 7, 203, 127, 143 ); //Leaves

// Voidfox
set_color_profile_slot( 12, 0, 113, 181, 88 ); //Jacket
set_color_profile_slot( 12, 1, 255, 255, 255 ); //Skin/Pot
set_color_profile_slot( 12, 2, 49, 49, 49 ); //Pants
set_color_profile_slot( 12, 3, 0, 0, 0 ); //Hair
set_color_profile_slot( 12, 4, 255, 255, 255 ); //Shoe/Shirt Light
set_color_profile_slot( 12, 5, 167, 161, 173 ); //Shoe/Shirt Dark
set_color_profile_slot( 12, 6, 49, 49, 49 ); //Stem
set_color_profile_slot( 12, 7, 52, 96, 36 ); //Leaves

// Classic
set_color_profile_slot( 13, 0, 34, 52, 94 ); //Jacket
set_color_profile_slot( 13, 1, 202, 113, 113 ); //Skin/Pot
set_color_profile_slot( 13, 2, 67, 66, 116 ); //Pants
set_color_profile_slot( 13, 3, 43, 42, 42 ); //Hair
set_color_profile_slot( 13, 4, 202, 227, 225 ); //Shoe/Shirt Light
set_color_profile_slot( 13, 5, 174, 195, 199 ); //Shoe/Shirt Dark
set_color_profile_slot( 13, 6, 69, 24, 40 ); //Stem
set_color_profile_slot( 13, 7, 65, 125, 146 ); //Leaves

// Giik
set_color_profile_slot( 14, 0, 254, 254, 254 ); //Jacket
set_color_profile_slot( 14, 1, 59, 37, 47 ); //Skin/Pot
set_color_profile_slot( 14, 2, 253, 220, 153 ); //Pants
set_color_profile_slot( 14, 3, 253, 220, 153 ); //Hair
set_color_profile_slot( 14, 4, 80, 56, 55 ); //Shoe/Shirt Light
set_color_profile_slot( 14, 5, 59, 37, 47 ); //Shoe/Shirt Dark
set_color_profile_slot( 14, 6, 254, 254, 254 ); //Stem
set_color_profile_slot( 14, 7, 253, 220, 153 ); //Leaves

// Kris
set_color_profile_slot( 15, 0, 255, 119, 205 ); //Jacket
set_color_profile_slot( 15, 1, 117, 250, 237 ); //Skin/Pot
set_color_profile_slot( 15, 2, 68, 68, 145 ); //Pants
set_color_profile_slot( 15, 3, 33, 33, 81 ); //Hair
set_color_profile_slot( 15, 4, 201, 228, 242 ); //Shoe/Shirt Light
set_color_profile_slot( 15, 5, 113, 113, 156 ); //Shoe/Shirt Dark
set_color_profile_slot( 15, 6, 237, 148, 165 ); //Stem
set_color_profile_slot( 15, 7, 237, 148, 165 ); //Leaves

// Obama
set_color_profile_slot( 16, 0, 76, 76, 76 ); //Jacket
set_color_profile_slot( 16, 1, 178, 114, 45 ); //Skin/Pot
set_color_profile_slot( 16, 2, 76, 76, 76 ); //Pants
set_color_profile_slot( 16, 3, 67, 51, 31 ); //Hair
set_color_profile_slot( 16, 4, 55, 55, 55 ); //Shoe/Shirt Light
set_color_profile_slot( 16, 5, 43, 43, 43 ); //Shoe/Shirt Dark
set_color_profile_slot( 16, 6, 224, 224, 224 ); //Stem
set_color_profile_slot( 16, 7, 5, 57, 57 ); //Leaves

// Wireframe
set_color_profile_slot( 17, 0, 0, 255, 0 ); //Jacket
set_color_profile_slot( 17, 1, 0, 255, 0 ); //Skin/Pot
set_color_profile_slot( 17, 2, 0, 255, 0 ); //Pants
set_color_profile_slot( 17, 3, 0, 255, 0 ); //Hair
set_color_profile_slot( 17, 4, 0, 255, 0 ); //Shoe/Shirt Light
set_color_profile_slot( 17, 5, 0, 255, 0 ); //Shoe/Shirt Dark
set_color_profile_slot( 17, 6, 0, 255, 0 ); //Stem
set_color_profile_slot( 17, 7, 0, 255, 0 ); //Leaves

// Ellie
set_color_profile_slot( 18, 0, 186, 235, 254 ); //Jacket
set_color_profile_slot( 18, 1, 217, 176, 100 ); //Skin/Pot
set_color_profile_slot( 18, 2, 53, 115, 183 ); //Pants
set_color_profile_slot( 18, 3, 249, 244, 153 ); //Hair
set_color_profile_slot( 18, 4, 248, 248, 248 ); //Shoe/Shirt Light
set_color_profile_slot( 18, 5, 216, 220, 222 ); //Shoe/Shirt Dark
set_color_profile_slot( 18, 6, 31, 31, 31 ); //Stem
set_color_profile_slot( 18, 7, 120, 231, 243 ); //Leaves

// Adam Carra
set_color_profile_slot( 19, 0, 75, 75, 75 ); //Jacket
set_color_profile_slot( 19, 1, 216, 155, 141 ); //Skin/Pot
set_color_profile_slot( 19, 2, 255, 243, 23 ); //Pants
set_color_profile_slot( 19, 3, 51, 44, 41 ); //Hair
set_color_profile_slot( 19, 4, 255, 255, 255 ); //Shoe/Shirt Light
set_color_profile_slot( 19, 5, 222, 222, 222 ); //Shoe/Shirt Dark
set_color_profile_slot( 19, 6, 44, 43, 43 ); //Stem
set_color_profile_slot( 19, 7, 191, 164, 19 ); //Leaves

// Junior High
set_color_profile_slot( 20, 0, 55, 97, 149 ); //Jacket
set_color_profile_slot( 20, 1, 216, 155, 141 ); //Skin/Pot
set_color_profile_slot( 20, 2, 197, 166, 126 ); //Pants
set_color_profile_slot( 20, 3, 51, 44, 41 ); //Hair
set_color_profile_slot( 20, 4, 224, 222, 220 ); //Shoe/Shirt Light
set_color_profile_slot( 20, 5, 191, 178, 181 ); //Shoe/Shirt Dark
set_color_profile_slot( 20, 6, 187, 230, 231 ); //Stem
set_color_profile_slot( 20, 7, 155, 170, 235 ); //Leaves

// Zircon
set_color_profile_slot( 21, 0, 1, 229, 255 ); //Jacket
set_color_profile_slot( 21, 1, 209, 94, 60 ); //Skin/Pot
set_color_profile_slot( 21, 2, 1, 229, 255 ); //Pants
set_color_profile_slot( 21, 3, 249, 246, 240 ); //Hair
set_color_profile_slot( 21, 4, 249, 246, 240 ); //Shoe/Shirt Light
set_color_profile_slot( 21, 5, 224, 211, 193 ); //Shoe/Shirt Dark
set_color_profile_slot( 21, 6, 129, 39, 39 ); //Stem
set_color_profile_slot( 21, 7, 1, 229, 255 ); //Leaves

// Sakurai
set_color_profile_slot( 22, 0, 53, 53, 53 ); //Jacket
set_color_profile_slot( 22, 1, 215, 142, 103 ); //Skin/Pot
set_color_profile_slot( 22, 2, 27, 22, 37 ); //Pants
set_color_profile_slot( 22, 3, 85, 49, 42 ); //Hair
set_color_profile_slot( 22, 4, 111, 46, 46 ); //Shoe/Shirt Light
set_color_profile_slot( 22, 5, 75, 31, 31 ); //Shoe/Shirt Dark
set_color_profile_slot( 22, 6, 111, 46, 46 ); //Stem
set_color_profile_slot( 22, 7, 53, 53, 53 ); //Leaves

// Lucy
set_color_profile_slot( 23, 0, 67, 58, 54 ); //Jacket
set_color_profile_slot( 23, 1, 211, 176, 146 ); //Skin/Pot
set_color_profile_slot( 23, 2, 95, 20, 45 ); //Pants
set_color_profile_slot( 23, 3, 221, 179, 145 ); //Hair
set_color_profile_slot( 23, 4, 240, 242, 244 ); //Shoe/Shirt Light
set_color_profile_slot( 23, 5, 175, 188, 210 ); //Shoe/Shirt Dark
set_color_profile_slot( 23, 6, 95, 20, 45 ); //Stem
set_color_profile_slot( 23, 7, 240, 242, 244 ); //Leaves

// Starfy
set_color_profile_slot( 24, 0, 227, 107, 132 ); //Jacket
set_color_profile_slot( 24, 1, 243, 191, 29 ); //Skin/Pot
set_color_profile_slot( 24, 2, 255, 239, 67 ); //Pants
set_color_profile_slot( 24, 3, 243, 191, 29 ); //Hair
set_color_profile_slot( 24, 4, 255, 239, 67 ); //Shoe/Shirt Light
set_color_profile_slot( 24, 5, 243, 191, 29 ); //Shoe/Shirt Dark
set_color_profile_slot( 24, 6, 227, 107, 132 ); //Stem
set_color_profile_slot( 24, 7, 117, 217, 255 ); //Leaves

// Yes, Indeed
set_color_profile_slot( 25, 0, 75, 71, 64 ); //Jacket
set_color_profile_slot( 25, 1, 164, 123, 91 ); //Skin/Pot
set_color_profile_slot( 25, 2, 146, 129, 116 ); //Pants
set_color_profile_slot( 25, 3, 51, 44, 41 ); //Hair
set_color_profile_slot( 25, 4, 227, 193, 169 ); //Shoe/Shirt Light
set_color_profile_slot( 25, 5, 164, 123, 91 ); //Shoe/Shirt Dark
set_color_profile_slot( 25, 6, 57, 54, 47 ); //Stem
set_color_profile_slot( 25, 7, 227, 193, 169 ); //Leaves

// Smolburn
set_color_profile_slot( 26, 0, 122, 90, 78 ); //Jacket
set_color_profile_slot( 26, 1, 175, 126, 62 ); //Skin/Pot
set_color_profile_slot( 26, 2, 122, 92, 80 ); //Pants
set_color_profile_slot( 26, 3, 255, 124, 0 ); //Hair
set_color_profile_slot( 26, 4, 220, 203, 105 ); //Shoe/Shirt Light
set_color_profile_slot( 26, 5, 175, 126, 62 ); //Shoe/Shirt Dark
set_color_profile_slot( 26, 6, 255, 124, 0 ); //Stem
set_color_profile_slot( 26, 7, 255, 228, 0 ); //Leaves

// Minicane
set_color_profile_slot( 27, 0, 59, 73, 135 ); //Jacket
set_color_profile_slot( 27, 1, 130, 173, 177 ); //Skin/Pot
set_color_profile_slot( 27, 2, 59, 73, 135 ); //Pants
set_color_profile_slot( 27, 3, 59, 73, 135 ); //Hair
set_color_profile_slot( 27, 4, 205, 247, 247 ); //Shoe/Shirt Light
set_color_profile_slot( 27, 5, 130, 173, 177 ); //Shoe/Shirt Dark
set_color_profile_slot( 27, 6, 59, 73, 135 ); //Stem
set_color_profile_slot( 27, 7, 130, 173, 177 ); //Leaves

// Wrastiny
set_color_profile_slot( 28, 0, 97, 68, 96 ); //Jacket
set_color_profile_slot( 28, 1, 129, 60, 116 ); //Skin/Pot
set_color_profile_slot( 28, 2, 230, 218, 25 ); //Pants
set_color_profile_slot( 28, 3, 97, 68, 96 ); //Hair
set_color_profile_slot( 28, 4, 246, 173, 197 ); //Shoe/Shirt Light
set_color_profile_slot( 28, 5, 210, 135, 180 ); //Shoe/Shirt Dark
set_color_profile_slot( 28, 6, 182, 182, 182 ); //Stem
set_color_profile_slot( 28, 7, 141, 231, 255 ); //Leaves

// MunchKragg
set_color_profile_slot( 29, 0, 187, 155, 143 ); //Jacket
set_color_profile_slot( 29, 1, 79, 122, 62 ); //Skin/Pot
set_color_profile_slot( 29, 2, 79, 122, 62 ); //Pants
set_color_profile_slot( 29, 3, 187, 155, 143 ); //Hair
set_color_profile_slot( 29, 4, 213, 216, 221 ); //Shoe/Shirt Light
set_color_profile_slot( 29, 5, 139, 149, 167 ); //Shoe/Shirt Dark
set_color_profile_slot( 29, 6, 213, 216, 221 ); //Stem
set_color_profile_slot( 29, 7, 137, 105, 93 ); //Leaves

// Buch
set_color_profile_slot( 30, 0, 39, 92, 171 ); //Jacket
set_color_profile_slot( 30, 1, 200, 200, 240 ); //Skin/Pot
set_color_profile_slot( 30, 2, 130, 56, 64 ); //Pants
set_color_profile_slot( 30, 3, 107, 126, 146 ); //Hair
set_color_profile_slot( 30, 4, 220, 203, 105 ); //Shoe/Shirt Light
set_color_profile_slot( 30, 5, 200, 126, 30 ); //Shoe/Shirt Dark
set_color_profile_slot( 30, 6, 107, 126, 146 ); //Stem
set_color_profile_slot( 30, 7, 59, 73, 135 ); //Leaves

// Feri
set_color_profile_slot( 31, 0, 17, 126, 23 ); //Jacket
set_color_profile_slot( 31, 1, 169, 71, 225 ); //Skin/Pot
set_color_profile_slot( 31, 2, 43, 51, 203 ); //Pants
set_color_profile_slot( 31, 3, 75, 10, 240 ); //Hair
set_color_profile_slot( 31, 4, 168, 19, 19 ); //Shoe/Shirt Light
set_color_profile_slot( 31, 5, 168, 19, 19 ); //Shoe/Shirt Dark
set_color_profile_slot( 31, 6, 17, 126, 23 ); //Stem
set_color_profile_slot( 31, 7, 255, 48, 224 ); //Leaves

// Rainbow
set_color_profile_slot( 32, 0, 57, 92, 104 ); //Jacket
set_color_profile_slot( 32, 1, 216, 155, 141 ); //Skin/Pot
set_color_profile_slot( 32, 2, 111, 170, 193 ); //Pants
set_color_profile_slot( 32, 3, 75, 10, 240 ); //Hair
set_color_profile_slot( 32, 4, 220, 203, 105 ); //Shoe/Shirt Light
set_color_profile_slot( 32, 5, 200, 126, 30 ); //Shoe/Shirt Dark
set_color_profile_slot( 32, 6, 17, 126, 23 ); //Stem
set_color_profile_slot( 32, 7, 82, 180, 127 ); //Leaves

// Random
set_color_profile_slot( 33, 0, 255, 255, 255 ); //Jacket
set_color_profile_slot( 33, 1, 255, 255, 255 ); //Skin/Pot
set_color_profile_slot( 33, 2, 255, 255, 255 ); //Pants
set_color_profile_slot( 33, 3, 255, 255, 255 ); //Hair
set_color_profile_slot( 33, 4, 255, 255, 255 ); //Shoe/Shirt Light
set_color_profile_slot( 33, 5, 255, 255, 255 ); //Shoe/Shirt Dark
set_color_profile_slot( 33, 6, 255, 255, 255 ); //Stem
set_color_profile_slot( 33, 7, 255, 255, 255 ); //Leaves


/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"Jacket","colors":[{"r":57,"g":92,"b":104,"main":true},{"r":26,"g":57,"b":79},{"r":13,"g":28,"b":54}]},{"name":"Skin/Pot","colors":[{"r":244,"g":200,"b":170},{"r":216,"g":155,"b":141,"main":true},{"r":167,"g":93,"b":103}]},{"name":"Pants","colors":[{"r":111,"g":170,"b":193,"main":true},{"r":73,"g":117,"b":152},{"r":54,"g":85,"b":127}]},{"name":"Hair","colors":[{"r":51,"g":44,"b":41,"main":true},{"r":26,"g":23,"b":23}]},{"name":"Shoe/Shirt Light","colors":[{"r":224,"g":222,"b":220,"main":true}]},{"name":"Shoe/Shirt Dark","colors":[{"r":191,"g":178,"b":181,"main":true}]},{"name":"Stem","colors":[{"r":149,"g":67,"b":94,"main":true},{"r":104,"g":49,"b":77}]},{"name":"Leaves","colors":[{"r":117,"g":218,"b":120},{"r":82,"g":180,"b":127,"main":true},{"r":49,"g":112,"b":95}]}]}
=== END JSON PALETTE ===
*/
