//hitbox_init

timer = 0

if attack == AT_FTHROW {
    trail_segments = 8
    trail_element = [undefined, undefined, 0] //x, y, angle
    trail_arr = array_create(trail_segments, trail_element)
    trail_index = 0 //incrementing index
}