//ai_update.gml

with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

//CPU fight mode check
if (get_training_cpu_action() == CPU_FIGHT) cpu_fight_time ++;
else cpu_fight_time = 0;

target_dist = point_distance(x, y, ai_target.x, ai_target.y);
target_angle = point_direction(x, y-char_height/2, ai_target.x, ai_target.y-ai_target.char_height/2);

//recovery logic
if (ai_recovering)
{
    //recovery code here
}

//fight logic
if (cpu_fight_time >= 0)
{
    //facing target check
    target_face = (x > ai_target.x && spr_dir == -1 || x < ai_target.x && spr_dir == 1);
}




//i'm using this item stuff ignore this
/*
special_pressed = true;
left_down = true;
spr_dir = -1;