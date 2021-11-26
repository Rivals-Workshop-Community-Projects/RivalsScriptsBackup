// DEFAULT COLOR

// fucking blue
set_color_profile_slot( 0, 0, 149, 222, 246 );
set_color_profile_slot_range( 0, 1, 1, 1 );

// fucking blue (but dark)
set_color_profile_slot( 0, 1, 77, 109, 175 );
set_color_profile_slot_range( 1, 1, 1, 1 );

// backie packie
set_color_profile_slot( 0, 2, 132, 82, 41 );
set_color_profile_slot_range( 2, 1, 1, 1 );

// dark backie packie
set_color_profile_slot( 0, 3, 71, 31, 26 );
set_color_profile_slot_range( 3, 1, 1, 1 );

// coat
set_color_profile_slot( 0, 4, 255, 214, 123 );
set_color_profile_slot_range( 4, 1, 1, 1 );

// coat 2
set_color_profile_slot( 0, 5, 169, 112, 51 );
set_color_profile_slot_range( 5, 1, 1, 1 );

// skin 1
set_color_profile_slot( 0, 6, 248, 216, 200 );
set_color_profile_slot_range( 6, 1, 1, 1 );

// skin 2
set_color_profile_slot( 0, 7, 194, 138, 130 );
set_color_profile_slot_range( 7, 1, 1, 1 );


// ALTERNATE COLORS
set_num_palettes( 30 );

// Shiny (Blue)
set_color_profile_slot( 1, 0, 181, 206, 255 ); //fucking blue
set_color_profile_slot( 1, 1, 122, 125, 214 ); //fucking blue (but dark)
set_color_profile_slot( 1, 2, 85, 187, 33 ); //backie packie
set_color_profile_slot( 1, 3, 15, 135, 21 ); //dark backie packie
set_color_profile_slot( 1, 4, 230, 189, 82 ); //coat
set_color_profile_slot( 1, 5, 201, 109, 53 ); //coat 2
set_color_profile_slot( 1, 6, 242, 226, 208 ); //skin 1
set_color_profile_slot( 1, 7, 209, 162, 153 ); //skin 2

// Red
set_color_profile_slot( 2, 0, 255, 148, 90 ); //fucking blue
set_color_profile_slot( 2, 1, 184, 52, 42 ); //fucking blue (but dark)
set_color_profile_slot( 2, 2, 132, 58, 49 ); //backie packie
set_color_profile_slot( 2, 3, 112, 31, 48 ); //dark backie packie
set_color_profile_slot( 2, 4, 197, 165, 123 ); //coat
set_color_profile_slot( 2, 5, 145, 88, 72 ); //coat 2
set_color_profile_slot( 2, 6, 207, 135, 107 ); //skin 1
set_color_profile_slot( 2, 7, 156, 79, 76 ); //skin 2

// New Green
set_color_profile_slot( 3, 0, 134, 198, 208 ); //fucking blue
set_color_profile_slot( 3, 1, 97, 132, 169 ); //fucking blue (but dark)
set_color_profile_slot( 3, 2, 51, 128, 58 ); //backie packie
set_color_profile_slot( 3, 3, 33, 92, 54 ); //dark backie packie
set_color_profile_slot( 3, 4, 190, 220, 148 ); //coat
set_color_profile_slot( 3, 5, 99, 157, 88 ); //coat 2
set_color_profile_slot( 3, 6, 247, 236, 230 ); //skin 1
set_color_profile_slot( 3, 7, 178, 158, 139 ); //skin 2

// Black/White
set_color_profile_slot( 4, 0, 214, 206, 214 ); //fucking blue
set_color_profile_slot( 4, 1, 155, 143, 163 ); //fucking blue (but dark)
set_color_profile_slot( 4, 2, 58, 66, 90 ); //backie packie
set_color_profile_slot( 4, 3, 35, 35, 74 ); //dark backie packie
set_color_profile_slot( 4, 4, 132, 173, 173 ); //coat
set_color_profile_slot( 4, 5, 70, 105, 133 ); //coat 2
set_color_profile_slot( 4, 6, 242, 226, 208 ); //skin 1
set_color_profile_slot( 4, 7, 209, 162, 153 ); //skin 2

// Purple
set_color_profile_slot( 5, 0, 189, 142, 214 ); //fucking blue
set_color_profile_slot( 5, 1, 114, 90, 176 ); //fucking blue (but dark)
set_color_profile_slot( 5, 2, 90, 195, 82 ); //backie packie
set_color_profile_slot( 5, 3, 44, 143, 74 ); //dark backie packie
set_color_profile_slot( 5, 4, 173, 166, 99 ); //coat
set_color_profile_slot( 5, 5, 140, 105, 60 ); //coat 2
set_color_profile_slot( 5, 6, 207, 135, 107 ); //skin 1
set_color_profile_slot( 5, 7, 156, 79, 76 ); //skin 2

// Seasonal
switch (get_match_setting(SET_SEASON)) {
    case 1: // valentines
        set_color_profile_slot( 6, 0, 255, 133, 193 ); //fucking blue
        set_color_profile_slot( 6, 1, 189, 76, 182 ); //fucking blue (but dark)
        set_color_profile_slot( 6, 2, 231, 3, 142 ); //backie packie
        set_color_profile_slot( 6, 3, 161, 14, 157 ); //dark backie packie
        set_color_profile_slot( 6, 4, 206, 46, 46 ); //coat
        set_color_profile_slot( 6, 5, 145, 18, 58 ); //coat 2
        set_color_profile_slot( 6, 6, 201, 151, 135 ); //skin 1
        set_color_profile_slot( 6, 7, 163, 91, 87 ); //skin 2
        break;
    case 2: // summer
        set_color_profile_slot( 6, 0, 255, 163, 40 ); //fucking blue
        set_color_profile_slot( 6, 1, 219, 86, 20 ); //fucking blue (but dark)
        set_color_profile_slot( 6, 2, 255, 246, 140 ); //backie packie
        set_color_profile_slot( 6, 3, 232, 178, 102 ); //dark backie packie
        set_color_profile_slot( 6, 4, 89, 204, 233 ); //coat
        set_color_profile_slot( 6, 5, 54, 102, 199 ); //coat 2
        set_color_profile_slot( 6, 6, 201, 151, 135 ); //skin 1
        set_color_profile_slot( 6, 7, 163, 91, 87 ); //skin 2
        break;
    case 3: // halloween
        set_color_profile_slot( 6, 0, 25, 140, 101 ); //fucking blue
        set_color_profile_slot( 6, 1, 9, 84, 102 ); //fucking blue (but dark)
        set_color_profile_slot( 6, 2, 49, 68, 75 ); //backie packie
        set_color_profile_slot( 6, 3, 32, 36, 54 ); //dark backie packie
        set_color_profile_slot( 6, 4, 253, 201, 59 ); //coat
        set_color_profile_slot( 6, 5, 219, 104, 37 ); //coat 2
        set_color_profile_slot( 6, 6, 242, 226, 208 ); //skin 1
        set_color_profile_slot( 6, 7, 209, 162, 153 ); //skin 2
        break;
    case 4: // christmas
        set_color_profile_slot( 6, 0, 222, 72, 72 ); //fucking blue
        set_color_profile_slot( 6, 1, 166, 32, 46 ); //fucking blue (but dark)
        set_color_profile_slot( 6, 2, 68, 179, 34 ); //backie packie
        set_color_profile_slot( 6, 3, 13, 122, 24 ); //dark backie packie
        set_color_profile_slot( 6, 4, 141, 236, 130 ); //coat
        set_color_profile_slot( 6, 5, 65, 148, 94 ); //coat 2
        set_color_profile_slot( 6, 6, 253, 235, 232 ); //skin 1
        set_color_profile_slot( 6, 7, 227, 169, 166 ); //skin 2
        break;
}

// Yellow
set_color_profile_slot( 7, 0, 255, 214, 66 ); //fucking blue
set_color_profile_slot( 7, 1, 235, 121, 44 ); //fucking blue (but dark)
set_color_profile_slot( 7, 2, 140, 173, 74 ); //backie packie
set_color_profile_slot( 7, 3, 75, 135, 42 ); //dark backie packie
set_color_profile_slot( 7, 4, 197, 189, 181 ); //coat
set_color_profile_slot( 7, 5, 168, 137, 131 ); //coat 2
set_color_profile_slot( 7, 6, 201, 151, 135 ); //skin 1
set_color_profile_slot( 7, 7, 163, 91, 87 ); //skin 2

// Pink
set_color_profile_slot( 8, 0, 247, 174, 189 ); //fucking blue
set_color_profile_slot( 8, 1, 212, 118, 173 ); //fucking blue (but dark)
set_color_profile_slot( 8, 2, 255, 134, 156 ); //backie packie
set_color_profile_slot( 8, 3, 191, 77, 144 ); //dark backie packie
set_color_profile_slot( 8, 4, 222, 185, 126 ); //coat
set_color_profile_slot( 8, 5, 184, 115, 72 ); //coat 2
set_color_profile_slot( 8, 6, 255, 247, 240 ); //skin 1
set_color_profile_slot( 8, 7, 219, 193, 187 ); //skin 2

// Turquoise
set_color_profile_slot( 9, 0, 115, 214, 132 ); //fucking blue
set_color_profile_slot( 9, 1, 69, 163, 119 ); //fucking blue (but dark)
set_color_profile_slot( 9, 2, 66, 99, 49 ); //backie packie
set_color_profile_slot( 9, 3, 33, 79, 33 ); //dark backie packie
set_color_profile_slot( 9, 4, 197, 107, 82 ); //coat
set_color_profile_slot( 9, 5, 158, 49, 49 ); //coat 2
set_color_profile_slot( 9, 6, 248, 216, 200 ); //skin 1
set_color_profile_slot( 9, 7, 194, 138, 130 ); //skin 2

// Navy
set_color_profile_slot( 10, 0, 48, 90, 171 ); //fucking blue
set_color_profile_slot( 10, 1, 34, 42, 156 ); //fucking blue (but dark)
set_color_profile_slot( 10, 2, 46, 47, 66 ); //backie packie
set_color_profile_slot( 10, 3, 35, 31, 51 ); //dark backie packie
set_color_profile_slot( 10, 4, 224, 239, 255 ); //coat
set_color_profile_slot( 10, 5, 165, 173, 214 ); //coat 2
set_color_profile_slot( 10, 6, 201, 151, 135 ); //skin 1
set_color_profile_slot( 10, 7, 163, 91, 87 ); //skin 2

// Tan
set_color_profile_slot( 11, 0, 181, 173, 148 ); //fucking blue
set_color_profile_slot( 11, 1, 143, 116, 102 ); //fucking blue (but dark)
set_color_profile_slot( 11, 2, 197, 148, 58 ); //backie packie
set_color_profile_slot( 11, 3, 166, 78, 35 ); //dark backie packie
set_color_profile_slot( 11, 4, 74, 58, 66 ); //coat
set_color_profile_slot( 11, 5, 48, 34, 48 ); //coat 2
set_color_profile_slot( 11, 6, 242, 226, 208 ); //skin 1
set_color_profile_slot( 11, 7, 209, 162, 153 ); //skin 2

// Green
set_color_profile_slot( 12, 0, 165, 190, 107 ); //fucking blue
set_color_profile_slot( 12, 1, 78, 140, 55 ); //fucking blue (but dark)
set_color_profile_slot( 12, 2, 181, 133, 98 ); //backie packie
set_color_profile_slot( 12, 3, 145, 74, 58 ); //dark backie packie
set_color_profile_slot( 12, 4, 233, 204, 93 ); //coat
set_color_profile_slot( 12, 5, 191, 112, 57 ); //coat 2
set_color_profile_slot( 12, 6, 201, 151, 135 ); //skin 1
set_color_profile_slot( 12, 7, 163, 91, 87 ); //skin 2

// Abyss
set_color_profile_slot( 13, 0, 123, 134, 171 ); //fucking blue
set_color_profile_slot( 13, 1, 87, 80, 135 ); //fucking blue (but dark)
set_color_profile_slot( 13, 2, 133, 110, 150 ); //backie packie
set_color_profile_slot( 13, 3, 89, 67, 125 ); //dark backie packie
set_color_profile_slot( 13, 4, 220, 113, 255 ); //coat
set_color_profile_slot( 13, 5, 125, 65, 181 ); //coat 2
set_color_profile_slot( 13, 6, 228, 246, 255 ); //skin 1
set_color_profile_slot( 13, 7, 167, 180, 217 ); //skin 2

// Trans Rights
set_color_profile_slot( 14, 0, 255, 201, 240 ); //fucking blue
set_color_profile_slot( 14, 1, 183, 121, 191 ); //fucking blue (but dark)
set_color_profile_slot( 14, 2, 173, 206, 239 ); //backie packie
set_color_profile_slot( 14, 3, 103, 107, 176 ); //dark backie packie
set_color_profile_slot( 14, 4, 255, 255, 255 ); //coat
set_color_profile_slot( 14, 5, 150, 150, 150 ); //coat 2
set_color_profile_slot( 14, 6, 255, 247, 240 ); //skin 1
set_color_profile_slot( 14, 7, 219, 193, 187 ); //skin 2

// BLM
set_color_profile_slot( 15, 0, 255, 208, 0 ); //fucking blue
set_color_profile_slot( 15, 1, 191, 109, 0 ); //fucking blue (but dark)
set_color_profile_slot( 15, 2, 255, 255, 255 ); //backie packie
set_color_profile_slot( 15, 3, 150, 150, 150 ); //dark backie packie
set_color_profile_slot( 15, 4, 66, 66, 66 ); //coat
set_color_profile_slot( 15, 5, 41, 41, 41 ); //coat 2
set_color_profile_slot( 15, 6, 148, 93, 76 ); //skin 1
set_color_profile_slot( 15, 7, 122, 49, 49 ); //skin 2

// Adventure Time
set_color_profile_slot( 16, 0, 255, 255, 255 ); //fucking blue
set_color_profile_slot( 16, 1, 150, 150, 150 ); //fucking blue (but dark)
set_color_profile_slot( 16, 2, 160, 226, 129 ); //backie packie
set_color_profile_slot( 16, 3, 74, 158, 74 ); //dark backie packie
set_color_profile_slot( 16, 4, 54, 184, 227 ); //coat
set_color_profile_slot( 16, 5, 20, 101, 186 ); //coat 2
set_color_profile_slot( 16, 6, 255, 211, 192 ); //skin 1
set_color_profile_slot( 16, 7, 230, 147, 140 ); //skin 2

// Pibby
set_color_profile_slot( 17, 0, 220, 105, 250 ); //fucking blue
set_color_profile_slot( 17, 1, 134, 60, 201 ); //fucking blue (but dark)
set_color_profile_slot( 17, 2, 125, 125, 125 ); //backie packie
set_color_profile_slot( 17, 3, 61, 61, 61 ); //dark backie packie
set_color_profile_slot( 17, 4, 230, 216, 181 ); //coat
set_color_profile_slot( 17, 5, 186, 146, 126 ); //coat 2
set_color_profile_slot( 17, 6, 179, 237, 249 ); //skin 1
set_color_profile_slot( 17, 7, 113, 165, 214 ); //skin 2

// Golden
set_color_profile_slot( 18, 0, 255, 221, 30 ); //fucking blue
set_color_profile_slot( 18, 1, 219, 132, 11 ); //fucking blue (but dark)
set_color_profile_slot( 18, 2, 159, 114, 23 ); //backie packie
set_color_profile_slot( 18, 3, 140, 61, 9 ); //dark backie packie
set_color_profile_slot( 18, 4, 255, 249, 213 ); //coat
set_color_profile_slot( 18, 5, 224, 199, 158 ); //coat 2
set_color_profile_slot( 18, 6, 255, 255, 255 ); //skin 1
set_color_profile_slot( 18, 7, 196, 173, 146 ); //skin 2

// Squirtle
set_color_profile_slot( 19, 0, 149, 222, 246 ); //fucking blue
set_color_profile_slot( 19, 1, 77, 109, 175 ); //fucking blue (but dark)
set_color_profile_slot( 19, 2, 132, 82, 41 ); //backie packie
set_color_profile_slot( 19, 3, 71, 31, 26 ); //dark backie packie
set_color_profile_slot( 19, 4, 255, 214, 123 ); //coat
set_color_profile_slot( 19, 5, 169, 112, 51 ); //coat 2
set_color_profile_slot( 19, 6, 149, 222, 246 ); //skin 1
set_color_profile_slot( 19, 7, 77, 109, 175 ); //skin 2

// Bubbles (but for real)
set_color_profile_slot( 20, 0, 255, 255, 0 ); //fucking blue
set_color_profile_slot( 20, 1, 217, 148, 0 ); //fucking blue (but dark)
set_color_profile_slot( 20, 2, 54, 54, 54 ); //backie packie
set_color_profile_slot( 20, 3, 36, 36, 36 ); //dark backie packie
set_color_profile_slot( 20, 4, 0, 191, 255 ); //coat
set_color_profile_slot( 20, 5, 22, 88, 201 ); //coat 2
set_color_profile_slot( 20, 6, 252, 214, 198 ); //skin 1
set_color_profile_slot( 20, 7, 235, 155, 150 ); //skin 2

// alway rember happy day
set_color_profile_slot( 21, 0, 130, 192, 117 ); //fucking blue
set_color_profile_slot( 21, 1, 69, 143, 97 ); //fucking blue (but dark)
set_color_profile_slot( 21, 2, 255, 57, 80 ); //backie packie
set_color_profile_slot( 21, 3, 194, 21, 119 ); //dark backie packie
set_color_profile_slot( 21, 4, 255, 255, 255 ); //coat
set_color_profile_slot( 21, 5, 166, 166, 166 ); //coat 2
set_color_profile_slot( 21, 6, 254, 255, 215 ); //skin 1
set_color_profile_slot( 21, 7, 219, 193, 160 ); //skin 2

// Targma
set_color_profile_slot( 22, 0, 201, 153, 81 ); //fucking blue
set_color_profile_slot( 22, 1, 166, 79, 53 ); //fucking blue (but dark)
set_color_profile_slot( 22, 2, 131, 20, 29 ); //backie packie
set_color_profile_slot( 22, 3, 92, 7, 45 ); //dark backie packie
set_color_profile_slot( 22, 4, 161, 150, 96 ); //coat
set_color_profile_slot( 22, 5, 133, 96, 65 ); //coat 2
set_color_profile_slot( 22, 6, 201, 151, 135 ); //skin 1
set_color_profile_slot( 22, 7, 163, 91, 87 ); //skin 2

// Lode & Puul
set_color_profile_slot( 23, 0, 86, 144, 61 ); //fucking blue
set_color_profile_slot( 23, 1, 36, 112, 39 ); //fucking blue (but dark)
set_color_profile_slot( 23, 2, 102, 102, 102 ); //backie packie
set_color_profile_slot( 23, 3, 69, 69, 69 ); //dark backie packie
set_color_profile_slot( 23, 4, 192, 192, 192 ); //coat
set_color_profile_slot( 23, 5, 128, 128, 128 ); //coat 2
set_color_profile_slot( 23, 6, 148, 93, 76 ); //skin 1
set_color_profile_slot( 23, 7, 122, 49, 49 ); //skin 2

// Torga
set_color_profile_slot( 24, 0, 164, 150, 149 ); //fucking blue
set_color_profile_slot( 24, 1, 117, 106, 93 ); //fucking blue (but dark)
set_color_profile_slot( 24, 2, 94, 88, 76 ); //backie packie
set_color_profile_slot( 24, 3, 59, 48, 42 ); //dark backie packie
set_color_profile_slot( 24, 4, 213, 159, 33 ); //coat
set_color_profile_slot( 24, 5, 191, 100, 21 ); //coat 2
set_color_profile_slot( 24, 6, 247, 236, 230 ); //skin 1
set_color_profile_slot( 24, 7, 178, 158, 139 ); //skin 2

// Galega
set_color_profile_slot( 25, 0, 145, 139, 127 ); //fucking blue
set_color_profile_slot( 25, 1, 89, 77, 69 ); //fucking blue (but dark)
set_color_profile_slot( 25, 2, 83, 79, 67 ); //backie packie
set_color_profile_slot( 25, 3, 66, 53, 47 ); //dark backie packie
set_color_profile_slot( 25, 4, 133, 157, 195 ); //coat
set_color_profile_slot( 25, 5, 79, 88, 150 ); //coat 2
set_color_profile_slot( 25, 6, 242, 226, 208 ); //skin 1
set_color_profile_slot( 25, 7, 219, 193, 187 ); //skin 2

// Ratio
set_color_profile_slot( 26, 0, 172, 33, 50 ); //fucking blue
set_color_profile_slot( 26, 1, 130, 16, 71 ); //fucking blue (but dark)
set_color_profile_slot( 26, 2, 252, 123, 6 ); //backie packie
set_color_profile_slot( 26, 3, 173, 40, 1 ); //dark backie packie
set_color_profile_slot( 26, 4, 243, 232, 243 ); //coat
set_color_profile_slot( 26, 5, 181, 163, 201 ); //coat 2
set_color_profile_slot( 26, 6, 136, 90, 102 ); //skin 1
set_color_profile_slot( 26, 7, 115, 62, 95 ); //skin 2

// Liz
set_color_profile_slot( 27, 0, 246, 104, 148 ); //fucking blue
set_color_profile_slot( 27, 1, 155, 46, 126 ); //fucking blue (but dark)
set_color_profile_slot( 27, 2, 104, 246, 193 ); //backie packie
set_color_profile_slot( 27, 3, 86, 146, 181 ); //dark backie packie
set_color_profile_slot( 27, 4, 48, 48, 109 ); //coat
set_color_profile_slot( 27, 5, 40, 27, 74 ); //coat 2
set_color_profile_slot( 27, 6, 246, 188, 147 ); //skin 1
set_color_profile_slot( 27, 7, 209, 129, 129 ); //skin 2

// Kanna
set_color_profile_slot( 28, 0, 254, 238, 238 ); //fucking blue
set_color_profile_slot( 28, 1, 217, 174, 180 ); //fucking blue (but dark)
set_color_profile_slot( 28, 2, 84, 77, 117 ); //backie packie
set_color_profile_slot( 28, 3, 49, 54, 92 ); //dark backie packie
set_color_profile_slot( 28, 4, 255, 200, 217 ); //coat
set_color_profile_slot( 28, 5, 209, 130, 188 ); //coat 2
set_color_profile_slot( 28, 6, 255, 245, 216 ); //skin 1
set_color_profile_slot( 28, 7, 254, 185, 173 ); //skin 2

// the ravyn alt (Not Genesis)
set_color_profile_slot( 29, 0, 232, 63, 63 ); //fucking blue
set_color_profile_slot( 29, 1, 171, 24, 66 ); //fucking blue (but dark)
set_color_profile_slot( 29, 2, 232, 63, 63 ); //backie packie
set_color_profile_slot( 29, 3, 171, 24, 66 ); //dark backie packie
set_color_profile_slot( 29, 4, 56, 56, 56 ); //coat
set_color_profile_slot( 29, 5, 26, 26, 26 ); //coat 2
set_color_profile_slot( 29, 6, 242, 226, 208 ); //skin 1
set_color_profile_slot( 29, 7, 219, 193, 187 ); //skin 2

/* This is a comment used by that one RoA colors.gml generator tool to store palette data. You can safely keep it in your colors.gml if you plan to re-use the tool later, or safely remove it if you don't.
=== BEGIN JSON PALETTE ===
{"formatversion":1,"data":[{"name":"fucking blue","colors":[{"r":149,"g":222,"b":246,"main":true}]},{"name":"fucking blue (but dark)","colors":[{"r":77,"g":109,"b":175,"main":true}]},{"name":"backie packie","colors":[{"r":132,"g":82,"b":41,"main":true}]},{"name":"dark backie packie","colors":[{"r":71,"g":31,"b":26,"main":true}]},{"name":"coat","colors":[{"r":255,"g":214,"b":123,"main":true}]},{"name":"coat 2","colors":[{"r":169,"g":112,"b":51,"main":true}]},{"name":"skin 1","colors":[{"r":248,"g":216,"b":200,"main":true}]},{"name":"skin 2","colors":[{"r":194,"g":138,"b":130,"main":true}]}]}
=== END JSON PALETTE ===
*/
