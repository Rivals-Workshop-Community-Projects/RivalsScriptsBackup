if (state_timer <= target_time) {
    state_timer ++;
    
    y = ease_expoOut(-16, target_y, state_timer, target_time);
    y = round(y / 2) * 2;
}