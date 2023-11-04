var temp_x = floor(x + 8);
var temp_y = floor(y + 9);
var max_timer = 30;

if "current_alt" not in self {
    current_alt = 0;
    timer = max_timer;
}

var alt_name = [
    "Napstablook",
    "Fiery",
    "Freezing",
    "Spooky",
    "Echo",
    "Cosmic",
    "Mettaton",
    "Mad Dummy",
    "Shuppet",
    "Dark Matter",
    "Mad Mew Mew",
    "Marie",
    "Palossand"
    ]

var current_player = get_player_color(player);

if current_alt != current_player {
    timer = 0;
    current_alt = current_player
}

var slot = 7
var col = make_color_rgb( get_color_profile_slot_r(current_player, slot), get_color_profile_slot_g(current_player, slot), get_color_profile_slot_b(current_player, slot) )

//gpu_set_blendmode(bm_add)
bigRect(temp_x + 8, temp_y + 114, temp_x + 80, temp_y + 136, col, min(timer, 10)/10 )
//gpu_set_blendmode(bm_normal)

draw_debug_text(temp_x + 12 + floor(ease_quartOut(40, 0, timer, max_timer)), temp_y+120,alt_name[current_player])
timer = min(max_timer, timer + 1);


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
draw_vertex_color(x2,y2,color,0)
draw_vertex_color(x1,y1,color,alpha)
draw_vertex_color(x2,y1,color,0)
draw_primitive_end()