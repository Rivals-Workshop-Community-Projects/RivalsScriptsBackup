//dummy viselle sprite
uses_shader = true;
hitboxes = [];//stores the hitbox id(s) of the attack
windows = [];//the windows to traverse
window = 0;//this is the INDEX of the array to read from, not the traditional window value
window_timer = 0;
framed = false;//used for death animation
storedAttack = 0;
charge = 0;//set from player