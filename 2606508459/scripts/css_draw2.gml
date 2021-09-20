//CSS DRAW

//====> PAGING ####################################################################################################


//====> CHARACTER PORTRAIT ####################################################################################################
var txt_version = ""

var rec_x = 10;     //Bar rectangle x position
var rec_y = 144;    //y position
var rec_w = 7;      //width
var rec_h = 3;      //height
var rec_xm = 3;     //x margin
var rec_ym = 2;     //y margin

var alt_list = [
    // Page 1: Standard
    [
        ["", "", -1, ""]
        ,["", "", -1, ""]
        ,["", "", -1, ""]
        ,["", "", -1, ""]
        ,["", "", -1, ""]
        ,["", "", -1, ""]
        
    ],
    // Page 2: OCs
    [
        ["Olympia", "Sprite_Star0", 2, "@"]
        ,["Amber", "BountyXSnipe", 13, "@"]
        ,["Klockwurth", "Opengunner", 10, "@"]
        ,["Bosho", "Usagibun1", 6, "@"]    
        ,["Candy", "The5oul", 5, "@"]
        ,["Jin", "KamiFree_", 4, "@"]
        ,["Hikaru", "Lukaru", 8, "@"]
        ,["Theadosia", "Tree_sage_", 11, "@"]
        ,["Sycamore", "The5oul", 1, "@"]
        ,["Fierce", "hts9", 3, "@"]
        ,["TuQiu", "Usagibun1", 9, "@"] 
        ,["Ava", "SophieVennen", 12, "@"]
        ,["--", "--", -1, "@"]
        ,["Tak", "Taktaagic", 15, "@"]
        ,["Fox McCloud", "Design by Zerks", 16, ""]
    ],
    // Page 3: Secret
    [
        ["France", "", 17, ""]
    ],
]

//var len_peeps = array_length_1d(alt_list[0]);
//var curr_alt = get_player_color(player);
//var curr_peep = alt_list[0][curr_alt];

var curr_alt = get_player_color(player);
var curr_page = 0;
var len_peeps = 0;
var curr_peep = noone;

var _saveAmount = 0;
for (var i = 0; i < array_length_1d(alt_list); i++)
{
    var _len = array_length_1d(alt_list[i]);
    if (curr_alt < _len + _saveAmount)
    {
        curr_alt = curr_alt - _saveAmount;
        curr_page = i;
        curr_peep = alt_list[i][curr_alt];
        len_peeps = _len;
        break;
    }
    else
    {
        _saveAmount += _len;
    }
}

var arr_draw = [];
if (array_length_1d(curr_peep) > 2)
{
    arr_draw = [
        ["Text",    txt_version,    12, 41],
        ["Text",    curr_peep[0],   36, 114],
        ["Text",    curr_peep[3],   36, 130, c_blue],
        ["Text",    curr_peep[1],   curr_peep[3] != "" ? 46 : 36, 130],
        noone
    ];
}
else
{
    arr_draw = [
        ["Text",    txt_version,    12, 41],
        ["Text",    curr_peep[0],   36, 114],
        noone,
        noone,
        noone
    ];
}

//Alt Icon
if (curr_peep[2] != -1)
{
    arr_draw[4] = ["Sprite",  "credit_peeps", 10, 118, c_white, curr_peep[2]];
}

//====> WRITE ON CSS

draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(arr_draw); i++)
{
    curr_draw = arr_draw[i];
    if (curr_draw != noone)
    {
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
}

//====> DRAW ALT BAR ####################################################################################################

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
        curr_alt == i ? c_white : c_gray
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