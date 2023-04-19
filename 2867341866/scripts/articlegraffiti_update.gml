// destroy if in the air
if free {
    instance_destroy();
    exit;
}

// update drips
if drip_timer < drip_timer_max {
    drip_timer += 1;
}