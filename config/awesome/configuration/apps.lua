local filesystem = require("gears.filesystem")
local config_dir = filesystem.get_configuration_dir()
local utils_dir = config_dir .. "utilities/"

return {
	--- Default Applications
	default = {
		--- Default terminal emulator
		quaketerminal = "tilix -q",
		terminal = "alacritty",
		--- Default music client
		music_player = "wezterm start --class music ncmpcpp",
		--- Default code editor
		code_editor = "alacritty -e nvim",
		--- Default web browser
		web_browser = "brave",
		web_browser_2 = "firefox",
		--- Default file manager
		file_manager = "nautilus",
		--- Default network manager
		network_manager = "alacritty -e nmtui",
		--default-pdf-viewer
		pdf_viewer = "evince",
		--default-messanger
		messenger = "telegram-desktop",
		--- Default bluetooth manager
		bluetooth_manager = "blueman-manager",
		--- Default power manager
		power_manager = "xfce4-power-manager",
		--- Default rofi global menu
		app_launcher = "rofi -no-lazy-grab -show drun -modi drun -theme " .. config_dir .. "configuration/rofi.rasi",
	},

	--- List of binaries/shell scripts that will execute for a certain task
	utils = {
		--- Fullscreen screenshot
		full_screenshot = utils_dir .. "screensht full",
		--- Area screenshot
		area_screenshot = utils_dir .. "screensht area",
		--- Color Picker
		color_picker = utils_dir .. "xcolor-pick",
	},
}
