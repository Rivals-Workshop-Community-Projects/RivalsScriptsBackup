//Removes a harmless error from appearing in the debug log due to article inits running before init.
if "lamp_timer" not in obj_stage_main exit;

//Controls the article's animation speed by manuually setting the image_index.
//(Using image_speed doesn't stop the animation when the game is paused).
//While not the best method, this allows for exact control over how long each frames lasts compared to others, as shown here.
if (obj_stage_main.lamp_timer < 20) {
    obj_stage_main.lamp_timer += 1
}

if (obj_stage_main.lamp_timer = 5) {
    image_index = 1
}

if (obj_stage_main.lamp_timer = 10) {
    image_index = 2
}

if (obj_stage_main.lamp_timer = 15) {
    image_index = 3
}

if (obj_stage_main.lamp_timer = 20) {
    image_index = 0
    obj_stage_main.lamp_timer = 1
}

//Gives the article a slight bobbing motion.
x = 800 + (dsin(get_gameplay_time() * 2) * 4);
y = 320 + (dsin(get_gameplay_time() * 3) * 2);