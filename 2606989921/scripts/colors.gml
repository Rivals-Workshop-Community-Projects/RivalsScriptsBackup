
//(R,G,B) - (H,S,V)
//NB. needs to overlap slightly so ordering is important

// 30: 30: 30 -   0:  0: 11 - Ghost (Sprite)
// 24: 24: 31 - 240: 22: 12 - Ghost (Portrait)
// 47: 47: 59 - 240: 20: 23 - Ghost Hightlight (Portrait)
set_color_profile_slot(0, 0,  24,  24, 31);
set_color_profile_slot_range(0, 180, 100, 15);

//122:122:153 - 240: 20: 60 - Lavender
//158:155:171 - 251:  9: 67 - Light Lavender (Portrait)
set_color_profile_slot(0, 1, 122, 122, 153);
set_color_profile_slot_range(1, 180, 100, 35);

//229:174:135 -  24: 41: 89 - Flesh
//219:183:162 -  22: 26: 85 - Light Flesh (Portrait)
set_color_profile_slot(0, 2, 229, 174, 135);
set_color_profile_slot_range(2, 180, 100, 20);

//255:255:230 -  60:  9:100 - Bone
set_color_profile_slot(0, 3, 255, 255, 230);
set_color_profile_slot_range(3, 180, 100, 10);

// 64:255: 64 -  120: 75:100 - undefined
//  0:255:128 -  150:100:100 - uNDEfiNED
//128:255:  0 -   90:100:100 - undEFinEd
//  0:255:  0 -  120:100:100 - uNdEfiNEd
set_color_profile_slot(0, 4,  64, 255,  64);
set_color_profile_slot(0, 5,   0, 255, 128);
set_color_profile_slot(0, 6, 128, 255,   0);
set_color_profile_slot(0, 7,   0, 255,   0);
set_color_profile_slot_range(4,   1,   1, 1);
set_color_profile_slot_range(5,   1,   1, 1);
set_color_profile_slot_range(6,   1,   1, 1);
set_color_profile_slot_range(7,   1,   1, 1);

var num_colors = set_num_alts(); //see msg_init_effects.gml

//0x13
set_color_profile_slot(1, 0,  16,  24,  24);
set_color_profile_slot(1, 1, 112, 152, 200);
set_color_profile_slot(1, 2, 168, 200, 232);
set_color_profile_slot(1, 3, 248, 232, 248);

//0x12
set_color_profile_slot(2, 0,  24,  16,  16);
set_color_profile_slot(2, 1, 207,  79,  47);
set_color_profile_slot(2, 2, 247, 159,  79);
set_color_profile_slot(2, 3, 255, 255, 230);

//0x16
set_color_profile_slot(3, 0,  30,  30,  30);
set_color_profile_slot(3, 1,  71, 159,  87);
set_color_profile_slot(3, 2, 159, 207, 127);
set_color_profile_slot(3, 3, 255, 255, 230);

//0x19
set_color_profile_slot(4, 0,  48,  48,  48);
set_color_profile_slot(4, 1, 128, 128, 112);
set_color_profile_slot(4, 2, 200, 200, 144);
set_color_profile_slot(4, 3, 248, 248, 240);

//0x18
set_color_profile_slot(5, 0,  30,  30,  30);
set_color_profile_slot(5, 1, 208, 160,   0);
set_color_profile_slot(5, 2, 248, 224, 112);
set_color_profile_slot(5, 3, 255, 255, 230);

//0x0F
set_color_profile_slot(6, 0,   8,   8,   8);
set_color_profile_slot(6, 1, 104,   8, 248);
set_color_profile_slot(6, 2,   0,  72, 248);
set_color_profile_slot(6, 3, 192, 160, 240);

//NULL
set_color_profile_slot(7, 0,  35,  67,  49);
set_color_profile_slot(7, 1,  83, 122,  62);
set_color_profile_slot(7, 2, 167, 186,  74);
set_color_profile_slot(7, 3, 211, 226, 154);

//0xFF
steal_color_profile_slot(8, 0, 0, 2);
steal_color_profile_slot(8, 1, 0, 1);
steal_color_profile_slot(8, 2, 0, 0);
steal_color_profile_slot(8, 3, 0, 0);

//0x09
set_color_profile_slot(9, 0,  24,  24,  24);
set_color_profile_slot(9, 1,  88, 184, 248);
set_color_profile_slot(9, 2, 248,  64,  64);
set_color_profile_slot(9, 3, 248, 248, 248);

//0xXX
set_color_profile_slot(10, 0,  16,   0,  50);
set_color_profile_slot(10, 1,  16,   0,  50);
set_color_profile_slot(10, 2, 216,   0,  50);
set_color_profile_slot(10, 3,  16,   0,  50);

//0x00
set_color_profile_slot(11, 0,  24,  16,  16);
set_color_profile_slot(11, 1, 136, 208,  24);
set_color_profile_slot(11, 2, 160, 208, 248);
set_color_profile_slot(11, 3, 248, 232, 248);

//0x19
set_color_profile_slot(12, 0,  24,  24,  24);
set_color_profile_slot(12, 1,  88,  88,  40);
set_color_profile_slot(12, 2, 160, 184,  80);
set_color_profile_slot(12, 3, 248, 248, 248);

//0x10
set_color_profile_slot(13, 0,  24,  24,  24);
set_color_profile_slot(13, 1, 248,   8,   8);
set_color_profile_slot(13, 2, 248, 248,   0);
set_color_profile_slot(13, 3, 255, 255, 255);

//0x_?
set_color_profile_slot(14, 0,  30,  30,  30);
set_color_profile_slot(14, 1, 128, 128, 128); //see synced var
set_color_profile_slot(14, 2, 170, 170, 170); //see synced var
set_color_profile_slot(14, 3, 255, 255, 230);

//for low-fps mode undefined (doesnt affect slot zero)
for (var i = 1; i < num_colors; i++)
{
   steal_color_profile_slot(i, 4, i, 0);
   steal_color_profile_slot(i, 5, i, 1);
   steal_color_profile_slot(i, 6, i, 2);
   steal_color_profile_slot(i, 7, i, 3);
}

#define steal_color_profile_slot(target_color, target_shade, source_color, source_shade)
{
   set_color_profile_slot(target_color, target_shade,  
        get_color_profile_slot_r(source_color, source_shade),  
        get_color_profile_slot_g(source_color, source_shade),
        get_color_profile_slot_b(source_color, source_shade));
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define set_num_alts // Version 0
    var num_colors = 15;
    with asset_get("obj_article3")
        if ((num == "missingno") && master.achievement_saw_matrix)
            num_colors = 16;
    set_num_palettes(num_colors);

    return num_colors;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion