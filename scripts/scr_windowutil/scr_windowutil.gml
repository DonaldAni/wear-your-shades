function get_width() {
	if os_type != os_windows then return browser_width
	else return window_get_width()
}

function get_height() {
	if os_type != os_windows then return browser_height
	else return window_get_height()
}