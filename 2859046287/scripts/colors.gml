//colors.gml
//this script holds all the character's different alt colors

// default palette

//this part sets up all the base colors from the sprite
//colormapping is done in init_shader.gml
set_color_profile_slot(0, 0, 245, 251, 252); //body
set_color_profile_slot(0, 1, 206, 220, 227); //body shade
set_color_profile_slot(0, 2, 255, 0, 0); //'-' //this value belongs to the sprites in the sprites folder, i later change it to black on init_shader.gml
set_color_profile_slot(0, 3, 74, 162, 246); //effects

//set the "range" of the colors, so the game knows which colors relate to the main color
//the values here are HSV (hue, saturation, value) values, and it's relative to the main color
//for more info check https://rivalsofaether.com/colors-gml/
set_color_profile_slot_range(0, 1, 1, 1);
set_color_profile_slot_range(1, 1, 1, 1);
set_color_profile_slot_range(2, 1, 1, 1);
set_color_profile_slot_range(3, 1, 31, 22);

///////////////////////////////////////////////////////////////////////////////////////////////////////////

// ALTERNATE COLORS
set_num_palettes( 19 );

// red
set_color_profile_slot( 1, 0, 231, 19, 19 ); //body
set_color_profile_slot( 1, 1, 160, 7, 59 ); //body shade
set_color_profile_slot( 1, 2, 255, 177, 41 ); //'-'
set_color_profile_slot( 1, 3, 252, 175, 73 ); //effects
//shading data: [1, 1, 1, 1]

// orange
set_color_profile_slot( 2, 0, 255, 141, 48 ); //body
set_color_profile_slot( 2, 1, 216, 89, 30 ); //body shade
set_color_profile_slot( 2, 2, 84, 43, 19 ); //'-'
set_color_profile_slot( 2, 3, 147, 64, 230 ); //effects
//shading data: [1, 1, 1, 1]

// green
set_color_profile_slot( 3, 0, 61, 231, 65 ); //body
set_color_profile_slot( 3, 1, 44, 175, 91 ); //body shade
set_color_profile_slot( 3, 2, 90, 23, 207 ); //'-'
set_color_profile_slot( 3, 3, 200, 255, 200 ); //effects
//shading data: [1, 1, 1, 1]

// cyan
set_color_profile_slot( 4, 0, 103, 243, 255 ); //body
set_color_profile_slot( 4, 1, 74, 183, 216 ); //body shade
set_color_profile_slot( 4, 2, 14, 140, 117 ); //'-'
set_color_profile_slot( 4, 3, 233, 234, 235 ); //effects
//shading data: [1, 1, 1, 1]

// blue
set_color_profile_slot( 5, 0, 57, 77, 255 ); //body
set_color_profile_slot( 5, 1, 39, 25, 184 ); //body shade
set_color_profile_slot( 5, 2, 255, 228, 16 ); //'-'
set_color_profile_slot( 5, 3, 219, 24, 24 ); //effects
//shading data: [1, 1, 1, 1]

// purple
set_color_profile_slot( 6, 0, 146, 38, 240 ); //body
set_color_profile_slot( 6, 1, 86, 29, 209 ); //body shade
set_color_profile_slot( 6, 2, 255, 170, 0 ); //'-'
set_color_profile_slot( 6, 3, 255, 110, 20 ); //effects
//shading data: [1, 1, 1, 1]

// pink
set_color_profile_slot( 7, 0, 237, 88, 150 ); //body
set_color_profile_slot( 7, 1, 175, 60, 159 ); //body shade
set_color_profile_slot( 7, 2, 77, 21, 117 ); //'-'
set_color_profile_slot( 7, 3, 255, 183, 117 ); //effects
//shading data: [1, 1, 1, 1]

// brown (BLW)
set_color_profile_slot( 8, 0, 115, 66, 26 ); //body
set_color_profile_slot( 8, 1, 64, 25, 18 ); //body shade
set_color_profile_slot( 8, 2, 255, 255, 255 ); //'-'
set_color_profile_slot( 8, 3, 255, 217, 31 ); //effects
//shading data: [1, 1, 1, 1]

// gray
set_color_profile_slot( 9, 0, 150, 161, 163 ); //body
set_color_profile_slot( 9, 1, 109, 114, 130 ); //body shade
set_color_profile_slot( 9, 2, 0, 0, 0 ); //'-'
set_color_profile_slot( 9, 3, 184, 208, 224 ); //effects
//shading data: [1, 1, 1, 1]

// black
set_color_profile_slot( 10, 0, 34, 30, 50 ); //body
set_color_profile_slot( 10, 1, 18, 15, 29 ); //body shade
set_color_profile_slot( 10, 2, 245, 251, 252 ); //'-'
set_color_profile_slot( 10, 3, 178, 0, 0 ); //effects
//shading data: [1, 1, 1, 1]

// rainbow ver. 1 (scrolls between RGB colors consistently)
set_color_profile_slot( 11, 0, 0, 255, 0 ); //body
set_color_profile_slot( 11, 1, 0, 255, 0 ); //body shade
set_color_profile_slot( 11, 2, 0, 0, 0 ); //'-'
set_color_profile_slot( 11, 3, 0, 255, 0 ); //effects
//shading data: [1, 1, 1, 1]

// rainbow ver. 2 (scrolls between # specific colors - 3 by default)
set_color_profile_slot( 12, 0, 0, 255, 0 ); //body
set_color_profile_slot( 12, 1, 0, 255, 0 ); //body shade
set_color_profile_slot( 12, 2, 0, 0, 0 ); //'-'
set_color_profile_slot( 12, 3, 200, 200, 200 ); //effects
//shading data: [1, 1, 1, 1]

// abyss
set_color_profile_slot( 13, 0, 122, 129, 187 ); //body
set_color_profile_slot( 13, 1, 79, 61, 94 ); //body shade
set_color_profile_slot( 13, 2, 255, 127, 0 ); //'-'
set_color_profile_slot( 13, 3, 220, 113, 255 ); //effects
//shading data: [1, 1, 1, 1]

// early access
set_color_profile_slot( 14, 0, 211, 226, 154 ); //body
set_color_profile_slot( 14, 1, 167, 186, 74 ); //body shade
set_color_profile_slot( 14, 2, 83, 122, 62 ); //'-'
set_color_profile_slot( 14, 3, 167, 186, 74 ); //effects
//shading data: [1, 1, 1, 1]

// milestone
set_color_profile_slot( 15, 0, 0, 0, 0 ); //body
set_color_profile_slot( 15, 1, 0, 0, 0 ); //body shade
set_color_profile_slot( 15, 2, 255, 255, 255 ); //'-'
set_color_profile_slot( 15, 3, 0, 255, 0 ); //effects
//shading data: [1, 1, 1, 1]

//seasonals
switch(get_match_setting(SET_SEASON))
{
    case 1: // seasonal - vday
        set_color_profile_slot( 16, 0, 255, 148, 208 ); //body
        set_color_profile_slot( 16, 1, 182, 13, 115 ); //body shade
        set_color_profile_slot( 16, 2, 255, 243, 252 ); //'-'
        set_color_profile_slot( 16, 3, 240, 111, 138 ); //effects
        //shading data: [1, 1, 1, 1]
        break;
    case 2: // seasonal - summer
        set_color_profile_slot( 16, 0, 255, 244, 108 ); //body
        set_color_profile_slot( 16, 1, 227, 134, 32 ); //body shade
        set_color_profile_slot( 16, 2, 85, 181, 233 ); //'-'
        set_color_profile_slot( 16, 3, 253, 167, 39 ); //effects
        //shading data: [1, 1, 1, 1]
        break;
    case 3: // seasonal - halloween
        set_color_profile_slot( 16, 0, 53, 73, 117 ); //body
        set_color_profile_slot( 16, 1, 18, 39, 71 ); //body shade
        set_color_profile_slot( 16, 2, 3, 184, 255 ); //'-'
        set_color_profile_slot( 16, 3, 36, 75, 255 ); //effects
        //shading data: [1, 1, 1, 1]
        break;
    case 4: // seasonal - christmas
        set_color_profile_slot( 16, 0, 255, 212, 209 ); //body
        set_color_profile_slot( 16, 1, 191, 117, 117 ); //body shade
        set_color_profile_slot( 16, 2, 91, 194, 85 ); //'-'
        set_color_profile_slot( 16, 3, 255, 255, 255 ); //effects
        //shading data: [1, 1, 1, 1]
        break;
}

// imfamous
set_color_profile_slot( 17, 0, 54, 231, 251 ); //body
set_color_profile_slot( 17, 1, 84, 82, 167 ); //body shade
set_color_profile_slot( 17, 2, 213, 69, 254 ); //'-'
set_color_profile_slot( 17, 3, 63, 254, 140 ); //effects
//shading data: [1, 1, 1, 1]

// gold rank
set_color_profile_slot( 18, 0, 255, 217, 0 ); //body
set_color_profile_slot( 18, 1, 240, 137, 20 ); //body shade
set_color_profile_slot( 18, 2, 121, 122, 195 ); //'-'
set_color_profile_slot( 18, 3, 225, 225, 237 ); //effects
//shading data: [1, 1, 1, 1]



/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"body","colors":[{"r":245,"g":251,"b":252,"main":true}]},{"name":"body shade","colors":[{"r":206,"g":220,"b":227,"main":true}]},{"name":"'-'","colors":[{"r":255,"g":0,"b":0,"main":true}]},{"name":"effects","colors":[{"r":153,"g":205,"b":255},{"r":74,"g":162,"b":246,"main":true},{"r":50,"g":122,"b":190}]}]}
=== END JSON PALETTE ===
*/