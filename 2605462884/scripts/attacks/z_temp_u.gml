//oh my god


/*sealed away for now


var dynamic = "0: cell 1 show, does it reaches here
0-1: cell 1 down 19, rotate 140
1-2: cell 1 left 19, rotate 100
2-3: cell 1 up 19";

sav(AG_CATEGORY, 2);
sav(AG_SPRITE, asset_get("empty_sprite"));
sav(AG_HURTBOX_SPRITE, hurtbox_spr);
sav(AG_PSEUDO_DYNAMIC, 1);
sav(AG_PD_ITEM, sprite_get("mixels"));
sav(AG_PD_LOC_X, 72);
sav(AG_PD_LOC_Y, 72);
sav(AG_PD_ROT, 0);

// Don't ask
var NL = "
";

print("splitting dyn");
var linesArr = string_split(dynamic, NL);
var linesCount = array_length_1d(linesArr);

sav(AG_NUM_WINDOWS, linesCount);
swv(1, AG_UP, 0);
swv(1, AG_DOWN, 0);
swv(1, AG_LEFT, 0);
swv(1, AG_RIGHT, 0);
swv(1, AG_ROTATE, 0);
swv(1, AG_IN_FRONT, 0);
swv(1, AG_DIR, 0);

var TIME_IN_FRAMES = 20;
for (var i = 0; i < linesCount; i++) {
    var line = linesArr[i];

    print("splitting time from cmd");
    var tmpLineSplit = string_split(line, ':');

    print("splitting timerange");
    var timerange = string_split(tmpLineSplit[0], '-');

    print("splitting code for line");
    print(tmpLineSplit);
    nicep(["what", tmpLineSplit[1]]);

    var codeArr = string_split(tmpLineSplit[1], ',');
    var codeLength = array_length_1d(codeArr);
    
    var duration = (array_length_1d(timerange) == 2)
	? real(timerange[1]) - real(timerange[0]) * TIME_IN_FRAMES
	: 1
    ;
    swv(i + 1, AG_WINDOW_LENGTH, duration); 
    swv(i + 1, AG_BODY_CELL, 1); 

    nicep(["window", i + 1, "of", linesCount + 1]);
    nicep(["code lines:", codeLength, "'"]);
    nicep(["timeRange: '", timerange, "'"]);

    for (var j = 0; j < codeLength; j++) {
        var code = codeArr[j];
	nicep(["command", j, ":", code]);

        // we only support one cell
        code = string_replace_all(code, "cell 1 ", "");

        // the breaking point where making a parser+AST would have been nice
        // except I'm only supporting 5 commands so whatever
        var codeWords = string_split(code, ' ');
        var command = codeWords[0];
        var value = codeWords[1];


        switch (command) {
            case "up"   : swv(i + 1, AG_UP,    value); break;
            case "down" : swv(i + 1, AG_DOWN,  value); break;
            case "left" : swv(i + 1, AG_LEFT,  value); break;
            case "right": swv(i + 1, AG_RIGHT, value); break;
            case "rotate": swv(i + 1, AG_ROTATE, value); break;
            default: break;
        }
    }
}



#define sav(a,b)
return set_attack_value(AT_USPECIAL_2, argument0, argument1);

#define swv(a,b,c)
return set_window_value(AT_USPECIAL_2, argument0, argument1, argument2);

#define string_split(str, separator)
var str = argument0;
var separator = argument1;

var count = string_count(separator, str);

var result = [];
for (var i = 0; i < count; i++) {
	var pos = string_pos(separator, str);
	var strlen = string_length(str);

	//nicep(["strsplit: sep:", separator, "i:", i, "pos:", pos, "str:", str]);

	result[i] = string_copy(str, 1, pos - 1); 
	str = string_copy(str, pos + 1, strlen - pos);
	nicep(["strsplit:", separator, result[i], '|||', str]);
}
result[count + 1] = str;
return result;

#define as_str(arg)
var a = argument0;
if (is_string(a)) { return a; }
if (is_array(a) ) { return concat(a); }
if (is_real(a)  ) { return string(a); }
return "<UNPRINTABLE?>";

#define concat(args)
if (!is_array(argument0)) {
    return as_str(argument0);
}
var str = "";
var len = array_length_1d(argument0);
for (var i = 0; i < len; i++) {
    str += as_str(argument0[i]) + " ";

    if (i + 1 < len) {
        str += " ";
    }
}
return str;

#define nicep(args)
return print(concat(argument0));













/*
var dynamic = "0: cell 1 show
0-1: cell 1 down 19, rotate 140
1-2: cell 1 left 19, rotate 100
2-3: cell 1 up 19";
sav(AG_CATEGORY, 2);
sav(AG_SPRITE, asset_get("empty_sprite"));
sav(AG_HURTBOX_SPRITE, hurtbox_spr);
sav(AG_PSEUDO_DYNAMIC, 1);
sav(AG_PD_ITEM, sprite_get("mixels"));
sav(AG_PD_LOC_X, 72);
sav(AG_PD_LOC_Y, 72);
sav(AG_PD_ROT, 0);
sav(AG_NUM_WINDOWS, 5);
var linesArr = string_split(dynamic, '\n');
var linesCount = array_length_1d(linesArr);
swv(1, AG_UP, 0);
swv(1, AG_DOWN, 0);
swv(1, AG_LEFT, 0);
swv(1, AG_RIGHT, 0);
swv(1, AG_ROTATE, 0);
swv(1, AG_IN_FRONT, 0);
swv(1, AG_DIR, 0);
var TIME_IN_FRAMES = 20;
for (var i = 0; i < linesCount; i++) {
    var line = linesArr[i];
    var tmpLineSplit = string_split(line, ':');
    var timerange = string_split(tmpLineSplit[0], '-');
    var codeArr = string_split(tmpLineSplit[1], ',');
    
    var time = real(string_digits(timerange[1])) - real(string_digits(timerange[0]));
    swv(i + 1, AG_WINDOW_LENGTH, time * TIME_IN_FRAMES); 
    swv(i + 1, AG_BODY_CELL, 1); 
    var codeLength = array_length_1d(codeArr);
    for (var j = 0; j < codeLength; j++) {
        var code = codeArr[j];
        // we only support one cell
        code = string_replace_all(code, "cell 1", "");
        // the breaking point where making a parser+AST would have been nice
        // except I'm only supporting 5 commands so whatever
        var codeWords = string_split(code, ' ');
        var keyword = codeWords[0];
        var value = codeWords[1];
        switch (keyword) {
            case "up"   : swv(i + 1, AG_UP,    value); break;
            case "down" : swv(i + 1, AG_DOWN,  value); break;
            case "left" : swv(i + 1, AG_LEFT,  value); break;
            case "right": swv(i + 1, AG_RIGHT, value); break;
            case "rotate": swv(i + 1, AG_ROTATE, value); break;
            default: break;
        }
    }
}



#define sav(a,b)
return set_attack_value(AT_USPECIAL_2, argument0, argument1);

#define swv(a,b,c)
return set_window_value(AT_USPECIAL_2, argument0, argument1, argument2);

#define string_split(str, separator)
var str = argument0;
var separator = argument1;
var count = string_count(separator, str);
var result = array_create(count);
for (var i = 0; i <= count; i++) {
	var pos = string_pos(separator, str);
	var strlen = string_length(str);
	result[i] = string_copy(str, 1, strlen); 
	s = string_copy(str, pos, strlen - pos);
}
return result;
*/