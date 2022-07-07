// ==================== GRAFFITI ARTICLE UPDATE  ======================
// destroy if in the air
if free {
    instance_destroy();
    exit;
}

// update drips
if graffiti_drip_timer < graffiti_drip_timer_max {
    graffiti_drip_timer += 1;
}
// ====================================================================
