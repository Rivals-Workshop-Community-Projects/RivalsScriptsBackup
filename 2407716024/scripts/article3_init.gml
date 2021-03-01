//article3_init.gml
//spring
state = 0;
state_timer = 0;
destroy = 0;
spring_used = 0;
sprite_index = sprite_get("spring"); //placeholder
image_index = 0;

spring_jump_speed = 14; //higher number = higher jump

//delete other springs.
with (obj_article3) {
    if (player_id != other.player_id || id == other.id || state >= 3) continue;
    state = 2;
    state_timer = 999;
}

//below code lets peacock have more than one spring active at a time. above code lets her have just one spring.
var spring_to_delete = noone;
var spring_to_delete_score = -1;
var spring_count = 0;
with (obj_article3) {
    if (player_id != other.player_id || id == other.id || state >= 3) continue;
    spring_count++;
    var this_spring_score = (state * 1000 + state_timer);
    if (this_spring_score > spring_to_delete_score) {
        spring_to_delete = id;
        this_spring_score = spring_to_delete_score;
    }
}
if (spring_count >= 2) {
    with (spring_to_delete) {
        state = 2;
        state_timer = 999;
    }
}