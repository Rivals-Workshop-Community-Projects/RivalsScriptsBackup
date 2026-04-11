if (fish_timer < 40) {
    fish_timer += 1
}

if (fish_timer = 10) {
    image_index = 1
}

if (fish_timer = 20) {
    image_index = 2
}

if (fish_timer = 30) {
    image_index = 3
}

if (fish_timer = 40) {
    image_index = 0
    fish_timer = 0
}

//Edits the article's position when called or reset.
//A negative value like this goes from right to left, remove the - to go the other way
hsp = 1

//If you swap the directions, this will need changed. Switch your two X values around and change the <= to >=
//If you want more delay before it loops, make the values farther apart!
if (x >= 1400) {
    hsp = 0
    x = 16
}