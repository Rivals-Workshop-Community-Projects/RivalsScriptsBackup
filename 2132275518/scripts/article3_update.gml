//
image_index += 16 / 60;
if (image_index >= image_number - 1) {
    instance_destroy();
    exit;
}