//css-draw

user_event(12); //phone

var temp_x = x + 8;
var temp_y = y + 9;

var names;
names = ["End of Love","Dreams","Maroon","Viridian","Moonlight","Lonely","Solar","Seafoam","Berry","Tears","Air","Saccharine","Noise","Date","Warrior","Landkon Victory", "Battle"]

var alt_new = get_player_color(player);
var offset;
offset = floor(sin(get_gameplay_time()/14) * 2)
bigRect(temp_x, temp_y + 100 - offset, temp_x + 201, temp_y + 144, c_black, 1);
draw_debug_text(floor(temp_x) + 6, floor(temp_y) + 125 - offset,"Alt "+string(alt_new + 1) + ": "+names[alt_new]);



#define bigRect(x1,y1,x2,y2,color,alpha)
//x1,y1 - topleft

var x1, y1, x2, y2, color;
x1 = argument[0]
y1 = argument[1]
x2 = argument[2]
y2 = argument[3]
color = argument[4]
alpha = argument[5]

draw_primitive_begin(pr_trianglestrip)
draw_vertex_color(x1,y2,color,alpha)
draw_vertex_color(x2,y2,color,alpha)
draw_vertex_color(x1,y1,color,0)
draw_vertex_color(x2,y1,color,0)
draw_primitive_end()