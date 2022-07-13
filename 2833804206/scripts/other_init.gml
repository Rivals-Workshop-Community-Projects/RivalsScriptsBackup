//other_init.gml
is_r2 = false

r2_oiled = false //whether covered in oil
r2_oil_timer = 0 //duration in frames until oil wears off
r2_oil_timer_increment = false //if 2 or more r2s are in match, wont cause increment to activate twice

r2_burning = false //oiled then got hit by a fire move
r2_burning_timer = 0 
r2_burning_delay = 20 //number of frames of hitstun while burning before burn hitbox comes out

r2_grabbed = false