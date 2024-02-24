//hitbox_init
has_bolt_trail = false
parried_timer = 0

if attack == AT_FSPECIAL && hbox_num == 1 {
    state = 0
    state_timer = 0
    omen_blade_owner = player_id
    delay_timer = 20
    retract_speed = 0.3
    retract_duration = 4
    //depth = -3
}

if attack == AT_NSPECIAL && hbox_num == 6 {
    //depth = 10
    has_bolt_trail = true
    bolt_trail_col = $ffffad
    bolt_trail_max_w = 8
    bolt_trail_scale_w = 0.5
    
    num_bounces = 1
    prev_vsp = 0
    prev_hsp = 0
    spawn_explosion = false
}

if attack == AT_NSPECIAL && hbox_num == 8 {
    has_bolt_trail = true
    bolt_trail_col = $f07d34
    bolt_trail_max_w = 12
    bolt_trail_scale_w = 0.8
}

if attack == AT_NSPECIAL && hbox_num == 10 {
    has_bolt_trail = true
    bolt_trail_col = $6a0040
    bolt_trail_max_w = 8
    bolt_trail_scale_w = 0.5
}
/*
if attack == AT_USTRONG && hbox_num == 1 {
    has_bolt_trail = true
    bolt_trail_col = $ff0099
    bolt_trail_max_w = 6
    bolt_trail_scale_w = 0.1
}
*/

if has_bolt_trail {
    bolt_holograms = []
    bolt_trail_segments = 16
    bolt_trail_element = [undefined, undefined, 0, bolt_trail_col, bolt_trail_max_w, bolt_trail_scale_w] //x, y, angle, id
    bolt_trail_arr = array_create(bolt_trail_segments, bolt_trail_element)
    bolt_trail_index = 0 //incrementing index
}

