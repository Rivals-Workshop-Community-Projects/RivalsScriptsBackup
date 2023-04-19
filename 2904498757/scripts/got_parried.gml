if attack == AT_JAB && window < 4 {
    was_parried = false;
    jab_parried = true;
}

// stop mach mode
nspec_ai_cur = 0;
nspec_mach_timer = 0;
