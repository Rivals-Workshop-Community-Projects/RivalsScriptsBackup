// other_init will initialize variables or run checks for other players.

/* RIP internal lockout system -- you were so young...
// bubble lockout variable
with oPlayer if "hey_its_me" in self { // remember to change this to check for url
    variable_instance_set(other, `bubble_lockout_${player}`, 0);
}
*/