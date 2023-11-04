if "wood_mode" not in obj_stage_main exit;

//Basic Mode - Y
if (obj_stage_main.wood_mode = 1) {
if (obj_stage_main.wood_state = 1) {
    y = 272
    if (obj_stage_main.wood_timer = 600) {
        obj_stage_main.wood_state = 2
    }
}

if (obj_stage_main.wood_state = 2) {
    vsp = 1
    if (y = 400) {
        obj_stage_main.wood_state = 3
        obj_stage_main.wood_timer = 1
        y = 400
        vsp = 0
    }
}

if (obj_stage_main.wood_state = 3) {
    y = 400
    if (obj_stage_main.wood_timer = 600) {
        obj_stage_main.wood_state = 4
    }
}

if (obj_stage_main.wood_state = 4) {
    vsp = -1
    if (y = 272) {
        obj_stage_main.wood_state = 1
        obj_stage_main.wood_timer = 1
        y = 272
        vsp = 0
    }
}

if (obj_stage_main.wood_timer < 600) {
    obj_stage_main.wood_timer += 1
}
}

// Aether Mode - X
if (obj_stage_main.wood_mode = 2) {
if (obj_stage_main.wood_state = 1) {
    x = 736
    if (obj_stage_main.wood_timer = 600) {
        obj_stage_main.wood_state = 2
    }
}

if (obj_stage_main.wood_state = 2) {
    hsp = -1
    if (x = 416) {
        obj_stage_main.wood_state = 3
        obj_stage_main.wood_timer = 1
        x = 416
        hsp = 0
    }
}

if (obj_stage_main.wood_state = 3) {
    x = 416
    if (obj_stage_main.wood_timer = 600) {
        obj_stage_main.wood_state = 4
    }
}

if (obj_stage_main.wood_state = 4) {
    hsp = 1
    if (x = 736) {
        obj_stage_main.wood_state = 1
        obj_stage_main.wood_timer = 1
        x = 736
        hsp = 0
    }
}

if (obj_stage_main.wood_timer < 600) {
    obj_stage_main.wood_timer += 1
}
}