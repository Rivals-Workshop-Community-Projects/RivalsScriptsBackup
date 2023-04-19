//article1_init
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;
mask_index = sprite_get("anchor_mask");
hp = 10;
parrot = player_id;
destroy = false;
init_x = x;
init_y = y;

// move_random(1,1);
// wind_x = (x % 5) - 3;
// x = init_x;
// y = init_y;
pulling = true;
max_perch_distance = 300;
verlet_count = 5;
verlet_points[verlet_count - 1] = {"x" : x, "y" : y,"locked":true,"broken":false,"oldx":x,"oldy":y, "still" : false};
verlet_points[0] = {"x" : init_x, "y" : init_y,"locked":true,"broken":false,"oldx":init_x,"oldy":init_y, "still" : false};
for (var i = 1; i < verlet_count - 1; i ++)
    verlet_points[i] = {"x" : lerp(init_x,x,i/verlet_count), "y" :lerp(init_y,y,i/verlet_count) ,"locked":false,"broken":false,"oldx":x,"oldy":y, "still" : false};
// verlet_points[4] = {"x" : x+4, "y" : y,"locked":false,"broken":false,"oldx":x,"oldy":y};
// verlet_points[5] = {"x" : x+5, "y" : y,"locked":false,"broken":false,"oldx":x,"oldy":y};
// verlet_points[6] = {"x" : x+6, "y" : y,"locked":false,"broken":false,"oldx":x,"oldy":y};
flair_verlet_point = {"x" : x, "y" :y + 5 ,"locked":false,"broken":false,"oldx":x,"oldy":y, "still" : false}

base_article = noone;
base_x_offset = 0;
base_y_offset = 0;

// mode = 0;
// grab_lx = x;
// grab_ly = y;
_parrot_perch_identifier_ = true;
hp = 300;
last_hbox = noone;
hitstop_remaining = 0;
cut_down = false;
despawn_timer = 0;
strong_timer = 0;
pull_from = AT_DSTRONG;
perch_index = -1; // claim an index
length = 15;
highlight = false;
hit_x = 0;
hit_y = 0;
destroyed = false;

base_proj_following = noone;

sleep_simulation = 0;
base_movement = 0;

var zero_accounted = false;
var _one_accounted = false;
var _two_accounted = false;
var count = 0;
var pl = player_id;
with obj_article2 if other.id != id && player_id == pl && hp > 0 {
    switch perch_index {
        case 0:
            zero_accounted = true;
            break;
        case 1:
            _one_accounted = true;
            break;
        case 2:
            _two_accounted = true;
            break;
    }
}
if zero_accounted == false {
    perch_index = 0;
} else if _one_accounted == false {
    perch_index = 1;
} else if _two_accounted == false {
    perch_index = 2;
} else {
    var d = 0;
    var ref = noone;
    with obj_article2 if other.id != id && player_id == pl && hp > 0 {
        var dx = x - other.x;
        var dy = y - other.y;
        var dist_sq = dx * dx + dy * dy;
        if dist_sq > d {
            d = dist_sq;
            ref = self;
        }
    }
    ref.hp = -5;
    ref.sleep_simulation = 0;
    perch_index = ref.perch_index;
}

flair_color = parrot.perch_color_palettes[get_player_color(parrot.player)][perch_index];