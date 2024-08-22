//init_shader.gml

if("color_shift" not in self)
{
    split_var = split_synced_var(2,1,1);

    color_shift = split_var[0];
    should_switch = split_var[1]; // Swap this name to your other button. Also swap it in CSS update
    awesome = split_var[2] // swap this to Rick's result variable. Also swat it in CSS update
}
if (get_player_color(player) == 0)
{
    switch(color_shift)
    {
        case 0:
            //OG colors for alt 0
            set_character_color_slot( 6, 13, 13, 69 ); //Legging 1
            set_character_color_slot( 7, 34, 32, 52 ); //Legging 2
            set_character_color_slot( 1, 45, 45, 151 ); //Eyes
            set_article_color_slot( 6, 13, 13, 69 ); //Legging 1
            set_article_color_slot( 7, 34, 32, 52 ); //Legging 2
            set_article_color_slot( 1, 45, 45, 151 ); //Eyes
            break;
        case 1:
            set_character_color_slot( 0, 12, 127, 169 ); //Hair
            set_character_color_slot( 1, 45, 45, 151 ); //Eyes
            set_character_color_slot( 2, 95, 133, 146 ); //Bows
            set_character_color_slot( 3, 190, 194, 196 ); //Shirt
            set_character_color_slot( 4, 229, 176, 145 ); //Skin
            set_character_color_slot( 5, 4, 163, 172 ); //Axe Blade
            set_character_color_slot( 6, 233, 224, 225 ); //Legging 1
            set_character_color_slot( 7, 233, 224, 225 ); //Legging 2
            set_article_color_slot( 0, 12, 127, 169 ); //Hair
            set_article_color_slot( 1, 45, 45, 151 ); //Eyes
            set_article_color_slot( 2, 95, 133, 146 ); //Bows
            set_article_color_slot( 3, 190, 194, 196 ); //Shirt
            set_article_color_slot( 4, 229, 176, 145 ); //Skin
            set_article_color_slot( 5, 4, 163, 172 ); //Axe Blade
            set_article_color_slot( 6, 233, 224, 225 ); //Legging 1
            set_article_color_slot( 7, 233, 224, 225 ); //Legging 2
            break;
        case 2:
            set_character_color_slot( 0, 237, 138, 139 ); //Hair
            set_character_color_slot( 1, 186, 114, 122 ); //Eyes
            set_character_color_slot( 2, 253, 167, 178 ); //Bows
            set_character_color_slot( 3, 63, 72, 119 ); //Shirt
            set_character_color_slot( 4, 229, 176, 145 ); //Skin
            set_character_color_slot( 5, 224, 63, 144 ); //Axe Blade
            set_character_color_slot( 6, 107, 97, 87 ); //Legging 1
            set_character_color_slot( 7, 107, 97, 87 ); //Legging 2
            set_article_color_slot( 0, 237, 138, 139 ); //Hair
            set_article_color_slot( 1, 186, 114, 122 ); //Eyes
            set_article_color_slot( 2, 253, 167, 178 ); //Bows
            set_article_color_slot( 3, 63, 72, 119 ); //Shirt
            set_article_color_slot( 4, 229, 176, 145 ); //Skin
            set_article_color_slot( 5, 224, 63, 144 ); //Axe Blade
            set_article_color_slot( 6, 107, 97, 87 ); //Legging 1
            set_article_color_slot( 7, 107, 97, 87 ); //Legging 2
            break;
    }
}

var alt_cur = get_player_color((room == 113 && object_index != oTestPlayer) ? 0 : player);

// Guner stuff below
//#region Gunner Shader Code
if("color_shift" not in self){exit;}
if("manual_init_shader_call" not in self){exit;}

//#endregion
// This is where the colors are manually reset with this template.
// You will need to paste the colors into this from the colors.gml file. Pay attanetion to which
// "Color shift" you are putting them in, as this is a switch statement.
if(manual_init_shader_call){
    switch(color_shift){
        case 0: // Original Colors
//#region Normal Colors
// Paste colors under here. Did the first version using suisei colors

// ALTERNATE COLORS

// The OG
set_color_profile_slot( 1, 0, 74, 42, 33 ); //Hair
set_color_profile_slot( 1, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 1, 2, 184, 48, 85 ); //Bows
set_color_profile_slot( 1, 3, 66, 73, 173 ); //Shirt
set_color_profile_slot( 1, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 1, 5, 158, 158, 158 ); //Axe Blade
set_color_profile_slot( 1, 6, 24, 23, 66 ); //Legging 1
set_color_profile_slot( 1, 7, 24, 23, 66 ); //Legging 2

// Virtual Diva
set_color_profile_slot( 2, 0, 68, 39, 54 ); //Hair
set_color_profile_slot( 2, 1, 177, 47, 207 ); //Eyes
set_color_profile_slot( 2, 2, 214, 181, 206 ); //Bows
set_color_profile_slot( 2, 3, 161, 134, 129 ); //Shirt
set_color_profile_slot( 2, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 2, 5, 216, 78, 112 ); //Axe Blade
set_color_profile_slot( 2, 6, 51, 38, 50 ); //Legging 1
set_color_profile_slot( 2, 7, 51, 38, 50 ); //Legging 2

// Shrine Maiden
set_color_profile_slot( 3, 0, 255, 107, 115 ); //Hair
set_color_profile_slot( 3, 1, 0, 130, 0 ); //Eyes
set_color_profile_slot( 3, 2, 116, 17, 67 ); //Bows
set_color_profile_slot( 3, 3, 171, 160, 160 ); //Shirt
set_color_profile_slot( 3, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 3, 5, 116, 17, 67 ); //Axe Blade
set_color_profile_slot( 3, 6, 235, 220, 220 ); //Legging 1
set_color_profile_slot( 3, 7, 235, 220, 220 ); //Legging 2

// High Spec
set_color_profile_slot( 4, 0, 43, 20, 18 ); //Hair
set_color_profile_slot( 4, 1, 173, 149, 8 ); //Eyes
set_color_profile_slot( 4, 2, 34, 32, 41 ); //Bows
set_color_profile_slot( 4, 3, 199, 121, 149 ); //Shirt
set_color_profile_slot( 4, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 4, 5, 220, 41, 50 ); //Axe Blade
set_color_profile_slot( 4, 6, 216, 201, 198 ); //Legging 1
set_color_profile_slot( 4, 7, 216, 201, 198 ); //Legging 2

// Red Heart
set_color_profile_slot( 5, 0, 209, 164, 73 ); //Hair
set_color_profile_slot( 5, 1, 104, 186, 199 ); //Eyes
set_color_profile_slot( 5, 2, 151, 45, 45 ); //Bows
set_color_profile_slot( 5, 3, 44, 41, 40 ); //Shirt
set_color_profile_slot( 5, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 5, 5, 34, 32, 52 ); //Axe Blade
set_color_profile_slot( 5, 6, 59, 53, 61 ); //Legging 1
set_color_profile_slot( 5, 7, 59, 53, 61 ); //Legging 2

// Summer Festival
set_color_profile_slot( 6, 0, 86, 59, 59 ); //Hair
set_color_profile_slot( 6, 1, 75, 153, 172 ); //Eyes
set_color_profile_slot( 6, 2, 126, 168, 62 ); //Bows
set_color_profile_slot( 6, 3, 186, 115, 56 ); //Shirt
set_color_profile_slot( 6, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 6, 5, 139, 183, 67 ); //Axe Blade
set_color_profile_slot( 6, 6, 76, 57, 60 ); //Legging 1
set_color_profile_slot( 6, 7, 76, 57, 60 ); //Legging 2

// Dimensional Girl
set_color_profile_slot( 7, 0, 222, 189, 122 ); //Hair
set_color_profile_slot( 7, 1, 136, 36, 144 ); //Eyes
set_color_profile_slot( 7, 2, 126, 15, 66 ); //Bows
set_color_profile_slot( 7, 3, 123, 114, 193 ); //Shirt
set_color_profile_slot( 7, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 7, 5, 164, 238, 118 ); //Axe Blade
set_color_profile_slot( 7, 6, 72, 54, 85 ); //Legging 1
set_color_profile_slot( 7, 7, 72, 54, 85 ); //Legging 2

// Banpire
set_color_profile_slot( 8, 0, 255, 203, 125 ); //Hair
set_color_profile_slot( 8, 1, 235, 143, 54 ); //Eyes
set_color_profile_slot( 8, 2, 46, 46, 46 ); //Bows
set_color_profile_slot( 8, 3, 153, 68, 49 ); //Shirt
set_color_profile_slot( 8, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 8, 5, 196, 78, 53 ); //Axe Blade
set_color_profile_slot( 8, 6, 35, 34, 34 ); //Legging 1
set_color_profile_slot( 8, 7, 35, 34, 34 ); //Legging 2

// Succubus Nurse
set_color_profile_slot( 9, 0, 209, 172, 115 ); //Hair
set_color_profile_slot( 9, 1, 27, 49, 103 ); //Eyes
set_color_profile_slot( 9, 2, 10, 11, 49 ); //Bows
set_color_profile_slot( 9, 3, 186, 115, 144 ); //Shirt
set_color_profile_slot( 9, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 9, 5, 132, 5, 42 ); //Axe Blade
set_color_profile_slot( 9, 6, 103, 78, 77 ); //Legging 1
set_color_profile_slot( 9, 7, 103, 78, 77 ); //Legging 2

// Bratty Witch
set_color_profile_slot( 10, 0, 178, 164, 180 ); //Hair
set_color_profile_slot( 10, 1, 249, 153, 126 ); //Eyes
set_color_profile_slot( 10, 2, 103, 42, 125 ); //Bows
set_color_profile_slot( 10, 3, 63, 63, 95 ); //Shirt
set_color_profile_slot( 10, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 10, 5, 98, 184, 55 ); //Axe Blade
set_color_profile_slot( 10, 6, 226, 225, 213 ); //Legging 1
set_color_profile_slot( 10, 7, 122, 109, 145 ); //Legging 2

// Loud Duck
set_color_profile_slot( 11, 0, 69, 45, 49 ); //Hair
set_color_profile_slot( 11, 1, 77, 176, 197 ); //Eyes
set_color_profile_slot( 11, 2, 210, 56, 34 ); //Bows
set_color_profile_slot( 11, 3, 186, 170, 71 ); //Shirt
set_color_profile_slot( 11, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 11, 5, 27, 125, 194 ); //Axe Blade
set_color_profile_slot( 11, 6, 187, 51, 31 ); //Legging 1
set_color_profile_slot( 11, 7, 254, 237, 213 ); //Legging 2

// Yo Dayo!
set_color_profile_slot( 12, 0, 184, 180, 180 ); //Hair
set_color_profile_slot( 12, 1, 224, 30, 75 ); //Eyes
set_color_profile_slot( 12, 2, 40, 34, 50 ); //Bows
set_color_profile_slot( 12, 3, 150, 31, 50 ); //Shirt
set_color_profile_slot( 12, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 12, 5, 166, 30, 59 ); //Axe Blade
set_color_profile_slot( 12, 6, 222, 217, 222 ); //Legging 1
set_color_profile_slot( 12, 7, 222, 217, 222 ); //Legging 2

// Gamer Maid
set_color_profile_slot( 13, 0, 188, 95, 155 ); //Hair
set_color_profile_slot( 13, 1, 156, 66, 124 ); //Eyes
set_color_profile_slot( 13, 2, 166, 166, 166 ); //Bows
set_color_profile_slot( 13, 3, 60, 56, 130 ); //Shirt
set_color_profile_slot( 13, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 13, 5, 167, 70, 138 ); //Axe Blade
set_color_profile_slot( 13, 6, 92, 88, 159 ); //Legging 1
set_color_profile_slot( 13, 7, 235, 220, 220 ); //Legging 2

// Gamer Cat
set_color_profile_slot( 14, 0, 195, 163, 218 ); //Hair
set_color_profile_slot( 14, 1, 151, 86, 211 ); //Eyes
set_color_profile_slot( 14, 2, 150, 88, 173 ); //Bows
set_color_profile_slot( 14, 3, 62, 65, 71 ); //Shirt
set_color_profile_slot( 14, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 14, 5, 222, 129, 255 ); //Axe Blade
set_color_profile_slot( 14, 6, 227, 226, 228 ); //Legging 1
set_color_profile_slot( 14, 7, 227, 226, 228 ); //Legging 2

// Gamer Doog
set_color_profile_slot( 15, 0, 93, 46, 42 ); //Hair
set_color_profile_slot( 15, 1, 156, 88, 70 ); //Eyes
set_color_profile_slot( 15, 2, 166, 166, 166 ); //Bows
set_color_profile_slot( 15, 3, 173, 138, 68 ); //Shirt
set_color_profile_slot( 15, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 15, 5, 193, 53, 74 ); //Axe Blade
set_color_profile_slot( 15, 6, 171, 37, 61 ); //Legging 1
set_color_profile_slot( 15, 7, 171, 37, 61 ); //Legging 2

// Gamer Wolf
set_color_profile_slot( 16, 0, 34, 32, 41 ); //Hair
set_color_profile_slot( 16, 1, 204, 130, 73 ); //Eyes
set_color_profile_slot( 16, 2, 151, 45, 45 ); //Bows
set_color_profile_slot( 16, 3, 34, 32, 41 ); //Shirt
set_color_profile_slot( 16, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 16, 5, 34, 32, 41 ); //Axe Blade
set_color_profile_slot( 16, 6, 34, 32, 41 ); //Legging 1
set_color_profile_slot( 16, 7, 235, 220, 220 ); //Legging 2

// Fox Friend
set_color_profile_slot( 17, 0, 191, 188, 183 ); //Hair
set_color_profile_slot( 17, 1, 121, 132, 155 ); //Eyes
set_color_profile_slot( 17, 2, 38, 35, 41 ); //Bows
set_color_profile_slot( 17, 3, 150, 150, 147 ); //Shirt
set_color_profile_slot( 17, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 17, 5, 135, 175, 204 ); //Axe Blade
set_color_profile_slot( 17, 6, 46, 46, 51 ); //Legging 1
set_color_profile_slot( 17, 7, 46, 46, 51 ); //Legging 2

// Pirate Club Captain
set_color_profile_slot( 18, 0, 151, 45, 45 ); //Hair
set_color_profile_slot( 18, 1, 209, 62, 62 ); //Eyes
set_color_profile_slot( 18, 2, 34, 32, 41 ); //Bows
set_color_profile_slot( 18, 3, 121, 49, 55 ); //Shirt
set_color_profile_slot( 18, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 18, 5, 190, 141, 57 ); //Axe Blade
set_color_profile_slot( 18, 6, 105, 85, 74 ); //Legging 1
set_color_profile_slot( 18, 7, 105, 85, 74 ); //Legging 2

// War Criminal
set_color_profile_slot( 19, 0, 159, 184, 224 ); //Hair
set_color_profile_slot( 19, 1, 254, 164, 73 ); //Eyes
set_color_profile_slot( 19, 2, 49, 91, 207 ); //Bows
set_color_profile_slot( 19, 3, 143, 141, 142 ); //Shirt
set_color_profile_slot( 19, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 19, 5, 244, 135, 79 ); //Axe Blade
set_color_profile_slot( 19, 6, 105, 85, 74 ); //Legging 1
set_color_profile_slot( 19, 7, 105, 85, 74 ); //Legging 2

// Necromancer
set_color_profile_slot( 20, 0, 88, 184, 166 ); //Hair
set_color_profile_slot( 20, 1, 200, 48, 43 ); //Eyes
set_color_profile_slot( 20, 2, 29, 39, 66 ); //Bows
set_color_profile_slot( 20, 3, 97, 121, 156 ); //Shirt
set_color_profile_slot( 20, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 20, 5, 66, 138, 124 ); //Axe Blade
set_color_profile_slot( 20, 6, 105, 85, 74 ); //Legging 1
set_color_profile_slot( 20, 7, 105, 85, 74 ); //Legging 2

// Half Elf
set_color_profile_slot( 21, 0, 239, 181, 128 ); //Hair
set_color_profile_slot( 21, 1, 243, 68, 21 ); //Eyes
set_color_profile_slot( 21, 2, 48, 86, 141 ); //Bows
set_color_profile_slot( 21, 3, 166, 168, 168 ); //Shirt
set_color_profile_slot( 21, 4, 212, 139, 112 ); //Skin
set_color_profile_slot( 21, 5, 133, 9, 5 ); //Axe Blade
set_color_profile_slot( 21, 6, 249, 241, 242 ); //Legging 1
set_color_profile_slot( 21, 7, 249, 241, 242 ); //Legging 2

// Meathead Knight
set_color_profile_slot( 22, 0, 146, 132, 140 ); //Hair
set_color_profile_slot( 22, 1, 130, 168, 112 ); //Eyes
set_color_profile_slot( 22, 2, 56, 84, 112 ); //Bows
set_color_profile_slot( 22, 3, 88, 85, 83 ); //Shirt
set_color_profile_slot( 22, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 22, 5, 146, 132, 140 ); //Axe Blade
set_color_profile_slot( 22, 6, 70, 55, 51 ); //Legging 1
set_color_profile_slot( 22, 7, 70, 55, 51 ); //Legging 2

// TMT
set_color_profile_slot( 23, 0, 117, 77, 153 ); //Hair
set_color_profile_slot( 23, 1, 36, 191, 36 ); //Eyes
set_color_profile_slot( 23, 2, 49, 45, 58 ); //Bows
set_color_profile_slot( 23, 3, 159, 133, 171 ); //Shirt
set_color_profile_slot( 23, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 23, 5, 245, 88, 157 ); //Axe Blade
set_color_profile_slot( 23, 6, 49, 45, 58 ); //Legging 1
set_color_profile_slot( 23, 7, 49, 45, 58 ); //Legging 2

// Legendary Dragon
set_color_profile_slot( 24, 0, 204, 92, 45 ); //Hair
set_color_profile_slot( 24, 1, 163, 33, 159 ); //Eyes
set_color_profile_slot( 24, 2, 151, 45, 45 ); //Bows
set_color_profile_slot( 24, 3, 54, 52, 73 ); //Shirt
set_color_profile_slot( 24, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 24, 5, 95, 43, 90 ); //Axe Blade
set_color_profile_slot( 24, 6, 54, 44, 38 ); //Legging 1
set_color_profile_slot( 24, 7, 54, 44, 38 ); //Legging 2

// 50kg Grip Angel
set_color_profile_slot( 25, 0, 171, 185, 203 ); //Hair
set_color_profile_slot( 25, 1, 21, 49, 159 ); //Eyes
set_color_profile_slot( 25, 2, 35, 110, 218 ); //Bows
set_color_profile_slot( 25, 3, 111, 105, 111 ); //Shirt
set_color_profile_slot( 25, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 25, 5, 191, 185, 124 ); //Axe Blade
set_color_profile_slot( 25, 6, 175, 211, 218 ); //Legging 1
set_color_profile_slot( 25, 7, 175, 211, 218 ); //Legging 2

// Candy Princess
set_color_profile_slot( 26, 0, 232, 157, 198 ); //Hair
set_color_profile_slot( 26, 1, 162, 117, 184 ); //Eyes
set_color_profile_slot( 26, 2, 179, 100, 165 ); //Bows
set_color_profile_slot( 26, 3, 189, 159, 185 ); //Shirt
set_color_profile_slot( 26, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 26, 5, 185, 71, 143 ); //Axe Blade
set_color_profile_slot( 26, 6, 182, 189, 243 ); //Legging 1
set_color_profile_slot( 26, 7, 162, 117, 184 ); //Legging 2

// Warukunai Yo Ne?
set_color_profile_slot( 27, 0, 225, 209, 132 ); //Hair
set_color_profile_slot( 27, 1, 52, 65, 201 ); //Eyes
set_color_profile_slot( 27, 2, 197, 107, 117 ); //Bows
set_color_profile_slot( 27, 3, 163, 150, 153 ); //Shirt
set_color_profile_slot( 27, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 27, 5, 255, 81, 84 ); //Axe Blade
set_color_profile_slot( 27, 6, 186, 171, 198 ); //Legging 1
set_color_profile_slot( 27, 7, 186, 171, 198 ); //Legging 2

// Ghost
set_color_profile_slot( 28, 0, 95, 109, 120 ); //Hair
set_color_profile_slot( 28, 1, 62, 184, 212 ); //Eyes
set_color_profile_slot( 28, 2, 49, 144, 166 ); //Bows
set_color_profile_slot( 28, 3, 231, 231, 229 ); //Shirt
set_color_profile_slot( 28, 4, 246, 238, 227 ); //Skin
set_color_profile_slot( 28, 5, 49, 144, 166 ); //Axe Blade
set_color_profile_slot( 28, 6, 49, 144, 166 ); //Legging 1
set_color_profile_slot( 28, 7, 67, 73, 87 ); //Legging 2

// Template
set_color_profile_slot( 29, 0, 19, 172, 201 ); //Hair
set_color_profile_slot( 29, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 29, 2, 245, 88, 157 ); //Bows
set_color_profile_slot( 29, 3, 49, 53, 82 ); //Shirt
set_color_profile_slot( 29, 4, 255, 200, 179 ); //Skin
set_color_profile_slot( 29, 5, 245, 88, 157 ); //Axe Blade
set_color_profile_slot( 29, 6, 245, 88, 157 ); //Legging 1
set_color_profile_slot( 29, 7, 233, 228, 228 ); //Legging 2

// Shout in Crisis
set_color_profile_slot( 30, 0, 12, 127, 169 ); //Hair
set_color_profile_slot( 30, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 30, 2, 135, 27, 46 ); //Bows
set_color_profile_slot( 30, 3, 49, 47, 61 ); //Shirt
set_color_profile_slot( 30, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 30, 5, 16, 19, 41 ); //Axe Blade
set_color_profile_slot( 30, 6, 84, 87, 99 ); //Legging 1
set_color_profile_slot( 30, 7, 84, 87, 99 ); //Legging 2


// Do not paste below here for normal colors
//#endregion
    break;
    case 1: // Color Shifting
//#region Extra 1
// Paste extra colors below here

// Friend A
set_color_profile_slot( 1, 0, 70, 54, 135 ); //Hair
set_color_profile_slot( 1, 1, 120, 171, 179 ); //Eyes
set_color_profile_slot( 1, 2, 54, 89, 202 ); //Bows
set_color_profile_slot( 1, 3, 39, 41, 59 ); //Shirt
set_color_profile_slot( 1, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 1, 5, 43, 204, 252 ); //Axe Blade
set_color_profile_slot( 1, 6, 46, 67, 90 ); //Legging 1
set_color_profile_slot( 1, 7, 46, 67, 90 ); //Legging 2

// Everyone's Wife
set_color_profile_slot( 2, 0, 238, 189, 132 ); //Hair
set_color_profile_slot( 2, 1, 32, 168, 32 ); //Eyes
set_color_profile_slot( 2, 2, 222, 175, 210 ); //Bows
set_color_profile_slot( 2, 3, 158, 113, 79 ); //Shirt
set_color_profile_slot( 2, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 2, 5, 247, 20, 95 ); //Axe Blade
set_color_profile_slot( 2, 6, 171, 121, 139 ); //Legging 1
set_color_profile_slot( 2, 7, 235, 220, 220 ); //Legging 2

// FPS Lion
set_color_profile_slot( 3, 0, 175, 148, 145 ); //Hair
set_color_profile_slot( 3, 1, 107, 131, 146 ); //Eyes
set_color_profile_slot( 3, 2, 124, 116, 133 ); //Bows
set_color_profile_slot( 3, 3, 38, 38, 38 ); //Shirt
set_color_profile_slot( 3, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 3, 5, 199, 168, 119 ); //Axe Blade
set_color_profile_slot( 3, 6, 91, 84, 104 ); //Legging 1
set_color_profile_slot( 3, 7, 91, 84, 104 ); //Legging 2

// Drunken Snow-Elf
set_color_profile_slot( 4, 0, 165, 214, 251 ); //Hair
set_color_profile_slot( 4, 1, 254, 212, 153 ); //Eyes
set_color_profile_slot( 4, 2, 78, 125, 204 ); //Bows
set_color_profile_slot( 4, 3, 181, 168, 173 ); //Shirt
set_color_profile_slot( 4, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 4, 5, 49, 96, 210 ); //Axe Blade
set_color_profile_slot( 4, 6, 254, 234, 232 ); //Legging 1
set_color_profile_slot( 4, 7, 254, 234, 232 ); //Legging 2

// The Whole Circus
set_color_profile_slot( 5, 0, 222, 193, 150 ); //Hair
set_color_profile_slot( 5, 1, 173, 132, 187 ); //Eyes
set_color_profile_slot( 5, 2, 50, 143, 225 ); //Bows
set_color_profile_slot( 5, 3, 163, 41, 46 ); //Shirt
set_color_profile_slot( 5, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 5, 5, 243, 162, 208 ); //Axe Blade
set_color_profile_slot( 5, 6, 247, 54, 115 ); //Legging 1
set_color_profile_slot( 5, 7, 43, 102, 180 ); //Legging 2

// Priestess
set_color_profile_slot( 6, 0, 95, 69, 128 ); //Hair
set_color_profile_slot( 6, 1, 89, 73, 122 ); //Eyes
set_color_profile_slot( 6, 2, 168, 84, 32 ); //Bows
set_color_profile_slot( 6, 3, 68, 58, 79 ); //Shirt
set_color_profile_slot( 6, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 6, 5, 132, 88, 168 ); //Axe Blade
set_color_profile_slot( 6, 6, 235, 220, 220 ); //Legging 1
set_color_profile_slot( 6, 7, 235, 220, 220 ); //Legging 2

// Shaaaaaark
set_color_profile_slot( 7, 0, 159, 207, 201 ); //Hair
set_color_profile_slot( 7, 1, 98, 121, 150 ); //Eyes
set_color_profile_slot( 7, 2, 194, 60, 64 ); //Bows
set_color_profile_slot( 7, 3, 60, 93, 150 ); //Shirt
set_color_profile_slot( 7, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 7, 5, 62, 108, 135 ); //Axe Blade
set_color_profile_slot( 7, 6, 33, 75, 150 ); //Legging 1
set_color_profile_slot( 7, 7, 33, 75, 150 ); //Legging 2

// Time-Traveling Detective
set_color_profile_slot( 8, 0, 250, 200, 130 ); //Hair
set_color_profile_slot( 8, 1, 111, 178, 206 ); //Eyes
set_color_profile_slot( 8, 2, 77, 42, 32 ); //Bows
set_color_profile_slot( 8, 3, 168, 140, 118 ); //Shirt
set_color_profile_slot( 8, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 8, 5, 98, 171, 187 ); //Axe Blade
set_color_profile_slot( 8, 6, 74, 54, 59 ); //Legging 1
set_color_profile_slot( 8, 7, 74, 54, 59 ); //Legging 2

// Reaper on Hiatus
set_color_profile_slot( 9, 0, 234, 171, 190 ); //Hair
set_color_profile_slot( 9, 1, 208, 97, 112 ); //Eyes
set_color_profile_slot( 9, 2, 128, 94, 64 ); //Bows
set_color_profile_slot( 9, 3, 40, 37, 43 ); //Shirt
set_color_profile_slot( 9, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 9, 5, 166, 33, 27 ); //Axe Blade
set_color_profile_slot( 9, 6, 99, 74, 76 ); //Legging 1
set_color_profile_slot( 9, 7, 99, 74, 76 ); //Legging 2

// Phoenix Warrior
set_color_profile_slot( 10, 0, 227, 95, 63 ); //Hair
set_color_profile_slot( 10, 1, 191, 54, 149 ); //Eyes
set_color_profile_slot( 10, 2, 35, 42, 87 ); //Bows
set_color_profile_slot( 10, 3, 183, 76, 64 ); //Shirt
set_color_profile_slot( 10, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 10, 5, 227, 95, 63 ); //Axe Blade
set_color_profile_slot( 10, 6, 225, 222, 226 ); //Legging 1
set_color_profile_slot( 10, 7, 225, 222, 226 ); //Legging 2

// Chaos Rat
set_color_profile_slot( 11, 0, 166, 33, 27 ); //Hair
set_color_profile_slot( 11, 1, 93, 126, 207 ); //Eyes
set_color_profile_slot( 11, 2, 65, 171, 157 ); //Bows
set_color_profile_slot( 11, 3, 168, 39, 30 ); //Shirt
set_color_profile_slot( 11, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 11, 5, 236, 189, 44 ); //Axe Blade
set_color_profile_slot( 11, 6, 101, 211, 201 ); //Legging 1
set_color_profile_slot( 11, 7, 236, 189, 44 ); //Legging 2

// Time Warden
set_color_profile_slot( 12, 0, 59, 64, 89 ); //Hair
set_color_profile_slot( 12, 1, 63, 102, 241 ); //Eyes
set_color_profile_slot( 12, 2, 28, 45, 122 ); //Bows
set_color_profile_slot( 12, 3, 153, 143, 143 ); //Shirt
set_color_profile_slot( 12, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 12, 5, 134, 134, 135 ); //Axe Blade
set_color_profile_slot( 12, 6, 44, 44, 45 ); //Legging 1
set_color_profile_slot( 12, 7, 44, 44, 45 ); //Legging 2

// Guardian of Civilization
set_color_profile_slot( 13, 0, 138, 106, 94 ); //Hair
set_color_profile_slot( 13, 1, 136, 76, 48 ); //Eyes
set_color_profile_slot( 13, 2, 113, 41, 42 ); //Bows
set_color_profile_slot( 13, 3, 54, 43, 41 ); //Shirt
set_color_profile_slot( 13, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 13, 5, 136, 76, 48 ); //Axe Blade
set_color_profile_slot( 13, 6, 54, 42, 42 ); //Legging 1
set_color_profile_slot( 13, 7, 54, 42, 42 ); //Legging 2

// Mother Nature
set_color_profile_slot( 14, 0, 105, 186, 85 ); //Hair
set_color_profile_slot( 14, 1, 232, 182, 81 ); //Eyes
set_color_profile_slot( 14, 2, 245, 125, 149 ); //Bows
set_color_profile_slot( 14, 3, 69, 85, 103 ); //Shirt
set_color_profile_slot( 14, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 14, 5, 190, 141, 57 ); //Axe Blade
set_color_profile_slot( 14, 6, 72, 102, 123 ); //Legging 1
set_color_profile_slot( 14, 7, 235, 220, 220 ); //Legging 2

// Speaker of Space
set_color_profile_slot( 15, 0, 228, 191, 173 ); //Hair
set_color_profile_slot( 15, 1, 184, 159, 20 ); //Eyes
set_color_profile_slot( 15, 2, 14, 17, 77 ); //Bows
set_color_profile_slot( 15, 3, 171, 160, 160 ); //Shirt
set_color_profile_slot( 15, 4, 189, 135, 97 ); //Skin
set_color_profile_slot( 15, 5, 254, 125, 6 ); //Axe Blade
set_color_profile_slot( 15, 6, 209, 63, 145 ); //Legging 1
set_color_profile_slot( 15, 7, 21, 26, 117 ); //Legging 2

// Project HOPE
set_color_profile_slot( 16, 0, 143, 3, 69 ); //Hair
set_color_profile_slot( 16, 1, 104, 203, 214 ); //Eyes
set_color_profile_slot( 16, 2, 151, 2, 36 ); //Bows
set_color_profile_slot( 16, 3, 163, 153, 173 ); //Shirt
set_color_profile_slot( 16, 4, 251, 165, 161 ); //Skin
set_color_profile_slot( 16, 5, 230, 49, 105 ); //Axe Blade
set_color_profile_slot( 16, 6, 59, 3, 41 ); //Legging 1
set_color_profile_slot( 16, 7, 59, 3, 41 ); //Legging 2

// holoX Prez
set_color_profile_slot( 17, 0, 171, 166, 173 ); //Hair
set_color_profile_slot( 17, 1, 232, 182, 81 ); //Eyes
set_color_profile_slot( 17, 2, 113, 47, 179 ); //Bows
set_color_profile_slot( 17, 3, 49, 36, 61 ); //Shirt
set_color_profile_slot( 17, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 17, 5, 36, 27, 52 ); //Axe Blade
set_color_profile_slot( 17, 6, 73, 58, 88 ); //Legging 1
set_color_profile_slot( 17, 7, 132, 79, 156 ); //Legging 2

// holoX Officer
set_color_profile_slot( 18, 0, 196, 129, 128 ); //Hair
set_color_profile_slot( 18, 1, 59, 177, 204 ); //Eyes
set_color_profile_slot( 18, 2, 33, 33, 33 ); //Bows
set_color_profile_slot( 18, 3, 144, 28, 91 ); //Shirt
set_color_profile_slot( 18, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 18, 5, 144, 28, 91 ); //Axe Blade
set_color_profile_slot( 18, 6, 112, 79, 79 ); //Legging 1
set_color_profile_slot( 18, 7, 112, 79, 79 ); //Legging 2

// holoX Researcher
set_color_profile_slot( 19, 0, 222, 161, 187 ); //Hair
set_color_profile_slot( 19, 1, 132, 102, 168 ); //Eyes
set_color_profile_slot( 19, 2, 186, 105, 156 ); //Bows
set_color_profile_slot( 19, 3, 70, 66, 92 ); //Shirt
set_color_profile_slot( 19, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 19, 5, 212, 65, 77 ); //Axe Blade
set_color_profile_slot( 19, 6, 168, 137, 127 ); //Legging 1
set_color_profile_slot( 19, 7, 168, 137, 127 ); //Legging 2

// holoX Cleaner
set_color_profile_slot( 20, 0, 152, 146, 147 ); //Hair
set_color_profile_slot( 20, 1, 196, 72, 71 ); //Eyes
set_color_profile_slot( 20, 2, 175, 63, 62 ); //Bows
set_color_profile_slot( 20, 3, 69, 69, 70 ); //Shirt
set_color_profile_slot( 20, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 20, 5, 93, 45, 49 ); //Axe Blade
set_color_profile_slot( 20, 6, 99, 79, 76 ); //Legging 1
set_color_profile_slot( 20, 7, 99, 79, 76 ); //Legging 2

// holoX Ninja(?)
set_color_profile_slot( 21, 0, 210, 176, 147 ); //Hair
set_color_profile_slot( 21, 1, 147, 208, 204 ); //Eyes
set_color_profile_slot( 21, 2, 45, 46, 44 ); //Bows
set_color_profile_slot( 21, 3, 125, 171, 166 ); //Shirt
set_color_profile_slot( 21, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 21, 5, 92, 153, 158 ); //Axe Blade
set_color_profile_slot( 21, 6, 234, 212, 190 ); //Legging 1
set_color_profile_slot( 21, 7, 234, 212, 190 ); //Legging 2

// Nonstop Squirrel
set_color_profile_slot( 22, 0, 143, 86, 57 ); //Hair
set_color_profile_slot( 22, 1, 61, 177, 142 ); //Eyes
set_color_profile_slot( 22, 2, 112, 70, 50 ); //Bows
set_color_profile_slot( 22, 3, 199, 121, 127 ); //Shirt
set_color_profile_slot( 22, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 22, 5, 219, 103, 79 ); //Axe Blade
set_color_profile_slot( 22, 6, 242, 223, 203 ); //Legging 1
set_color_profile_slot( 22, 7, 242, 223, 203 ); //Legging 2

// Moon Goddess
set_color_profile_slot( 23, 0, 136, 110, 189 ); //Hair
set_color_profile_slot( 23, 1, 105, 78, 193 ); //Eyes
set_color_profile_slot( 23, 2, 226, 205, 160 ); //Bows
set_color_profile_slot( 23, 3, 163, 148, 155 ); //Shirt
set_color_profile_slot( 23, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 23, 5, 136, 110, 189 ); //Axe Blade
set_color_profile_slot( 23, 6, 42, 39, 35 ); //Legging 1
set_color_profile_slot( 23, 7, 42, 39, 35 ); //Legging 2

// Artistic Alien
set_color_profile_slot( 24, 0, 217, 179, 178 ); //Hair
set_color_profile_slot( 24, 1, 142, 110, 174 ); //Eyes
set_color_profile_slot( 24, 2, 122, 161, 67 ); //Bows
set_color_profile_slot( 24, 3, 40, 53, 87 ); //Shirt
set_color_profile_slot( 24, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 24, 5, 199, 103, 230 ); //Axe Blade
set_color_profile_slot( 24, 6, 224, 184, 64 ); //Legging 1
set_color_profile_slot( 24, 7, 255, 128, 158 ); //Legging 2

// Zombie Idol
set_color_profile_slot( 25, 0, 159, 8, 39 ); //Hair
set_color_profile_slot( 25, 1, 161, 48, 48 ); //Eyes
set_color_profile_slot( 25, 2, 119, 36, 50 ); //Bows
set_color_profile_slot( 25, 3, 70, 86, 101 ); //Shirt
set_color_profile_slot( 25, 4, 168, 172, 182 ); //Skin
set_color_profile_slot( 25, 5, 29, 19, 25 ); //Axe Blade
set_color_profile_slot( 25, 6, 29, 19, 25 ); //Legging 1
set_color_profile_slot( 25, 7, 233, 228, 228 ); //Legging 2

// Lady of the Peafowl
set_color_profile_slot( 26, 0, 204, 166, 181 ); //Hair
set_color_profile_slot( 26, 1, 72, 153, 151 ); //Eyes
set_color_profile_slot( 26, 2, 19, 73, 148 ); //Bows
set_color_profile_slot( 26, 3, 169, 154, 179 ); //Shirt
set_color_profile_slot( 26, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 26, 5, 45, 105, 121 ); //Axe Blade
set_color_profile_slot( 26, 6, 16, 85, 177 ); //Legging 1
set_color_profile_slot( 26, 7, 214, 198, 201 ); //Legging 2

// Sassy Dagger
set_color_profile_slot( 27, 0, 115, 70, 78 ); //Hair
set_color_profile_slot( 27, 1, 168, 151, 202 ); //Eyes
set_color_profile_slot( 27, 2, 209, 175, 99 ); //Bows
set_color_profile_slot( 27, 3, 50, 50, 77 ); //Shirt
set_color_profile_slot( 27, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 27, 5, 140, 140, 140 ); //Axe Blade
set_color_profile_slot( 27, 6, 216, 169, 135 ); //Legging 1
set_color_profile_slot( 27, 7, 48, 47, 83 ); //Legging 2

// Blacksmith
set_color_profile_slot( 28, 0, 204, 164, 72 ); //Hair
set_color_profile_slot( 28, 1, 209, 62, 62 ); //Eyes
set_color_profile_slot( 28, 2, 33, 33, 33 ); //Bows
set_color_profile_slot( 28, 3, 171, 160, 160 ); //Shirt
set_color_profile_slot( 28, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 28, 5, 34, 32, 52 ); //Axe Blade
set_color_profile_slot( 28, 6, 145, 0, 34 ); //Legging 1
set_color_profile_slot( 28, 7, 105, 85, 74 ); //Legging 2

// Rain Shaman
set_color_profile_slot( 29, 0, 129, 189, 227 ); //Hair
set_color_profile_slot( 29, 1, 109, 219, 238 ); //Eyes
set_color_profile_slot( 29, 2, 206, 191, 208 ); //Bows
set_color_profile_slot( 29, 3, 92, 156, 173 ); //Shirt
set_color_profile_slot( 29, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 29, 5, 199, 43, 65 ); //Axe Blade
set_color_profile_slot( 29, 6, 234, 56, 68 ); //Legging 1
set_color_profile_slot( 29, 7, 220, 211, 213 ); //Legging 2

// Agent V.7
set_color_profile_slot( 30, 0, 126, 123, 140 ); //Hair
set_color_profile_slot( 30, 1, 78, 103, 152 ); //Eyes
set_color_profile_slot( 30, 2, 52, 43, 51 ); //Bows
set_color_profile_slot( 30, 3, 161, 150, 135 ); //Shirt
set_color_profile_slot( 30, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 30, 5, 128, 136, 186 ); //Axe Blade
set_color_profile_slot( 30, 6, 175, 173, 171 ); //Legging 1
set_color_profile_slot( 30, 7, 85, 62, 65 ); //Legging 2

#endregion
    break;
    case 2: // Color Shifting
//#region Extra 2

// ERROR
set_color_profile_slot( 1, 0, 99, 163, 230 ); //Hair
set_color_profile_slot( 1, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 1, 2, 50, 50, 74 ); //Bows
set_color_profile_slot( 1, 3, 50, 50, 74 ); //Shirt
set_color_profile_slot( 1, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 1, 5, 34, 32, 41 ); //Axe Blade
set_color_profile_slot( 1, 6, 50, 50, 74 ); //Legging 1
set_color_profile_slot( 1, 7, 50, 50, 74 ); //Legging 2

// Super Idol Comet-Chan
set_color_profile_slot( 2, 0, 97, 165, 212 ); //Hair
set_color_profile_slot( 2, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 2, 2, 207, 120, 187 ); //Bows
set_color_profile_slot( 2, 3, 126, 184, 191 ); //Shirt
set_color_profile_slot( 2, 4, 217, 178, 182 ); //Skin
set_color_profile_slot( 2, 5, 211, 99, 185 ); //Axe Blade
set_color_profile_slot( 2, 6, 194, 203, 210 ); //Legging 1
set_color_profile_slot( 2, 7, 194, 203, 210 ); //Legging 2

// wii-wii-woo
set_color_profile_slot( 3, 0, 37, 167, 179 ); //Hair
set_color_profile_slot( 3, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 3, 2, 13, 13, 69 ); //Bows
set_color_profile_slot( 3, 3, 42, 33, 43 ); //Shirt
set_color_profile_slot( 3, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 3, 5, 4, 163, 172 ); //Axe Blade
set_color_profile_slot( 3, 6, 204, 92, 45 ); //Legging 1
set_color_profile_slot( 3, 7, 204, 92, 45 ); //Legging 2

// Rising Star
set_color_profile_slot( 4, 0, 99, 163, 230 ); //Hair
set_color_profile_slot( 4, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 4, 2, 187, 190, 212 ); //Bows
set_color_profile_slot( 4, 3, 49, 47, 87 ); //Shirt
set_color_profile_slot( 4, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 4, 5, 157, 207, 217 ); //Axe Blade
set_color_profile_slot( 4, 6, 79, 113, 223 ); //Legging 1
set_color_profile_slot( 4, 7, 79, 113, 223 ); //Legging 2

// Advent Archiver
set_color_profile_slot( 5, 0, 47, 43, 51 ); //Hair
set_color_profile_slot( 5, 1, 223, 151, 122 ); //Eyes
set_color_profile_slot( 5, 2, 77, 56, 112 ); //Bows
set_color_profile_slot( 5, 3, 58, 55, 71 ); //Shirt
set_color_profile_slot( 5, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 5, 5, 25, 66, 173 ); //Axe Blade
set_color_profile_slot( 5, 6, 95, 89, 89 ); //Legging 1
set_color_profile_slot( 5, 7, 111, 101, 105 ); //Legging 2

// Advent Songbird
set_color_profile_slot( 6, 0, 37, 36, 38 ); //Hair
set_color_profile_slot( 6, 1, 173, 78, 113 ); //Eyes
set_color_profile_slot( 6, 2, 20, 67, 140 ); //Bows
set_color_profile_slot( 6, 3, 61, 58, 60 ); //Shirt
set_color_profile_slot( 6, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 6, 5, 82, 79, 87 ); //Axe Blade
set_color_profile_slot( 6, 6, 65, 67, 65 ); //Legging 1
set_color_profile_slot( 6, 7, 82, 84, 90 ); //Legging 2

// Advent Jewel
set_color_profile_slot( 7, 0, 169, 157, 179 ); //Hair
set_color_profile_slot( 7, 1, 137, 23, 181 ); //Eyes
set_color_profile_slot( 7, 2, 51, 37, 49 ); //Bows
set_color_profile_slot( 7, 3, 182, 147, 196 ); //Shirt
set_color_profile_slot( 7, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 7, 5, 255, 79, 193 ); //Axe Blade
set_color_profile_slot( 7, 6, 53, 46, 101 ); //Legging 1
set_color_profile_slot( 7, 7, 53, 46, 101 ); //Legging 2

// Advent Fluffy Dog
set_color_profile_slot( 8, 0, 202, 184, 157 ); //Hair
set_color_profile_slot( 8, 1, 246, 108, 170 ); //Eyes
set_color_profile_slot( 8, 2, 64, 60, 69 ); //Bows
set_color_profile_slot( 8, 3, 155, 180, 219 ); //Shirt
set_color_profile_slot( 8, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 8, 5, 140, 185, 255 ); //Axe Blade
set_color_profile_slot( 8, 6, 201, 222, 255 ); //Legging 1
set_color_profile_slot( 8, 7, 165, 138, 130 ); //Legging 2

// Advent Fuzzy Dog
set_color_profile_slot( 9, 0, 202, 184, 157 ); //Hair
set_color_profile_slot( 9, 1, 201, 222, 255 ); //Eyes
set_color_profile_slot( 9, 2, 64, 60, 69 ); //Bows
set_color_profile_slot( 9, 3, 219, 136, 174 ); //Shirt
set_color_profile_slot( 9, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 9, 5, 246, 108, 170 ); //Axe Blade
set_color_profile_slot( 9, 6, 246, 153, 195 ); //Legging 1
set_color_profile_slot( 9, 7, 165, 138, 130 ); //Legging 2

// #1 Badass
set_color_profile_slot( 10, 0, 201, 171, 167 ); //Hair
set_color_profile_slot( 10, 1, 46, 65, 144 ); //Eyes
set_color_profile_slot( 10, 2, 169, 164, 251 ); //Bows
set_color_profile_slot( 10, 3, 199, 193, 224 ); //Shirt
set_color_profile_slot( 10, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 10, 5, 135, 120, 173 ); //Axe Blade
set_color_profile_slot( 10, 6, 229, 191, 252 ); //Legging 1
set_color_profile_slot( 10, 7, 229, 191, 252 ); //Legging 2

// Secret Otaku
set_color_profile_slot( 11, 0, 13, 34, 74 ); //Hair
set_color_profile_slot( 11, 1, 69, 155, 207 ); //Eyes
set_color_profile_slot( 11, 2, 52, 82, 145 ); //Bows
set_color_profile_slot( 11, 3, 45, 50, 56 ); //Shirt
set_color_profile_slot( 11, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 11, 5, 202, 165, 91 ); //Axe Blade
set_color_profile_slot( 11, 6, 45, 50, 56 ); //Legging 1
set_color_profile_slot( 11, 7, 45, 50, 56 ); //Legging 2

// Aspiring Musician
set_color_profile_slot( 12, 0, 222, 204, 163 ); //Hair
set_color_profile_slot( 12, 1, 164, 79, 75 ); //Eyes
set_color_profile_slot( 12, 2, 166, 46, 47 ); //Bows
set_color_profile_slot( 12, 3, 215, 183, 165 ); //Shirt
set_color_profile_slot( 12, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 12, 5, 224, 129, 88 ); //Axe Blade
set_color_profile_slot( 12, 6, 88, 62, 47 ); //Legging 1
set_color_profile_slot( 12, 7, 88, 62, 47 ); //Legging 2

// Genius Entrepreneur
set_color_profile_slot( 13, 0, 211, 105, 101 ); //Hair
set_color_profile_slot( 13, 1, 178, 51, 56 ); //Eyes
set_color_profile_slot( 13, 2, 161, 119, 170 ); //Bows
set_color_profile_slot( 13, 3, 189, 120, 131 ); //Shirt
set_color_profile_slot( 13, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 13, 5, 62, 61, 75 ); //Axe Blade
set_color_profile_slot( 13, 6, 229, 224, 226 ); //Legging 1
set_color_profile_slot( 13, 7, 229, 224, 226 ); //Legging 2

// Masked Smoker
set_color_profile_slot( 14, 0, 69, 60, 71 ); //Hair
set_color_profile_slot( 14, 1, 56, 85, 143 ); //Eyes
set_color_profile_slot( 14, 2, 175, 94, 76 ); //Bows
set_color_profile_slot( 14, 3, 57, 82, 64 ); //Shirt
set_color_profile_slot( 14, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 14, 5, 45, 50, 56 ); //Axe Blade
set_color_profile_slot( 14, 6, 183, 180, 193 ); //Legging 1
set_color_profile_slot( 14, 7, 183, 180, 193 ); //Legging 2

// God-Eyes Artist
set_color_profile_slot( 15, 0, 226, 119, 157 ); //Hair
set_color_profile_slot( 15, 1, 212, 192, 91 ); //Eyes
set_color_profile_slot( 15, 2, 86, 87, 97 ); //Bows
set_color_profile_slot( 15, 3, 176, 55, 101 ); //Shirt
set_color_profile_slot( 15, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 15, 5, 170, 226, 243 ); //Axe Blade
set_color_profile_slot( 15, 6, 254, 242, 242 ); //Legging 1
set_color_profile_slot( 15, 7, 254, 242, 242 ); //Legging 2

// Ancient Automaton
set_color_profile_slot( 16, 0, 133, 196, 168 ); //Hair
set_color_profile_slot( 16, 1, 0, 255, 0 ); //Eyes
set_color_profile_slot( 16, 2, 126, 105, 83 ); //Bows
set_color_profile_slot( 16, 3, 26, 135, 79 ); //Shirt
set_color_profile_slot( 16, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 16, 5, 26, 135, 79 ); //Axe Blade
set_color_profile_slot( 16, 6, 229, 176, 145 ); //Legging 1
set_color_profile_slot( 16, 7, 229, 176, 145 ); //Legging 2

// Chaser Gremlin
set_color_profile_slot( 17, 0, 150, 104, 93 ); //Hair
set_color_profile_slot( 17, 1, 215, 42, 134 ); //Eyes
set_color_profile_slot( 17, 2, 196, 41, 60 ); //Bows
set_color_profile_slot( 17, 3, 243, 111, 43 ); //Shirt
set_color_profile_slot( 17, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 17, 5, 97, 86, 71 ); //Axe Blade
set_color_profile_slot( 17, 6, 67, 61, 68 ); //Legging 1
set_color_profile_slot( 17, 7, 214, 88, 63 ); //Legging 2

// Scarlet Queen
set_color_profile_slot( 18, 0, 181, 57, 55 ); //Hair
set_color_profile_slot( 18, 1, 168, 53, 51 ); //Eyes
set_color_profile_slot( 18, 2, 29, 29, 37 ); //Bows
set_color_profile_slot( 18, 3, 181, 178, 217 ); //Shirt
set_color_profile_slot( 18, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 18, 5, 111, 33, 38 ); //Axe Blade
set_color_profile_slot( 18, 6, 235, 229, 246 ); //Legging 1
set_color_profile_slot( 18, 7, 235, 229, 246 ); //Legging 2

// Riptide
set_color_profile_slot( 19, 0, 214, 180, 122 ); //Hair
set_color_profile_slot( 19, 1, 45, 45, 151 ); //Eyes
set_color_profile_slot( 19, 2, 224, 114, 67 ); //Bows
set_color_profile_slot( 19, 3, 4, 163, 172 ); //Shirt
set_color_profile_slot( 19, 4, 219, 145, 109 ); //Skin
set_color_profile_slot( 19, 5, 19, 28, 74 ); //Axe Blade
set_color_profile_slot( 19, 6, 214, 88, 63 ); //Legging 1
set_color_profile_slot( 19, 7, 19, 28, 74 ); //Legging 2

// Succubus-in-Training
set_color_profile_slot( 20, 0, 207, 102, 159 ); //Hair
set_color_profile_slot( 20, 1, 88, 188, 118 ); //Eyes
set_color_profile_slot( 20, 2, 181, 64, 119 ); //Bows
set_color_profile_slot( 20, 3, 102, 58, 98 ); //Shirt
set_color_profile_slot( 20, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 20, 5, 51, 43, 54 ); //Axe Blade
set_color_profile_slot( 20, 6, 97, 61, 63 ); //Legging 1
set_color_profile_slot( 20, 7, 140, 48, 89 ); //Legging 2

// MaFia
set_color_profile_slot( 21, 0, 36, 36, 36 ); //Hair
set_color_profile_slot( 21, 1, 55, 132, 15 ); //Eyes
set_color_profile_slot( 21, 2, 36, 36, 36 ); //Bows
set_color_profile_slot( 21, 3, 105, 134, 41 ); //Shirt
set_color_profile_slot( 21, 4, 140, 99, 80 ); //Skin
set_color_profile_slot( 21, 5, 107, 102, 97 ); //Axe Blade
set_color_profile_slot( 21, 6, 55, 132, 15 ); //Legging 1
set_color_profile_slot( 21, 7, 36, 36, 36 ); //Legging 2

// Space Seaweed
set_color_profile_slot( 22, 0, 28, 42, 111 ); //Hair
set_color_profile_slot( 22, 1, 40, 102, 90 ); //Eyes
set_color_profile_slot( 22, 2, 32, 52, 80 ); //Bows
set_color_profile_slot( 22, 3, 173, 86, 0 ); //Shirt
set_color_profile_slot( 22, 4, 247, 198, 147 ); //Skin
set_color_profile_slot( 22, 5, 93, 177, 197 ); //Axe Blade
set_color_profile_slot( 22, 6, 35, 35, 66 ); //Legging 1
set_color_profile_slot( 22, 7, 35, 35, 66 ); //Legging 2

// Electric Kettle
set_color_profile_slot( 23, 0, 201, 186, 129 ); //Hair
set_color_profile_slot( 23, 1, 41, 151, 137 ); //Eyes
set_color_profile_slot( 23, 2, 74, 148, 141 ); //Bows
set_color_profile_slot( 23, 3, 158, 145, 44 ); //Shirt
set_color_profile_slot( 23, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 23, 5, 253, 235, 178 ); //Axe Blade
set_color_profile_slot( 23, 6, 235, 220, 220 ); //Legging 1
set_color_profile_slot( 23, 7, 235, 220, 220 ); //Legging 2

// Tokotaya
set_color_profile_slot( 24, 0, 48, 31, 41 ); //Hair
set_color_profile_slot( 24, 1, 151, 50, 52 ); //Eyes
set_color_profile_slot( 24, 2, 100, 21, 31 ); //Bows
set_color_profile_slot( 24, 3, 67, 48, 57 ); //Shirt
set_color_profile_slot( 24, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 24, 5, 111, 136, 164 ); //Axe Blade
set_color_profile_slot( 24, 6, 78, 35, 36 ); //Legging 1
set_color_profile_slot( 24, 7, 78, 35, 36 ); //Legging 2

// What the Feesh
set_color_profile_slot( 25, 0, 83, 169, 158 ); //Hair
set_color_profile_slot( 25, 1, 174, 94, 166 ); //Eyes
set_color_profile_slot( 25, 2, 120, 183, 205 ); //Bows
set_color_profile_slot( 25, 3, 18, 12, 64 ); //Shirt
set_color_profile_slot( 25, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 25, 5, 101, 71, 158 ); //Axe Blade
set_color_profile_slot( 25, 6, 18, 12, 64 ); //Legging 1
set_color_profile_slot( 25, 7, 18, 12, 64 ); //Legging 2

// Rose Maiden
set_color_profile_slot( 26, 0, 255, 150, 189 ); //Hair
set_color_profile_slot( 26, 1, 143, 21, 82 ); //Eyes
set_color_profile_slot( 26, 2, 89, 0, 21 ); //Bows
set_color_profile_slot( 26, 3, 94, 14, 38 ); //Shirt
set_color_profile_slot( 26, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 26, 5, 245, 81, 81 ); //Axe Blade
set_color_profile_slot( 26, 6, 74, 19, 19 ); //Legging 1
set_color_profile_slot( 26, 7, 109, 148, 109 ); //Legging 2

// Golden SUISEI
set_color_profile_slot( 27, 0, 199, 155, 79 ); //Hair
set_color_profile_slot( 27, 1, 145, 113, 58 ); //Eyes
set_color_profile_slot( 27, 2, 166, 109, 12 ); //Bows
set_color_profile_slot( 27, 3, 173, 135, 69 ); //Shirt
set_color_profile_slot( 27, 4, 242, 161, 27 ); //Skin
set_color_profile_slot( 27, 5, 237, 184, 94 ); //Axe Blade
set_color_profile_slot( 27, 6, 237, 184, 94 ); //Legging 1
set_color_profile_slot( 27, 7, 237, 184, 94 ); //Legging 2

// Japanese Goblin
set_color_profile_slot( 28, 0, 212, 122, 74 ); //Hair
set_color_profile_slot( 28, 1, 191, 72, 60 ); //Eyes
set_color_profile_slot( 28, 2, 199, 33, 40 ); //Bows
set_color_profile_slot( 28, 3, 105, 56, 150 ); //Shirt
set_color_profile_slot( 28, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 28, 5, 125, 131, 222 ); //Axe Blade
set_color_profile_slot( 28, 6, 254, 178, 185 ); //Legging 1
set_color_profile_slot( 28, 7, 254, 178, 185 ); //Legging 2

// Melty Blood
set_color_profile_slot( 29, 0, 168, 107, 175 ); //Hair
set_color_profile_slot( 29, 1, 175, 92, 221 ); //Eyes
set_color_profile_slot( 29, 2, 186, 140, 49 ); //Bows
set_color_profile_slot( 29, 3, 86, 15, 59 ); //Shirt
set_color_profile_slot( 29, 4, 229, 176, 145 ); //Skin
set_color_profile_slot( 29, 5, 237, 184, 94 ); //Axe Blade
set_color_profile_slot( 29, 6, 86, 15, 59 ); //Legging 1
set_color_profile_slot( 29, 7, 86, 15, 59 ); //Legging 2

// RDJ
set_color_profile_slot( 30, 0, 135, 0, 138 ); //Hair
set_color_profile_slot( 30, 1, 115, 107, 255 ); //Eyes
set_color_profile_slot( 30, 2, 156, 99, 0 ); //Bows
set_color_profile_slot( 30, 3, 48, 48, 48 ); //Shirt
set_color_profile_slot( 30, 4, 119, 49, 27 ); //Skin
set_color_profile_slot( 30, 5, 212, 54, 51 ); //Axe Blade
set_color_profile_slot( 30, 6, 233, 228, 228 ); //Legging 1
set_color_profile_slot( 30, 7, 16, 174, 15 ); //Legging 2

// Don't paste anything under here
//#endregion
        break;
    }
    
// Looping function to assign article colors using this
	// Using a variable passed from CSS to in game cause the CSS online reads a different player number than offline
	if (get_player_color(player) != 0){
        for(var shade_slot = 0;shade_slot < 8;shade_slot++){
            var col_R = get_color_profile_slot_r( last_frame_color_alt, shade_slot);
            var col_G = get_color_profile_slot_g( last_frame_color_alt, shade_slot);
            var col_B = get_color_profile_slot_b( last_frame_color_alt, shade_slot);
            set_article_color_slot( shade_slot, col_R, col_G, col_B );
            set_character_color_slot( shade_slot, col_R, col_G, col_B );
            //print("Shade slot set: " + string(shade_slot));
            //print("R:" + string(col_R) + " /G:" + string(col_G)+ "/ B:" + string(col_B));
        }
    }
    //Original Color Slot!
    
manual_init_shader_call = false;
}

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;