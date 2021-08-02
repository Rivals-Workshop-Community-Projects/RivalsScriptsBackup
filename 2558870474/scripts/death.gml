//death
if  proposed_balance{
    // Balance Change Script:
    user_event(3);
}

charge = 0;

if summon_tracker[0] != noone{
    instance_destroy(summon_tracker[0]);
}

if summon_tracker[1] != noone{
    instance_destroy(summon_tracker[1]);
}