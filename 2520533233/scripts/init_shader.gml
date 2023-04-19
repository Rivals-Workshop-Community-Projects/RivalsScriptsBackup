//init shader

if("manual_init_shader_call" not in self){exit;}

if(manual_init_shader_call){
    manual_init_shader_call = false;
    switch(color_shift){
        case 0:
        // Reimu
        set_color_profile_slot( 1, 0, 43, 3, 3 ); //Hat
        set_color_profile_slot( 1, 1, 140, 0, 0 ); //Clothes
        set_color_profile_slot( 1, 2, 255, 255, 255 ); //Skirt
        set_color_profile_slot( 1, 3, 204, 204, 204 ); //Bow Front
        set_color_profile_slot( 1, 4, 84, 58, 56 ); //Hair
        set_color_profile_slot( 1, 5, 140, 8, 6 ); //Eyes
        set_color_profile_slot( 1, 6, 5, 3, 0 ); //Detailing
        set_color_profile_slot( 1, 7, 255, 0, 0 ); //Rainbow
        
        // Marisa
        set_color_profile_slot( 2, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 2, 1, 13, 13, 13 ); //Clothes
        set_color_profile_slot( 2, 2, 247, 247, 247 ); //Skirt
        set_color_profile_slot( 2, 3, 191, 191, 191 ); //Bow Front
        set_color_profile_slot( 2, 4, 255, 204, 125 ); //Hair
        set_color_profile_slot( 2, 5, 255, 174, 0 ); //Eyes
        set_color_profile_slot( 2, 6, 0, 0, 0 ); //Detailing
        set_color_profile_slot( 2, 7, 0, 255, 4 ); //Rainbow
        
        // Sakuya
        set_color_profile_slot( 3, 0, 51, 57, 94 ); //Hat
        set_color_profile_slot( 3, 1, 32, 64, 133 ); //Clothes
        set_color_profile_slot( 3, 2, 225, 225, 225 ); //Skirt
        set_color_profile_slot( 3, 3, 15, 110, 66 ); //Bow Front
        set_color_profile_slot( 3, 4, 189, 201, 217 ); //Hair
        set_color_profile_slot( 3, 5, 133, 143, 255 ); //Eyes
        set_color_profile_slot( 3, 6, 9, 48, 51 ); //Detailing
        set_color_profile_slot( 3, 7, 249, 255, 0 ); //Rainbow
        
        // Alice
        set_color_profile_slot( 4, 0, 122, 0, 0 ); //Hat
        set_color_profile_slot( 4, 1, 255, 184, 184 ); //Clothes
        set_color_profile_slot( 4, 2, 79, 121, 255 ); //Skirt
        set_color_profile_slot( 4, 3, 196, 106, 130 ); //Bow Front
        set_color_profile_slot( 4, 4, 255, 218, 138 ); //Hair
        set_color_profile_slot( 4, 5, 0, 204, 255 ); //Eyes
        set_color_profile_slot( 4, 6, 0, 94, 122 ); //Detailing
        set_color_profile_slot( 4, 7, 249, 255, 0 ); //Rainbow
        
        // Patchouli
        set_color_profile_slot( 5, 0, 190, 156, 255 ); //Hat
        set_color_profile_slot( 5, 1, 227, 191, 255 ); //Clothes
        set_color_profile_slot( 5, 2, 158, 138, 194 ); //Skirt
        set_color_profile_slot( 5, 3, 145, 0, 0 ); //Bow Front
        set_color_profile_slot( 5, 4, 127, 75, 145 ); //Hair
        set_color_profile_slot( 5, 5, 119, 0, 194 ); //Eyes
        set_color_profile_slot( 5, 6, 0, 8, 51 ); //Detailing
        set_color_profile_slot( 5, 7, 249, 255, 0 ); //Rainbow
        
        // Youmu
        set_color_profile_slot( 6, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 6, 1, 42, 105, 63 ); //Clothes
        set_color_profile_slot( 6, 2, 204, 224, 208 ); //Skirt
        set_color_profile_slot( 6, 3, 51, 51, 51 ); //Bow Front
        set_color_profile_slot( 6, 4, 217, 217, 217 ); //Hair
        set_color_profile_slot( 6, 5, 41, 74, 64 ); //Eyes
        set_color_profile_slot( 6, 6, 0, 0, 0 ); //Detailing
        set_color_profile_slot( 6, 7, 249, 255, 0 ); //Rainbow
        
        // Remilia
        set_color_profile_slot( 7, 0, 255, 217, 217 ); //Hat
        set_color_profile_slot( 7, 1, 255, 253, 252 ); //Clothes
        set_color_profile_slot( 7, 2, 255, 194, 194 ); //Skirt
        set_color_profile_slot( 7, 3, 158, 0, 0 ); //Bow Front
        set_color_profile_slot( 7, 4, 145, 176, 227 ); //Hair
        set_color_profile_slot( 7, 5, 255, 0, 0 ); //Eyes
        set_color_profile_slot( 7, 6, 87, 0, 0 ); //Detailing
        set_color_profile_slot( 7, 7, 249, 255, 0 ); //Rainbow
        
        // Yuyuko
        set_color_profile_slot( 8, 0, 102, 116, 148 ); //Hat
        set_color_profile_slot( 8, 1, 107, 168, 222 ); //Clothes
        set_color_profile_slot( 8, 2, 255, 207, 240 ); //Skirt
        set_color_profile_slot( 8, 3, 158, 55, 101 ); //Bow Front
        set_color_profile_slot( 8, 4, 214, 116, 167 ); //Hair
        set_color_profile_slot( 8, 5, 255, 0, 157 ); //Eyes
        set_color_profile_slot( 8, 6, 18, 17, 54 ); //Detailing
        set_color_profile_slot( 8, 7, 249, 255, 0 ); //Rainbow
        
        // Yukari
        set_color_profile_slot( 9, 0, 189, 157, 180 ); //Hat
        set_color_profile_slot( 9, 1, 118, 45, 150 ); //Clothes
        set_color_profile_slot( 9, 2, 255, 255, 255 ); //Skirt
        set_color_profile_slot( 9, 3, 128, 32, 32 ); //Bow Front
        set_color_profile_slot( 9, 4, 227, 169, 102 ); //Hair
        set_color_profile_slot( 9, 5, 204, 146, 0 ); //Eyes
        set_color_profile_slot( 9, 6, 19, 0, 20 ); //Detailing
        set_color_profile_slot( 9, 7, 249, 255, 0 ); //Rainbow
        
        // Suika
        set_color_profile_slot( 10, 0, 107, 54, 33 ); //Hat
        set_color_profile_slot( 10, 1, 255, 219, 219 ); //Clothes
        set_color_profile_slot( 10, 2, 92, 33, 255 ); //Skirt
        set_color_profile_slot( 10, 3, 122, 31, 31 ); //Bow Front
        set_color_profile_slot( 10, 4, 219, 112, 55 ); //Hair
        set_color_profile_slot( 10, 5, 163, 84, 5 ); //Eyes
        set_color_profile_slot( 10, 6, 35, 36, 35 ); //Detailing
        set_color_profile_slot( 10, 7, 249, 255, 0 ); //Rainbow
        
        // Reisen
        set_color_profile_slot( 11, 0, 219, 219, 219 ); //Hat
        set_color_profile_slot( 11, 1, 255, 199, 199 ); //Clothes
        set_color_profile_slot( 11, 2, 255, 92, 122 ); //Skirt
        set_color_profile_slot( 11, 3, 107, 39, 51 ); //Bow Front
        set_color_profile_slot( 11, 4, 143, 138, 255 ); //Hair
        set_color_profile_slot( 11, 5, 163, 46, 46 ); //Eyes
        set_color_profile_slot( 11, 6, 194, 130, 133 ); //Detailing
        set_color_profile_slot( 11, 7, 249, 255, 0 ); //Rainbow
        
        // Aya
        set_color_profile_slot( 12, 0, 89, 0, 0 ); //Hat
        set_color_profile_slot( 12, 1, 255, 207, 207 ); //Clothes
        set_color_profile_slot( 12, 2, 0, 0, 0 ); //Skirt
        set_color_profile_slot( 12, 3, 64, 64, 64 ); //Bow Front
        set_color_profile_slot( 12, 4, 56, 40, 40 ); //Hair
        set_color_profile_slot( 12, 5, 199, 0, 0 ); //Eyes
        set_color_profile_slot( 12, 6, 163, 106, 106 ); //Detailing
        set_color_profile_slot( 12, 7, 249, 255, 0 ); //Rainbow
        
        // Komachi
        set_color_profile_slot( 13, 0, 0, 82, 158 ); //Hat
        set_color_profile_slot( 13, 1, 71, 120, 255 ); //Clothes
        set_color_profile_slot( 13, 2, 0, 115, 255 ); //Skirt
        set_color_profile_slot( 13, 3, 0, 49, 117 ); //Bow Front
        set_color_profile_slot( 13, 4, 214, 32, 99 ); //Hair
        set_color_profile_slot( 13, 5, 242, 49, 71 ); //Eyes
        set_color_profile_slot( 13, 6, 209, 209, 209 ); //Detailing
        set_color_profile_slot( 13, 7, 249, 255, 0 ); //Rainbow
        
        // Iku
        set_color_profile_slot( 14, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 14, 1, 255, 140, 140 ); //Clothes
        set_color_profile_slot( 14, 2, 0, 0, 0 ); //Skirt
        set_color_profile_slot( 14, 3, 106, 0, 0 ); //Bow Front
        set_color_profile_slot( 14, 4, 105, 101, 199 ); //Hair
        set_color_profile_slot( 14, 5, 189, 15, 15 ); //Eyes
        set_color_profile_slot( 14, 6, 122, 0, 0 ); //Detailing
        set_color_profile_slot( 14, 7, 249, 255, 0 ); //Rainbow
        
        // Flandre
        set_color_profile_slot( 15, 0, 255, 240, 240 ); //Hat
        set_color_profile_slot( 15, 1, 255, 0, 55 ); //Clothes
        set_color_profile_slot( 15, 2, 148, 0, 0 ); //Skirt
        set_color_profile_slot( 15, 3, 23, 18, 3 ); //Bow Front
        set_color_profile_slot( 15, 4, 255, 199, 110 ); //Hair
        set_color_profile_slot( 15, 5, 255, 0, 0 ); //Eyes
        set_color_profile_slot( 15, 6, 255, 255, 255 ); //Detailing
        set_color_profile_slot( 15, 7, 0, 255, 0 ); //Rainbow
        
        // Shinmyoumaru
        set_color_profile_slot( 16, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 16, 1, 33, 26, 26 ); //Clothes
        set_color_profile_slot( 16, 2, 92, 0, 0 ); //Skirt
        set_color_profile_slot( 16, 3, 0, 0, 0 ); //Bow Front
        set_color_profile_slot( 16, 4, 71, 66, 135 ); //Hair
        set_color_profile_slot( 16, 5, 138, 0, 0 ); //Eyes
        set_color_profile_slot( 16, 6, 59, 0, 0 ); //Detailing
        set_color_profile_slot( 16, 7, 0, 255, 0 ); //Rainbow
        
        // Utsuho Reiuji
        set_color_profile_slot( 17, 0, 0, 77, 56 ); //Hat
        set_color_profile_slot( 17, 1, 237, 209, 209 ); //Clothes
        set_color_profile_slot( 17, 2, 0, 107, 75 ); //Skirt
        set_color_profile_slot( 17, 3, 26, 0, 0 ); //Bow Front
        set_color_profile_slot( 17, 4, 64, 0, 0 ); //Hair
        set_color_profile_slot( 17, 5, 69, 6, 6 ); //Eyes
        set_color_profile_slot( 17, 6, 0, 87, 45 ); //Detailing
        set_color_profile_slot( 17, 7, 0, 255, 0 ); //Rainbow
        
        // Tenkyuu Chimata
        set_color_profile_slot( 18, 0, 59, 0, 148 ); //Hat
        set_color_profile_slot( 18, 1, 212, 220, 255 ); //Clothes
        set_color_profile_slot( 18, 2, 108, 0, 158 ); //Skirt
        set_color_profile_slot( 18, 3, 99, 0, 181 ); //Bow Front
        set_color_profile_slot( 18, 4, 44, 0, 204 ); //Hair
        set_color_profile_slot( 18, 5, 0, 2, 54 ); //Eyes
        set_color_profile_slot( 18, 6, 240, 128, 0 ); //Detailing
        set_color_profile_slot( 18, 7, 0, 255, 0 ); //Rainbow
        
        // Bad Apple
        set_color_profile_slot( 19, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 19, 1, 0, 0, 0 ); //Clothes
        set_color_profile_slot( 19, 2, 214, 214, 214 ); //Skirt
        set_color_profile_slot( 19, 3, 0, 0, 0 ); //Bow Front
        set_color_profile_slot( 19, 4, 255, 255, 255 ); //Hair
        set_color_profile_slot( 19, 5, 0, 0, 0 ); //Eyes
        set_color_profile_slot( 19, 6, 255, 255, 255 ); //Detailing
        set_color_profile_slot( 19, 7, 0, 255, 0 ); //Rainbow
        
        // Clownpiece
        set_color_profile_slot( 20, 0, 115, 0, 69 ); //Hat
        set_color_profile_slot( 20, 1, 255, 0, 68 ); //Clothes
        set_color_profile_slot( 20, 2, 0, 17, 158 ); //Skirt
        set_color_profile_slot( 20, 3, 0, 43, 112 ); //Bow Front
        set_color_profile_slot( 20, 4, 235, 191, 125 ); //Hair
        set_color_profile_slot( 20, 5, 71, 0, 0 ); //Eyes
        set_color_profile_slot( 20, 6, 255, 255, 255 ); //Detailing
        set_color_profile_slot( 20, 7, 0, 255, 0 ); //Rainbow
        
        // Junko
        set_color_profile_slot( 21, 0, 13, 4, 0 ); //Hat
        set_color_profile_slot( 21, 1, 102, 0, 20 ); //Clothes
        set_color_profile_slot( 21, 2, 0, 0, 0 ); //Skirt
        set_color_profile_slot( 21, 3, 15, 8, 0 ); //Bow Front
        set_color_profile_slot( 21, 4, 232, 156, 68 ); //Hair
        set_color_profile_slot( 21, 5, 224, 37, 0 ); //Eyes
        set_color_profile_slot( 21, 6, 168, 106, 0 ); //Detailing
        set_color_profile_slot( 21, 7, 0, 255, 0 ); //Rainbow
        
        // Sans Undertale
        set_color_profile_slot( 22, 0, 255, 255, 255 ); //Hat
        set_color_profile_slot( 22, 1, 0, 35, 148 ); //Clothes
        set_color_profile_slot( 22, 2, 0, 0, 0 ); //Skirt
        set_color_profile_slot( 22, 3, 0, 0, 0 ); //Bow Front
        set_color_profile_slot( 22, 4, 255, 255, 255 ); //Hair
        set_color_profile_slot( 22, 5, 0, 255, 217 ); //Eyes
        set_color_profile_slot( 22, 6, 255, 255, 255 ); //Detailing
        set_color_profile_slot( 22, 7, 0, 255, 0 ); //Rainbow
        
        // Nitori
        set_color_profile_slot( 23, 0, 40, 115, 83 ); //Hat
        set_color_profile_slot( 23, 1, 0, 72, 186 ); //Clothes
        set_color_profile_slot( 23, 2, 0, 43, 161 ); //Skirt
        set_color_profile_slot( 23, 3, 22, 24, 56 ); //Bow Front
        set_color_profile_slot( 23, 4, 0, 162, 255 ); //Hair
        set_color_profile_slot( 23, 5, 0, 110, 166 ); //Eyes
        set_color_profile_slot( 23, 6, 0, 136, 204 ); //Detailing
        set_color_profile_slot( 23, 7, 0, 255, 0 ); //Rainbow
        
        // Cirno
        set_color_profile_slot( 24, 0, 0, 23, 117 ); //Hat
        set_color_profile_slot( 24, 1, 46, 88, 255 ); //Clothes
        set_color_profile_slot( 24, 2, 204, 255, 243 ); //Skirt
        set_color_profile_slot( 24, 3, 250, 255, 250 ); //Bow Front
        set_color_profile_slot( 24, 4, 0, 145, 255 ); //Hair
        set_color_profile_slot( 24, 5, 36, 167, 255 ); //Eyes
        set_color_profile_slot( 24, 6, 204, 255, 226 ); //Detailing
        set_color_profile_slot( 24, 7, 0, 255, 0 ); //Rainbow
        
        // Doremy Sweet
        set_color_profile_slot( 25, 0, 92, 0, 36 ); //Hat
        set_color_profile_slot( 25, 1, 59, 17, 8 ); //Clothes
        set_color_profile_slot( 25, 2, 209, 186, 173 ); //Skirt
        set_color_profile_slot( 25, 3, 255, 255, 255 ); //Bow Front
        set_color_profile_slot( 25, 4, 0, 14, 130 ); //Hair
        set_color_profile_slot( 25, 5, 51, 95, 255 ); //Eyes
        set_color_profile_slot( 25, 6, 255, 255, 255 ); //Detailing
        set_color_profile_slot( 25, 7, 0, 255, 0 ); //Rainbow
        
        // Mike Goutokuji
        set_color_profile_slot( 26, 0, 82, 28, 0 ); //Hat
        set_color_profile_slot( 26, 1, 255, 197, 174 ); //Clothes
        set_color_profile_slot( 26, 2, 89, 41, 0 ); //Skirt
        set_color_profile_slot( 26, 3, 41, 14, 0 ); //Bow Front
        set_color_profile_slot( 26, 4, 173, 114, 28 ); //Hair
        set_color_profile_slot( 26, 5, 138, 76, 0 ); //Eyes
        set_color_profile_slot( 26, 6, 191, 102, 0 ); //Detailing
        set_color_profile_slot( 26, 7, 0, 255, 0 ); //Rainbow
        
        // Ambi
        set_color_profile_slot( 27, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 27, 1, 26, 20, 20 ); //Clothes
        set_color_profile_slot( 27, 2, 33, 3, 0 ); //Skirt
        set_color_profile_slot( 27, 3, 97, 0, 0 ); //Bow Front
        set_color_profile_slot( 27, 4, 145, 92, 85 ); //Hair
        set_color_profile_slot( 27, 5, 245, 0, 140 ); //Eyes
        set_color_profile_slot( 27, 6, 189, 149, 9 ); //Detailing
        set_color_profile_slot( 27, 7, 0, 255, 0 ); //Rainbow
        
        // Mystia
        set_color_profile_slot( 28, 0, 87, 46, 0 ); //Hat
        set_color_profile_slot( 28, 1, 255, 191, 191 ); //Clothes
        set_color_profile_slot( 28, 2, 97, 60, 20 ); //Skirt
        set_color_profile_slot( 28, 3, 82, 44, 44 ); //Bow Front
        set_color_profile_slot( 28, 4, 255, 176, 221 ); //Hair
        set_color_profile_slot( 28, 5, 156, 61, 143 ); //Eyes
        set_color_profile_slot( 28, 6, 71, 34, 0 ); //Detailing
        set_color_profile_slot( 28, 7, 0, 255, 0 ); //Rainbow
        
        // Sacramentum
        set_color_profile_slot( 29, 0, 173, 255, 242 ); //Hat
        set_color_profile_slot( 29, 1, 161, 98, 64 ); //Clothes
        set_color_profile_slot( 29, 2, 214, 255, 237 ); //Skirt
        set_color_profile_slot( 29, 3, 212, 228, 255 ); //Bow Front
        set_color_profile_slot( 29, 4, 46, 128, 153 ); //Hair
        set_color_profile_slot( 29, 5, 161, 215, 255 ); //Eyes
        set_color_profile_slot( 29, 6, 157, 250, 242 ); //Detailing
        set_color_profile_slot( 29, 7, 0, 255, 0 ); //Rainbow
        
        // Seija Kijin
        set_color_profile_slot( 30, 0, 0, 0, 0 ); //Hat
        set_color_profile_slot( 30, 1, 255, 199, 199 ); //Clothes
        set_color_profile_slot( 30, 2, 148, 13, 13 ); //Skirt
        set_color_profile_slot( 30, 3, 8, 15, 28 ); //Bow Front
        set_color_profile_slot( 30, 4, 28, 28, 28 ); //Hair
        set_color_profile_slot( 30, 5, 161, 0, 0 ); //Eyes
        set_color_profile_slot( 30, 6, 16, 0, 135 ); //Detailing
        set_color_profile_slot( 30, 7, 0, 255, 0 ); //Rainbow
        
        break;
        case 1:
        	//snappy
			set_color_profile_slot( 1, 0, 15, 15, 15 ); //Hat
			set_color_profile_slot( 1, 1, 151, 82, 201 ); //Clothes
			set_color_profile_slot( 1, 2, 9, 10, 9 ); //Skirt
			set_color_profile_slot( 1, 3, 89, 0, 0 ); //Bow Front
			set_color_profile_slot( 1, 4, 111, 64, 47 ); //Hair
			set_color_profile_slot( 1, 5, 111, 64, 47 ); //Eyes
			set_color_profile_slot( 1, 6, 52, 6, 71 ); //Detailing
			set_color_profile_slot( 1, 7, 0, 255, 0 ); //Rainbow
            // Yuuto 
            set_color_profile_slot( 2, 0, 69, 130, 178 ); //Hat
            set_color_profile_slot( 2, 1, 0, 139, 199 ); //Clothes
            set_color_profile_slot( 2, 2, 0, 139, 199 ); //Skirt
            set_color_profile_slot( 2, 3, 148, 133, 0 ); //Bow Front
            set_color_profile_slot( 2, 4, 0, 139, 199 ); //Hair
            set_color_profile_slot( 2, 5, 166, 113, 223 ); //Eyes
            set_color_profile_slot( 2, 6, 173, 208, 230 ); //Detailing
            set_color_profile_slot( 2, 7, 0, 255, 4 ); //Rainbow
            //Nori
			set_color_profile_slot( 3, 0, 26, 32, 41 ); //Hat
			set_color_profile_slot( 3, 1, 143, 137, 127 ); //Clothes
			set_color_profile_slot( 3, 2, 27, 25, 31 ); //Skirt
			set_color_profile_slot( 3, 3, 26, 31, 41 ); //Bow Front
			set_color_profile_slot( 3, 4, 73, 66, 140 ); //Hair
			set_color_profile_slot( 3, 5, 62, 189, 201 ); //Eyes
			set_color_profile_slot( 3, 6, 44, 51, 66 ); //Detailing
			set_color_profile_slot( 3, 7, 0, 255, 40 ); //Rainbow
			// Keiki
			set_color_profile_slot( 4, 0, 8, 66, 35 ); //Hat
			set_color_profile_slot( 4, 1, 217, 156, 65 ); //Clothes
			set_color_profile_slot( 4, 2, 6, 64, 46 ); //Skirt
			set_color_profile_slot( 4, 3, 33, 92, 78 ); //Bow Front
			set_color_profile_slot( 4, 4, 25, 151, 179 ); //Hair
			set_color_profile_slot( 4, 5, 0, 204, 255 ); //Eyes
			set_color_profile_slot( 4, 6, 0, 87, 33 ); //Detailing
			set_color_profile_slot( 4, 7, 249, 255, 0 ); //Rainbow
			// Seiga
			set_color_profile_slot( 5, 0, 156, 182, 255 ); //Hat
			set_color_profile_slot( 5, 1, 10, 61, 145 ); //Clothes
			set_color_profile_slot( 5, 2, 145, 186, 219 ); //Skirt
			set_color_profile_slot( 5, 3, 97, 107, 125 ); //Bow Front
			set_color_profile_slot( 5, 4, 0, 174, 227 ); //Hair
			set_color_profile_slot( 5, 5, 162, 209, 219 ); //Eyes
			set_color_profile_slot( 5, 6, 0, 8, 51 ); //Detailing
			set_color_profile_slot( 5, 7, 249, 255, 0 ); //Rainbow
			
			// Seiran
			set_color_profile_slot( 6, 0, 68, 93, 191 ); //Hat
			set_color_profile_slot( 6, 1, 73, 151, 209 ); //Clothes
			set_color_profile_slot( 6, 2, 42, 74, 150 ); //Skirt
			set_color_profile_slot( 6, 3, 66, 14, 15 ); //Bow Front
			set_color_profile_slot( 6, 4, 50, 96, 186 ); //Hair
			set_color_profile_slot( 6, 5, 219, 0, 18 ); //Eyes
			set_color_profile_slot( 6, 6, 150, 27, 52 ); //Detailing
			set_color_profile_slot( 6, 7, 249, 255, 0 ); //Rainbow

			// Byakuren
			set_color_profile_slot( 7, 0, 115, 80, 39 ); //Hat
			set_color_profile_slot( 7, 1, 34, 32, 38 ); //Clothes
			set_color_profile_slot( 7, 2, 230, 175, 175 ); //Skirt
			set_color_profile_slot( 7, 3, 28, 41, 19 ); //Bow Front
			set_color_profile_slot( 7, 4, 125, 88, 171 ); //Hair
			set_color_profile_slot( 7, 5, 162, 0, 255 ); //Eyes
			set_color_profile_slot( 7, 6, 133, 107, 31 ); //Detailing
			set_color_profile_slot( 7, 7, 249, 255, 0 ); //Rainbow
        break;

    }
    if("dragon_install" not in self){exit}
        if(dragon_install and color_shift){
        	if(get_player_color(player) == 3 and music_alt != ""){
        		set_color_profile_slot( 0, 3, 255, 132, 66 );
				set_color_profile_slot_range( 3, 22, 2, 22 );
        	} else if (get_player_color(player) == 2 and music_alt != ""){
        		set_color_profile_slot( 0, 5, 255, 132, 66 );
				set_color_profile_slot_range( 5, 22, 2, 22 );
        	} else if (get_player_color(player) == 6 and music_alt != ""){
        		set_color_profile_slot( 0, 5, 255, 132, 66 );
				set_color_profile_slot_range( 5, 22, 2, 22 );
        	}
        } else {
        	set_color_profile_slot( 0, 3, 108, 12, 12 );
			set_color_profile_slot_range( 3, 24, 12, 59 );
			
			// Eyes
			set_color_profile_slot( 0, 5, 255, 68, 52 );
			set_color_profile_slot_range( 5, 8, 3, 54 );
        }
}

if("hue_spd" not in self){exit;}
//#region Mid Match Code
//run in match

hue_offset += hue_spd;
hue_offset = hue_offset % 255;
var color_rgb = make_color_rgb(255, 0, 0);
var hue = (color_get_hue(color_rgb) + hue_offset) mod 255;
var color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), 
                                color_get_value(color_rgb));

set_character_color_slot(7, color_get_red(color_hsv), 
                        color_get_green(color_hsv), color_get_blue(color_hsv));
//set_character_color_slot(4, color_get_red(color_hsv), 
//                        color_get_green(color_hsv), color_get_blue(color_hsv));
//set_character_color_slot(5, color_get_red(color_hsv), 
//                        color_get_green(color_hsv), color_get_blue(color_hsv));
//corrections to default palette

switch(get_player_color(player)){
	case 0:
	    set_character_color_slot(0, 0, 0, 10);
	    set_character_color_slot(6, 10, 8, 0);
	    set_character_color_slot(2, 26, 38, 128);
	    set_character_color_slot(3, 106, 0, 0);
		break;
	case 3:
		if(color_shift and "nori_color" in self){
			set_character_color_slot(2, color_get_red(nori_color3), color_get_green(nori_color3), color_get_blue(nori_color3));
			set_character_color_slot(3, color_get_red(nori_color3), color_get_green(nori_color3), color_get_blue(nori_color3));
			set_character_color_slot(4, color_get_red(nori_color), color_get_green(nori_color), color_get_blue(nori_color));
		}
		break;
		
	
}



if ((install_theme > 100 or music_alt != "" )and dragon_install){
	
	if(music_alt != ""){
		switch(get_player_color(player)){
			case 1:
				if(music_page != ""){
					set_character_color_slot(0, 224, 94, 145 ); //Hat
		            set_character_color_slot(1, 255, 186, 223 ); //Clothes
		            set_character_color_slot(2, 232, 56, 109 ); //Skirt
		            set_character_color_slot(3, 130, 0, 50 ); //Bow Front
		            set_character_color_slot(4, 255, 173, 220 ); //Hair
		            set_character_color_slot(5, 255, 112, 221 ); //Eyes
		            set_character_color_slot(6, 255, 107, 151 ); //Detailing
		            set_character_color_slot(7, 0, 255, 0 ); //Rainbow
				}
				break;
			case 2:
				set_character_color_slot(5, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow));
            	set_character_color_slot(4, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow), .5);
            	set_character_color_slot(0, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
				set_character_color_slot(1, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
				break;
			case 3:
				set_character_color_slot(0, color_get_red(rainbow_color_ULTRADARK), color_get_green(rainbow_color_ULTRADARK), color_get_blue(rainbow_color_ULTRADARK));
				set_character_color_slot(1, color_get_red(rainbow_color_ULTRADARK), color_get_green(rainbow_color_ULTRADARK), color_get_blue(rainbow_color_ULTRADARK));
				set_character_color_slot(2, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
				set_character_color_slot(3, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow));
				set_character_color_slot(4, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
				set_character_color_slot(5, color_get_red(rainbow_color_ULTRADARK), color_get_green(rainbow_color_ULTRADARK), color_get_blue(rainbow_color_ULTRADARK));
				set_character_color_slot(6, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));

				break;
			case 22:
				set_character_color_slot(4, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow));
        		set_character_color_slot(6, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow), .5);
            	set_character_color_slot(0, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
            	break;
            case 29:
            	set_character_color_slot(4, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
            	set_character_color_slot(1, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2), .5);
            	set_character_color_slot(0, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
            	set_character_color_slot(2, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
            	break;
            case 6:
            	set_character_color_slot(5, 255, 0, 0);
            	break;
            case 11:
            	set_character_color_slot(1, 30, 30, 50 ); //Clothes
            	set_character_color_slot(2, 232, 200, 200 ); //Skirt
				set_character_color_slot(3, 66, 14, 15 ); //Bow Front
				set_character_color_slot(6, 30, 30, 50 ); //Clothes
		}	
	}
	/*
    if(!skin_alt){
        if(install_theme == 122){
            set_character_color_slot(4, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow));
            set_character_color_slot(6, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow), .5);
            set_character_color_slot(0, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
        } else {
            set_character_color_slot(4, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
            set_character_color_slot(1, color_get_red(rainbow_dark), color_get_green(rainbow_dark), color_get_blue(rainbow_dark), .5);
            set_character_color_slot(0, color_get_red(rainbow_dark2), color_get_green(rainbow_dark2), color_get_blue(rainbow_dark2));
            set_character_color_slot(2, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
        }
    } else {
        if(music_alt != ""){
            set_character_color_slot(0, 224, 94, 145 ); //Hat
            set_character_color_slot(1, 255, 186, 223 ); //Clothes
            set_character_color_slot(2, 232, 56, 109 ); //Skirt
            set_character_color_slot(3, 130, 0, 50 ); //Bow Front
            set_character_color_slot(4, 255, 173, 220 ); //Hair
            set_character_color_slot(5, 255, 112, 221 ); //Eyes
            set_character_color_slot(6, 255, 107, 151 ); //Detailing
            set_character_color_slot(7, 0, 255, 0 ); //Rainbow
        } else {
            set_character_color_slot(6, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
            set_character_color_slot(5, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
        }
    }*/
}



if(dragon_install) outline_color = rainbow_rgb;

if(end_dragon_install){
    outline_color = [0, 0, 0];
    end_dragon_install = !end_dragon_install;
}

//#endregion

animate_portrait();
#define animate_portrait()
if (object_index == asset_get("draw_result_screen"))
{
    ///PARAMETERS:
    //SpriteName - [string] the name of the sprite
    //StartUp - the frames before the animation starts
    //AnimSpeed - frames per second the animation will go at
    //IdleSpriteName - [string] the name of the idle animation sprite
    //IdleStartUp - the frames before the animation transitions 
    //IdleSpeed - frames per second the idle animation will go at
    
    //initializing variables
    if !("victory_time" in self)
    {
        victory_time = 0;
        hue_offset = 0;
        hue_spd = 1;
    } else {
        victory_time++;
        hue_offset += hue_spd;
        hue_offset = hue_offset % 255;
        var color_rgb = make_color_rgb(255, 0, 0);
        var hue = (color_get_hue(color_rgb) + hue_offset) mod 255;
        var color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), 
                                        color_get_value(color_rgb));
        set_character_color_slot(7, color_get_red(color_hsv), 
                                color_get_green(color_hsv), color_get_blue(color_hsv));
    }
    

}