/// @description Variables
button_text = "";
is_pressed = false;

// Text colors
button_text_color = make_colour_rgb(234, 224, 221);
shadow_text_color = make_colour_rgb(89, 77, 77);

// Set sprite
sprite_index = spr_menu_button;

// Sprite is animated, stop it and switch to first inactive state
image_speed = 0;
image_index = 0;

// Double clicking prevention
double_click_prevention = 0;

// Appearance
alpha_image = 0;
transition_speed = 0.025;

// Font indentation fix for HTML5
font_indentation = -1;

// Checks whether the button can be used or not
is_selectable = true;