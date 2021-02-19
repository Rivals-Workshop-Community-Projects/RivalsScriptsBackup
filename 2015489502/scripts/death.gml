//armor_timer = 0;

uspecials_used = 0;
fspecials_used = 0;
airdashes_used = 0;

bike = false;
if instance_exists(mybike) mybike.shoulddie = true;

ball_charge = 0;

bike_cooldown = clamp(bike_cooldown, 0, bike_cooldown_min + 1)
ball_cooldown = 0;