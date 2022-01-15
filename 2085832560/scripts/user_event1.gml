//// Weight stuffs
/*

/// Original Stat

knockback_adj = 0.90
wave_land_adj = 0.70
max_jump_hsp = 5; 
air_max_speed = 3.5; 
jump_change = 3.5; 
air_accel = .25;
initial_dash_speed = 6.4;
dash_speed = 6

/// Tier3 make the stat changes double


*/

knockback_adj += 0.04
wave_land_adj += 0.02
max_jump_hsp += 0.5
air_max_speed += 0.3
jump_change += 0.1 
air_accel += 0.02
initial_dash_speed += 0.25
dash_speed += 0.25


knockback_adj = clamp(knockback_adj,.9,1.3)

print ("weight loss !")

print ( knockback_adj )          
print ( wave_land_adj)
print ( max_jump_hsp )
print ( air_max_speed )
print ( jump_change )
print ( air_accel )
print ( initial_dash_speed )
print ( dash_speed )