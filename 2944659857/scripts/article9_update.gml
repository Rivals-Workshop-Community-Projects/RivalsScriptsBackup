if get_gameplay_time() < 120 { exit; }

mob_spawning = false;
var mob_count = 0;
with obj_stage_article if get_article_script(self) <= 3 {
    mob_count += 1;
    if state == PS_SPAWN { other.mob_spawning = true; }
}

var r_ind = 0;
with oPlayer {
    r_ind += x;
}
r_ind = floor(r_ind % 200);
if get_gameplay_time() % 240 == 0 && mob_count < 3 {
    var a = 1;
    switch random_func_2(r_ind, 5, true) {
        case 0: case 1: a = 1; break; // goomba odds 2/5
        case 2: case 3: a = 2; break; // koopa odds 2/5
        case 4: a = 3; break; // spiny odds 1/5
    }
    var p = random_func_2(0, 4, true);
    var m = instance_create(p_coords[p][0], p_coords[p][1], "obj_stage_article", a);
    m.spr_dir = (p % 2 == 0) ? 1 : -1;
}
