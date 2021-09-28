/// @description Set the dialog variables
// Set big enough negative depth in order to make sure dialog displays on top
depth = -10;

// How far away the dialog container is from the edges of the view
dialog_indentation = 32;

// How far the text is from from the edges of the dialog container
text_indentation = 32;

// How tall the dialog is
dialog_height = 192;

// Text for testing
text[0] = "What a beautiful day!";
text[1] = "Though it does not beat being on the computer all day, gotta tell you.";

// Start at the beginning of the array
text_current = 0;

// Container dimensions adjusted to the camera view
container_x = camera_get_view_x(view_camera[0]) + dialog_indentation;
container_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - dialog_height - dialog_indentation;
container_width = camera_get_view_width(view_camera[0]) - (dialog_indentation * 2);
container_height = dialog_height;

// Maximum text width
text_width = container_width - (text_indentation * 2);
text_x = container_x + text_indentation;
text_y = container_y + text_indentation;

// Which character from the text is currently displayed
char_current = 1;

// How quickly the text is displayed
char_speed = 0.25;

// Wrap it
text[text_current] = scr_string_wrap(text[text_current], text_width);

// How long it takes for the text to disappear
delay_overload = 300;
auto_countdown = delay_overload;