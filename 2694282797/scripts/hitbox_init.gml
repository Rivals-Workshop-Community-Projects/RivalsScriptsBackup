//a

if attack == AT_NSPECIAL && hbox_num == 1 {
    pres_explode_timer = 0;
    pres_explode_hits = 0;
    pres_explode_min_time = 240;
    pres_explode_min_hits = 5;
    pres_should_explode = false;
    being_held = false;
}
if attack == AT_DSPECIAL && hbox_num == 2 {
    being_held = false;
}
