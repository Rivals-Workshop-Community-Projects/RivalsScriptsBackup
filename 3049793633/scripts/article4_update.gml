//Removes a harmless error from appearing in the debug log due to article inits running before init.
if "sunflower_timer" not in obj_stage_main exit;

//Controls the article's animation speed by manually setting the image_index.
//(Using image_speed doesn't stop the animation when the game is paused).
//While not the best method, this allows for exact control over how long each frames lasts compared to others, as shown here.
if (obj_stage_main.sunflower_timer < 240) {
    obj_stage_main.sunflower_timer += 1
}

if (obj_stage_main.sunflower_timer = 90) {
    image_index = 1
}

if (obj_stage_main.sunflower_timer = 120) {
    image_index = 2
}

if (obj_stage_main.sunflower_timer = 210) {
    image_index = 3
}

if (obj_stage_main.sunflower_timer = 240) {
    image_index = 0
    obj_stage_main.sunflower_timer = 1
}