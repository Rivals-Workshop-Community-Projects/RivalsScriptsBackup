// unload.gml

//=================================================
// RE-ASSIGN "PRIME" SNAKE
//=================================================

if (sna_prime) {                                                                // If we're the "prime" Snake...
    // Assign One Snake as the "Prime" Snake
    var _prime_is_assigned = false;
    with (oPlayer){
        if (self == other) continue;                                            // Ignore self.
        if ("sna_prime" not in self) continue;									// Skip non-Snake players.
    	
    	if (_prime_is_assigned)													// If a player has already been assigned as the "prime" Snake...
    		sna_prime = false;													// Set the current Snake as NOT the "prime" Snake.
    	else {																	// If no player has been assigned as the "prime" Snake...
    		sna_prime = true;													// Assign the current Snake as the "prime" Snake.
    		_prime_is_assigned = true;											// Tell the loop that a "prime" Snake has already been assigned.
    	}
    	
    }
}