//init_shader.gml

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
if ("is_sparking" not in self) exit; //prevents error spam on load
/*
switch (alt_cur)
{
    case 0: //default
        break;
}*/

///////////////////// GLOW EFFECT CODE/////////////////////
/*
   if "sparking_cols" not in self sparking_cols = [ ] is for the colors the base colors go to, first array is for the regular Eye/Aura, the next one is for the Hue Shift
   
   if "sparking_cols_og" not in self sparking_cols_og = [ ] is for the colors the base colors themselves from the alt, first array is for the regular Eye/Aura, the next one is for the Hue Shift
   
   If needed, the else statement is for when you need to default back to the original shade when not changing the effect, since this changes the HUD, just copy and paste the arrays again.
   
*/

//Glow effect
if (is_sparking || is_guardian || is_super) {
    var t = ("glow_timer" in self ? glow_timer : get_gameplay_time()) << 2; // Timer for hueshifting
    var coeff = (dcos(t) + 1) * 0.5; // Hueshifting coefficient
    
    // Initialize arrays if not already set
    if "super_eyes" not in self super_eyes = [
        [[250, 55, 55], [241, 169, 125]], // Eyes/Aura
        [[255, 143, 130], [255, 237, 143]] // Eyes/Aura HS
    ];

    if "super_hair" not in self super_hair = [
        [[255, 227, 80], [255, 237, 140]], // Hair
        [[241, 122, 48], [241, 150, 94]]  // Hair HS
    ];
    
    
    if "sparking_cols" not in self sparking_cols = [
        [[217, 255, 207], [252, 255, 245]], // Base
        [[255, 66, 82], [255, 234, 156]],   // Blaze
        [[170, 124, 235], [215, 213, 232]], // Shock
        [[124, 165, 235], [186, 215, 232]], // Sea Lantern
        [[176, 195, 235], [197, 212, 235]], // Winter
        [[255, 138, 102], [235, 226, 223]], // Retribution
        [[229, 0, 0], [255, 159, 145]],     // Ibaraki - Iwana
        [[255, 208, 0], [255, 251, 242]],   // Green
        [[161, 219, 255], [230, 250, 255]], // Villainous
        [[212, 51, 188], [255, 145, 224]],  // Bulldoger - Slime Time
        [[255, 186, 226], [255, 236, 214]],  // Bar - Bloom 
        [[255, 201, 201], [255, 242, 212]], // Reckoning
        [[152, 255, 135], [247, 255, 227]], // Tangy
        [[68, 0, 255], [199, 200, 255]],   // Abyss
        [[146, 217, 128], [245, 252, 234]], // Verdant
        [[231, 175, 46], [247, 233, 128]], // Justice
        [[0, 168, 219], [171, 255, 247]],  // Emerald
        [[232, 114, 190], [255, 232, 246]], // Rosey
        [[255, 139, 89], [255, 247, 245]],  // Ranked Gold
        [[168, 105, 255], [244, 240, 255]],  // Violet Storm
        [[102, 156, 232], [245, 252, 255]], // Chilled
        [[249, 213, 165], [252, 252, 227]], // Chi
        [[224, 38, 224], [250, 207, 255]],  // Royal
        [[232, 114, 145], [254, 243, 229]], // Prime
        [[134, 230, 237], [194, 255, 228]], // Flow
        [[255, 8, 0], [255, 133, 133]],     // Inked
        [[247, 254, 255], [242, 255, 254]],  // Hermit  
        [[202, 93, 237], [255, 161, 250]], // Poisonous 
        [[249, 237, 154], [246, 249, 209]] // Vortex 
    ];
    
    if "sparking_cols_og" not in self sparking_cols_og = [
        [[66, 233, 255], [250, 255, 255]],  // Base
        [[255, 75, 38], [255, 213, 117]],   // Blaze
        [[124, 147, 235], [168, 207, 232]], // Shock
        [[124, 235, 233], [211, 232, 221]], // Sea Lantern
        [[176, 231, 235], [197, 235, 234]], // Winter
        [[255, 216, 102], [235, 232, 223]], // Retribution
        [[147, 112, 229], [214, 149, 221]], // Ibaraki - Iwana
        [[81, 255, 0], [249, 255, 143]],    // Green
        [[169, 158, 255], [237, 235, 255]], // Villainous
        [[212, 46, 46], [255, 113, 61]],    // Bulldoger - Slime Time
        [[235, 68, 165], [255, 168, 165]],  // Bar - Bloom 
        [[232, 154, 137], [255, 219, 148]], // Reckoning
        [[0, 255, 187], [250, 255, 253]],  // Tangy
        [[217, 0, 255], [255, 199, 230]],  // Abyss
        [[217, 168, 128], [252, 249, 234]], // Verdant
        [[231, 138, 46], [247, 202, 128]], // Justice
        [[0, 219, 124], [215, 255, 207]],  // Emerald
        [[208, 82, 82], [255, 217, 217]],  // Rosey
        [[255, 186, 89], [255, 252, 245]],  // Ranked Gold
        [[217, 0, 255], [255, 199, 230]],   // Violet Storm
        [[162, 122, 204], [251, 227, 255]], // Chilled
        [[165, 210, 249], [190, 252, 245]], // Chi
        [[224, 38, 38], [255, 166, 196]],  // Royal
        [[232, 114, 164], [254, 229, 229]], // Prime
        [[134, 162, 237], [194, 255, 255]], // Flow
        [[255, 8, 0], [255, 133, 133]], // Inked
        [[247, 254, 255], [242, 255, 254]], // Hermit   
        [[180, 78, 212], [217, 161, 255]], // Poisonous
        [[249, 222, 34], [241, 249, 127]] // Vortex
    ];
    
    if "super_cols" not in self super_cols = [
        [[184, 50, 49], [116, 41, 46], [109, 109, 116], [255, 252, 250]],   // Base
        [[107, 107, 107], [41, 41, 41], [173, 173, 173], [255, 255, 255]],  // Blaze
        [[46, 186, 242], [65, 105, 235], [46, 52, 190], [255, 255, 255]],   // Shock
        [[245, 215, 45], [110, 90, 90], [36, 170, 183], [255, 255, 255]],   // Sea Lantern
        [[225, 225, 225], [120, 110, 140], [122, 98, 98], [255, 255, 255]], // Winter
        [[255, 255, 175], [200, 145, 100], [94, 75, 90], [255, 245, 170]],  // Retribution
        [[123, 101, 148], [90, 73, 110], [114, 94, 138], [255, 122, 233]],  // Ibaraki - Iwana
        [[229, 255, 166], [0, 194, 97], [66, 150, 91], [245, 255, 245]],    // Green
        [[255, 255, 255], [199, 188, 212], [227, 226, 218], [255, 87, 87]], // Villainous
        [[36, 237, 190], [12, 176, 160], [255, 92, 92], [245, 217, 56]],    // Bulldoger - Slime Time
        [[222, 56, 34], [163, 32, 52], [230, 246, 255], [54, 58, 87]],      // Bar - Bloom 
        [[240, 74, 74], [130, 40, 40], [153, 139, 161], [255, 236, 156]],   // Reckoning
        [[255, 210, 138], [199, 99, 36], [125, 125, 125], [255, 255, 255]], // Tangy
        [[184, 191, 237], [111, 116, 150], [83, 78, 133], [175, 72, 250]],      // Abyss
        [[146, 153, 80], [59, 82, 41], [148, 65, 75], [209, 169, 150]],     // Verdant
        [[247, 247, 239], [161, 128, 130], [235, 229, 215], [247, 233, 183]], // Justice
        [[0, 255, 128], [56, 152, 171], [219, 255, 219], [255, 208, 0]],    // Emerald
        [[247, 247, 247], [140, 147, 242], [161, 55, 108], [242, 140, 178]], // Rosey
        [[242, 242, 255], [216, 216, 224], [255, 221, 87], [255, 160, 54]],  // Ranked Gold
        [[255, 69, 249], [163, 46, 147], [156, 142, 156], [255, 229, 125]],  // Violet Storm
        [[254, 254, 254], [177, 172, 227], [75, 94, 189], [194, 222, 255]], // Chilled
        [[102, 94, 120], [37, 28, 61], [251, 255, 251], [251, 255, 251]],  // Chi
        [[199, 20, 23], [120, 11, 23], [69, 67, 55], [255, 214, 99]],      // Royal
        [[158, 147, 156], [133, 83, 133], [222, 81, 130], [252, 245, 217]], // Prime
        [[219, 41, 77], [148, 22, 47], [122, 112, 110], [253, 236, 233]],  // Flow
        [[169, 255, 64], [87, 196, 154], [75, 151, 255], [245, 47, 98]],   // Inked
        [[255, 186, 89], [201, 96, 49], [103, 107, 105], [134, 188, 227]],  // Hermit  
        [[1, 152, 99], [41, 95, 72], [218, 215, 236], [104, 86, 206]], // Poisonous
        [[129, 255, 28], [0, 179, 9], [53, 119, 253], [249, 222, 34]] // Vortex
    ];
    
    if "super_cols_og" not in self super_cols_og = [
        [[184, 50, 49], [116, 41, 46], [109, 109, 116], [255, 252, 250]],   // Base
        [[107, 107, 107], [41, 41, 41], [173, 173, 173], [255, 255, 255]],  // Blaze
        [[34, 146, 242], [46, 86, 227], [34, 42, 161], [242, 242, 242]],    // Shock
        [[209, 166, 37], [99, 77, 77], [26, 150, 163], [242, 242, 242]],    // Sea Lantern
        [[204, 204, 204], [100, 93, 120], [102, 81, 81], [242, 242, 242]],  // Winter
        [[252, 249, 156], [169, 125, 87], [74, 63, 78], [255, 233, 151]],   // Retribution
        [[86, 71, 104], [47, 38, 57], [86, 71, 104], [254, 56, 244]],       // Ibaraki - Iwana
        [[219, 255, 133], [0, 128, 64], [50, 115, 70], [224, 255, 224]],    // Green
        [[255, 255, 255], [153, 145, 163], [196, 195, 188], [232, 63, 63]], // Villainous
        [[36, 237, 190], [12, 176, 160], [255, 92, 92], [245, 217, 56]],    // Bulldoger - Slime Time
        [[222, 56, 34], [163, 32, 52], [230, 246, 255], [54, 58, 87]],      // Bar - Bloom 
        [[240, 14, 14], [130, 0, 0], [126, 115, 133], [255, 225, 94]],      // Reckoning
        [[255, 180, 59], [199, 77, 0], [102, 102, 102], [247, 247, 247]],  // Tangy
        [[166, 172, 214], [81, 85, 110], [61, 58, 98], [144, 59, 206]],    // Abyss
        [[146, 153, 80], [59, 82, 41], [148, 65, 75], [209, 169, 150]],    // Verdant
        [[236, 236, 228], [148, 118, 120], [200, 196, 183], [247, 219, 115]], // Justice
        [[0, 255, 128], [56, 152, 171], [219, 255, 219], [255, 208, 0]],   // Emerald
        [[239, 243, 247], [96, 101, 165], [140, 48, 94], [216, 104, 145]], // Rosey
        [[228, 228, 240], [185, 185, 192], [255, 204, 0], [255, 135, 0]],  // Ranked Gold
        [[255, 0, 246], [163, 0, 140], [133, 122, 133], [255, 221, 87]],    // Violet Storm
        [[254, 254, 254], [143, 139, 183], [53, 67, 134], [140, 174, 221]], // Chilled
        [[63, 58, 74], [8, 6, 13], [239, 243, 239], [239, 243, 239]],       // Chi
        [[159, 16, 18], [89, 8, 17], [41, 40, 33], [255, 187, 0]],          // Royal
        [[97, 90, 96], [43, 27, 43], [156, 57, 91], [252, 234, 167]],       // Prime
        [[172, 32, 60], [103, 15, 33], [68, 62, 61], [253, 210, 202]],      // Flow
        [[152, 230, 58], [62, 140, 110], [69, 139, 235], [233, 45, 93]],    // Inked
        [[255, 157, 20], [154, 74, 38], [57, 59, 58], [61, 157, 227]],       // Hermit    
        [[1, 152, 99], [41, 95, 72], [218, 215, 236], [104, 86, 206]],       // Poisonous
        [[129, 255, 28], [0, 179, 9], [53, 119, 253], [249, 222, 34]]       // Vortex 
    ];

    // If is_sparking or is_guardian, handle hueshifting
    if (is_sparking || is_guardian) {
        // Custom hueshift for alt 25
        if (alt_cur == 25) {
            // Define the three phases for alt 25 in the desired sequence
            var alt_25_cols = [
                [[255, 8, 0], [255, 133, 133]],    // Phase 1 colors (Red)
                [[0, 191, 255], [133, 253, 255]], // Phase 2 colors (Blue)
                [[255, 162, 0], [255, 243, 133]]  // Phase 3 colors (Yellow)
            ];
        
            // Duration of each phase
            var phase_length = 180; // Frames per phase
            var t_mod = t % (phase_length * 3); // Total cycle (3 phases = 720 frames)
        
            // Determine the current phase and the next phase
            var current_phase = floor(t_mod / phase_length); // Current phase (0 = Red, 1 = Blue, 2 = Yellow)
            var next_phase = (current_phase + 1) % 3;        // Next phase (Red → Blue → Yellow → Red)
        
            // Colors for the current and next phases
            var start_color = alt_25_cols[current_phase];
            var end_color = alt_25_cols[next_phase];
        
            // Calculate interpolation coefficient within the current phase
            var phase_progress = (t_mod % phase_length) / phase_length; // Progress within the phase (0 to 1)
            var coeff = (1 - dcos(phase_progress * 180)) * 0.5;         // Smooth cosine-based interpolation
        
            // Apply hueshifting logic
            var e = 0;
            repeat (2) { // Apply to both eyes (slots 0 and 1)
                var r1 = start_color[e][0];
                var g1 = start_color[e][1];
                var b1 = start_color[e][2];
                var r2 = end_color[e][0];
                var g2 = end_color[e][1];
                var b2 = end_color[e][2];
        
                // Smoothly interpolate between the two phases
                var r = lerp(r1, r2, coeff);
                var g = lerp(g1, g2, coeff);
                var b = lerp(b1, b2, coeff);
        
                set_character_color_slot(e, floor(r), floor(g), floor(b));
                set_article_color_slot(e, floor(r), floor(g), floor(b));
                e++;
            }
        } else if (alt_cur == 26) {
                var coeff = (dcos(t) + 1) * 0.5; // Hueshifting coefficient
        
                // Define arrays for sparking and guardian
                if "alt_26_sparking_eyes" not in self alt_26_sparking_eyes = [
                    [[227, 25, 18], [255, 18, 18]], // Sparking Eyes/Aura
                    [[255, 133, 133], [255, 176, 176]] // Sparking Eyes/Aura HS
                ];
        
                if "alt_26_sparking_hair" not in self alt_26_sparking_hair = [
                    [[87, 38, 38], [120, 0, 0]], // Sparking Hair
                    [[51, 17, 17], [69, 23, 23]]  // Sparking Hair HS
                ];
        
                if "alt_26_guardian_eyes" not in self alt_26_guardian_eyes = [
                    [[255, 234, 41], [255, 187, 41]], // Guardian Eyes/Aura
                    [[250, 255, 212], [251, 255, 168]] // Guardian Eyes/Aura HS
                ];
        
                if "alt_26_guardian_hair" not in self alt_26_guardian_hair = [
                    [[253, 232, 101], [253, 227, 68]], // Guardian Hair
                    [[253, 147, 101], [232, 117, 34]]  // Guardian Hair HS
                ];
        
                // Select appropriate arrays based on sparking or guardian
                var eye_array = is_sparking ? alt_26_sparking_eyes : alt_26_guardian_eyes;
                var hair_array = is_sparking ? alt_26_sparking_hair : alt_26_guardian_hair;
        
                // Apply hueshifting for eyes
                for (var i = 0; i < array_length(eye_array); i++) {
                    var r1 = eye_array[i][1][0];
                    var g1 = eye_array[i][1][1];
                    var b1 = eye_array[i][1][2];
                    var r2 = eye_array[i][0][0];
                    var g2 = eye_array[i][0][1];
                    var b2 = eye_array[i][0][2];
        
                    var r = lerp(r2, r1, coeff);
                    var g = lerp(g2, g1, coeff);
                    var b = lerp(b2, b1, coeff);
        
                    set_character_color_slot(i, floor(r), floor(g), floor(b));
                    set_article_color_slot(i, floor(r), floor(g), floor(b));
                }
        
                // Apply hueshifting for hair
                for (var i = 0; i < array_length(hair_array); i++) {
                    var r1 = hair_array[i][1][0];
                    var g1 = hair_array[i][1][1];
                    var b1 = hair_array[i][1][2];
                    var r2 = hair_array[i][0][0];
                    var g2 = hair_array[i][0][1];
                    var b2 = hair_array[i][0][2];
        
                    var r = lerp(r2, r1, coeff);
                    var g = lerp(g2, g1, coeff);
                    var b = lerp(b2, b1, coeff);
        
                    set_character_color_slot(i + 2, floor(r), floor(g), floor(b)); // Hair slots start at 2
                    set_article_color_slot(i + 2, floor(r), floor(g), floor(b));
                }
            } else {
                // Original hueshifting logic for other alts
                var coeff = (dcos(t) + 1) * 0.5;
                var col = sparking_cols[alt_cur];
                var col2 = sparking_cols_og[alt_cur];
                var e = 0;
        
                repeat 2 { // Only apply to eyes (slots 0 and 1)
                    var r1 = col2[e][0];
                    var g1 = col2[e][1];
                    var b1 = col2[e][2];
                    var r2 = col[e][0];
                    var g2 = col[e][1];
                    var b2 = col[e][2];
        
                    var r = (lerp(r2, r1, coeff) << 1) >> 1;
                    var g = (lerp(g2, g1, coeff) << 1) >> 1;
                    var b = (lerp(b2, b1, coeff) << 1) >> 1;
        
                    set_character_color_slot(e, r, g, b);
                    set_article_color_slot(e, r, g, b);
                    e++;
                }
            }
        }    
    if (is_super) {
        // Super hueshifting (eyes, hair, clothing)
        // Eyes
        for (var i = 0; i < array_length(super_eyes); i++) {
            var r1 = super_eyes[i][1][0];
            var g1 = super_eyes[i][1][1];
            var b1 = super_eyes[i][1][2];
            var r2 = super_eyes[i][0][0];
            var g2 = super_eyes[i][0][1];
            var b2 = super_eyes[i][0][2];

            var r = (lerp(r2, r1, coeff) << 1) >> 1;
            var g = (lerp(g2, g1, coeff) << 1) >> 1;
            var b = (lerp(b2, b1, coeff) << 1) >> 1;

            set_character_color_slot(i, r, g, b);
            set_article_color_slot(i, r, g, b);
        }

        // Hair
        for (var i = 0; i < array_length(super_hair); i++) {
            var r1 = super_hair[i][1][0];
            var g1 = super_hair[i][1][1];
            var b1 = super_hair[i][1][2];
            var r2 = super_hair[i][0][0];
            var g2 = super_hair[i][0][1];
            var b2 = super_hair[i][0][2];

            var r = (lerp(r2, r1, coeff) << 1) >> 1;
            var g = (lerp(g2, g1, coeff) << 1) >> 1;
            var b = (lerp(b2, b1, coeff) << 1) >> 1;

            set_character_color_slot(i + 2, r, g, b); // Hair starts at slot 2
            set_article_color_slot(i + 2, r, g, b);
        }

        // Clothing
        var col = super_cols[alt_cur];
        var col2 = super_cols_og[alt_cur];

        for (var i = 0; i < array_length(super_cols_og[alt_cur]); i++) {
            var r1 = col2[i][0];
            var g1 = col2[i][1];
            var b1 = col2[i][2];
            var r2 = col[i][0];
            var g2 = col[i][1];
            var b2 = col[i][2];

            var r = (lerp(r2, r1, coeff) << 1) >> 1;
            var g = (lerp(g2, g1, coeff) << 1) >> 1;
            var b = (lerp(b2, b1, coeff) << 1) >> 1;

            set_character_color_slot(i + 4, r, g, b); // Clothing starts at slot 4
            set_article_color_slot(i + 4, r, g, b);
        }
    }
} else {
    // Default colors
    if "default_cols" not in self default_cols = [
        [[142, 250, 175], [238, 255, 217], [229, 111, 71], [154, 46, 38], [184, 50, 49], [116, 41, 46], [109, 109, 116], [255, 252, 250]],      // Base
        [[255, 102, 102], [255, 204, 130], [209, 80, 0], [117, 31, 0], [107, 107, 107], [41, 41, 41], [173, 173, 173], [255, 255, 255]],        // Blaze
        [[124, 147, 235], [168, 207, 232], [252, 168, 0], [176, 88, 55], [34, 146, 242], [46, 86, 227], [34, 42, 161], [242, 242, 242]],        // Shock
        [[124, 235, 233], [211, 232, 221], [68, 123, 110], [61, 53, 60], [209, 166, 37], [99, 77, 77], [26, 150, 163], [242, 242, 242]],        // Sea Lantern
        [[176, 231, 235], [197, 235, 234], [209, 209, 209], [130, 113, 129], [204, 204, 204], [100, 93, 120], [102, 81, 81], [242, 242, 242]],  // Winter
        [[255, 216, 102], [235, 232, 223], [251, 246, 156], [192, 129, 86], [252, 249, 156], [169, 125, 87], [74, 63, 78], [255, 233, 151]],    // Retribution
        [[147, 112, 229], [214, 149, 221], [233, 243, 253], [158, 147, 253], [86, 71, 104], [47, 38, 57], [86, 71, 104], [254, 56, 244]],       // Ibaraki - Iwana
        [[81, 255, 0], [249, 255, 143], [204, 255, 0], [43, 171, 92], [219, 255, 133], [0, 128, 64], [50, 115, 70 ], [224, 255, 224]],          // Green
        [[169, 158, 255], [237, 235, 255], [255, 0, 0], [145, 0, 0], [255, 255, 255], [153, 145, 163], [196, 195, 188], [232, 63, 63]],         // Villainous
        [[212, 46, 46], [255, 113, 61], [17, 163, 151], [0, 73, 128], [36, 237, 190], [12, 176, 160], [255, 92, 92], [245, 217, 56]],           // Bulldoger - Slime Time
        [[235, 68, 165], [255, 168, 194], [240, 145, 81], [207, 69, 45], [222, 56, 34], [163, 32, 52], [230, 246, 255], [54, 58, 87]],          // Bar - Bloom 
        [[232, 154, 137], [255, 219, 148], [110, 77, 92], [43, 40, 41], [240, 14, 14], [130, 0, 0], [126, 115, 133], [255, 225, 94]],           // Reckoning
        [[0, 255, 187], [250, 255, 253], [219, 73, 0], [153, 0, 0], [255, 180, 59], [199, 77, 0], [102, 102, 102], [247, 247, 247]],            // Tangy
        [[217, 0, 255], [255, 199, 230], [73, 55, 85], [44, 12, 69], [166, 172, 214], [81, 85, 110], [61, 58, 98], [144, 59, 206]],             // Abyss
        [[217, 168, 128], [252, 249, 234], [186, 158, 123], [90, 73, 66], [146, 153, 80], [59, 82, 41], [148, 65, 75], [209, 169, 150]],        // Verdant
        [[231, 138, 46], [247, 202, 128], [247, 243, 222], [161, 135, 153], [236, 236, 228], [148, 118, 120], [200, 196, 183], [247, 219, 115]],// Justice
        [[0, 219, 124], [215, 255, 207], [255, 204, 110], [207, 117, 0], [0, 255, 128], [56, 152, 171], [219, 255, 219], [255, 208, 0]],        // Emerald
        [[208, 82, 82], [255, 217, 217], [247, 217, 219], [244, 138, 186], [239, 243, 247], [96, 101, 165], [140, 48, 94], [216, 104, 145]],    // Rosey
        [[255, 186, 89], [255, 252, 245], [255, 204, 0], [220, 119, 0], [228, 228, 240], [185, 185, 192], [255, 204, 0], [255, 135, 0]],        // Ranked Gold
        [[217, 0, 255], [255, 199, 230], [255, 187, 97], [199, 78, 103], [255, 0, 246], [163, 0, 140], [133, 122, 133], [255, 221, 87]],         // Violet Storm   
        [[162, 122, 204], [251, 227, 255], [216, 255, 255], [97, 119, 178], [254, 254, 254], [143, 139, 183], [53, 67, 134], [140, 174, 221]],  // Chilled
        [[165, 210, 249], [190, 252, 245], [77, 69, 73], [31, 23, 19], [63, 58, 74], [8, 6, 13], [239, 243, 239], [239, 243, 239]],             // Chi
        [[224, 38, 38], [255, 166, 196], [131, 1, 38], [69, 0, 0], [159, 16, 18], [89, 8, 17], [41, 40, 33], [255, 187, 0]],                    // Royal
        [[232, 114, 164], [254, 229, 229], [250, 219, 160], [147, 84, 101], [97, 90, 96], [43, 27, 43], [156, 57, 91], [252, 234, 167]],        // Prime
        [[134, 162, 237], [194, 255, 255], [254, 243, 228], [144, 127, 110], [172, 32, 60], [103, 15, 33], [68, 62, 61], [253, 210, 202]],      // Flow
        [[255, 8, 0], [255, 133, 133], [255, 148, 216], [191, 51, 232], [152, 230, 58], [62, 140, 110], [69, 139, 235], [233, 45, 93]],         // Inked
        [[247, 254, 255], [242, 255, 254], [57, 59, 58], [13, 13, 13], [255, 157, 20], [154, 74, 38], [57, 59, 58], [61, 157, 227]],             // Hermit 
        [[180, 78, 212], [217, 161, 255], [234, 232, 243], [158, 132, 223], [1, 152, 99], [41, 95, 72], [218, 215, 236], [104, 86, 206]],        // Poisonous
        [[249, 222, 34], [241, 249, 127]], [53, 119, 253], [30, 71, 150], [[129, 255, 28], [0, 179, 9], [53, 119, 253], [249, 222, 34]]       // Vortex
    ];

    for (var i = 0; i < array_length(default_cols[alt_cur]); i++) {
        var r = default_cols[alt_cur][i][0];
        var g = default_cols[alt_cur][i][1];
        var b = default_cols[alt_cur][i][2];

        set_character_color_slot(i, r, g, b);
        set_article_color_slot(i, r, g, b);
    }
}