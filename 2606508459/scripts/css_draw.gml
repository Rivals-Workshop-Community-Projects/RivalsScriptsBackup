//CSS DRAW

//Args: ["Text", Text, X, Y, color]
//Args: ["Sprite", Index, X, Y, color, SubImage]

dip_developerMode = false;
var alt_portrait = [
    ["charselect2", [17, 18, 19, 21]],
    ["charselect3", [20]],
]
var alt_split = 17

//var txt_version = "Beta Version 2.0"
var txt_version = ""

var rec_x = 10;     //Bar rectangle x position
var rec_y = 144;    //y position
var rec_w = 5;      //width
var rec_h = 3;      //height
var rec_xm = 3;     //x margin
var rec_ym = 2;     //y margin

var arr_peeps = [
    ["Fernet", "KeroBerry1/The5oul", 0, "@"]
    ,["Olympia", "Sprite_Star0", 2, "@"]
    ,["Amber", "BountyXSnipe", 13, "@"]
    ,["Klockwurth", "Opengunner", 10, "@"]
    ,["Bosho", "Usagibun1", 6, "@"]    
    ,["Candy", "The5oul", 5, "@"]
    ,["Jin", "KamiFree_", 4, "@"]
    ,["Hikaru", "Lukaru", 8, "@"]
    ,["Theadosia", "Tree_sage_", 11, "@"]
    ,["Sycamore", "The5oul", 1, "@"]
    ,["Fierce", "hts9", 3, "@"]
    ,["Ava", "SophieVennen", 12, "@"]
    ,["Techno & Tenor", "BobTheGUYYYYY", 14, "@"]
    ,["Genesis", "Genesis_Smash", 21, "@"]
    ,["Tak", "Taktaagic", 15, "@"]
    //,["Lukastar", "Lukaru", 16, "@"]
    //,["Fox", "Alt by Zerks", 17, ""]
    ,["Anglara", "Laylowthetyrant", 20, "@"]
    ,["Tricolour", "Z0nyX", 22, "@"]
    ,["T. Gear", "KeroBerry1/The5oul", 0, "@"]
    ,["A. Master", "KeroBerry1", 0, "@"]
    ,["TuQiu", "Usagibun1", 9, "@"] 
    ,["Kiera", "YeahBeezii", 18, "@"]
    ,["Daora", "Opengunner", 19, "@"]
    //,["Halloween", "2021 Dev Derby", 22, ""]
];

var arr_secret = [
    ["France", "", 17, ""]
];

var len_peeps = array_length_1d(arr_peeps);
var curr_alt = get_player_color(player);
var curr_peep = arr_peeps[curr_alt];

//Debug Info
var deb_a = "";
var deb_b = "";

switch (curr_alt)
{
    default: deb_a = "MP: On"; deb_b = "3rd Sphere: On"; break;
    case 0: deb_a = "MP: On"; deb_b = "3rd Sphere: On"; break;
    case 1: deb_a = "MP: Off"; deb_b = "3rd Sphere: On"; break;
    case 2: deb_a = "MP: On"; deb_b = "3rd Sphere: Off"; break;
    case 3: deb_a = "MP: Off"; deb_b = "3rd Sphere: Off"; break;
}

var arr_draw = [];
if (array_length_1d(curr_peep) > 2)
{
    if (dip_developerMode)
    {
        arr_draw = [
            ["Text",    txt_version,    12, 41],
            ["Text",    deb_a,          36, 114],
            ["Text",    deb_b,          36, 130],
            ["Sprite",  "credit_peeps", 10, 118, c_white, curr_peep[2]]
        ];
    }
    else
    {
        arr_draw = [
            ["Text",    txt_version,    12, 41],
            ["Text",    curr_peep[0],   36, 114],
            ["Text",    curr_peep[3],   36, 130, c_blue],
            ["Text",    curr_peep[1],   curr_peep[3] != "" ? 46 : 36, 130],
            ["Sprite",  "credit_peeps", 10, 118, c_white, curr_peep[2]]
        ];
    }
}
else
{
    arr_draw = [
        ["Text",    txt_version,    12, 41],
        ["Text",    curr_peep[0],   36, 114],
        ["Sprite",  "credit_peeps", 10, 118, c_white, curr_peep[1]]
    ];
}

//====> DRAW ALT CHAR SELECT

//Lookup curr_alt against alt_A and alt_B arrays
var _useAlt = noone;

for (var i = 0; i < array_length_1d(alt_portrait); i++)
{
    if (_useAlt == noone)
    {
        for (var ix = 0; ix < array_length_1d(alt_portrait[i][1]); ix++)
        {
            if (alt_portrait[i][1][ix] == curr_alt) { _useAlt = alt_portrait[i][0]; }
        }
    }
}

if (_useAlt != noone)
{
    draw_sprite_ext( sprite_get(_useAlt), 0, x + 8, y + 8, 2, 2, 0, c_white, 1 );
}

//====> WRITE ON CSS

draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(arr_draw); i++)
{
    curr_draw = arr_draw[i];
    curr_draw_len = array_length_1d(curr_draw);
    
    var use_type =      curr_draw[0];
    var use_element =   curr_draw_len > 1 ? curr_draw[1] : "";
    var use_x =         curr_draw_len > 2 ? curr_draw[2] : 0;
    var use_y =         curr_draw_len > 3 ? curr_draw[3] : 0;
    var use_color =     curr_draw_len > 4 ? curr_draw[4] : c_white;
    var use_sArg1 =     curr_draw_len > 5 ? curr_draw[5] : 0;
    
    switch (use_type)
    {
        case "Text":
            textDraw(x + use_x, y + use_y, "fName", use_color, 0, 1000, 1, true, 1, use_element);
            break;
        case "Sprite":
            if (sprite_get(use_element) != undefined)
            {
                draw_sprite_ext( sprite_get(use_element), use_sArg1, x + use_x, y + use_y, 1, 1, 0, use_color, 1 );
            }
            break;
    }
}

draw_sprite_ext( sprite_get("brand"), 0, x + 12, y + 44, 1, 1, 0, c_white, 1 );

//====> DRAW ALT BAR

//Background Rectangle
rectDraw(
    x + rec_x,
    y + rec_y,
    x + rec_x + (rec_w * len_peeps) + (rec_xm * len_peeps) + rec_xm,
    y + rec_y + rec_h + rec_ym * 2,
    c_black
);

for (var i = 0; i < len_peeps; i++)
{
    //Alt Rectangles
    rectDraw(
        x + rec_x + ((i + 1) * rec_xm) + (i * rec_w),
        y + rec_y + rec_ym,
        x + rec_x + ((i + 1) * rec_xm) + (i * rec_w) + rec_w,
        y + rec_y + rec_ym + rec_h,
        curr_alt == i ? (i >= alt_split ? c_yellow : c_white) : (i >= alt_split ? c_orange : c_gray)
    );
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

//I lifted this method from Olympia's code too C:
 
draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);