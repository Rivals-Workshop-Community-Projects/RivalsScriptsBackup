torren_speedforce = -1

if (attack == AT_NSPECIAL) {
    
      if "speeddisk" in self {
  	if (instance_exists(speeddisk)) {
    speeddisk.state = 4
   // move_cooldown[AT_NSPECIAL] = 120

  	} }
  	
  	
} else {
    
     if "speeddisk" in self {
  	if (instance_exists(speeddisk)) {
    speeddisk.state = 1

  	} }
    
}