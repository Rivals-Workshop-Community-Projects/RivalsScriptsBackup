//Removes a harmless error from appearing in the debug log due to article inits running before init.
if "alubas_timer" not in obj_stage_main exit;

//Controls the article's animation speed by manuually setting the image_index.
//(Using image_speed doesn't stop the animation when the game is paused).
//While not the best method, this allows for exact control over how long each frames lasts compared to others.
if (obj_stage_main.alubas_timer < 215) {
    obj_stage_main.alubas_timer += 1
}

if (obj_stage_main.alubas_timer = 100) {
    image_index = 1
}

if (obj_stage_main.alubas_timer = 105) {
    image_index = 2
}

if (obj_stage_main.alubas_timer = 110) {
    image_index = 3
}

if (obj_stage_main.alubas_timer = 115) {
    image_index = 0
}

if (obj_stage_main.alubas_timer = 215) {
    obj_stage_main.alubas_timer = 1
}

if (x >= 1264) {
    x = 16
}