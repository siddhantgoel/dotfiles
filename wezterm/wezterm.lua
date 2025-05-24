local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Github (base16)'
config.font = wezterm.font 'Monaco'

config.tab_bar_at_bottom = true

config.window_frame = {
    font = wezterm.font {
        family = 'Monaco',
        weight = 'Bold'
    }
}

config.keys = {
    {
        key = 'd',
        mods = 'CMD',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'd',
        mods = 'CMD|SHIFT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'LeftArrow',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Left',
    },
    {
        key = 'RightArrow',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Right',
    },
    {
        key = 'UpArrow',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Up',
    },
    {
        key = 'DownArrow',
        mods = 'CMD|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Down',
    },
    {
        key = 'i',
        mods = 'CMD|SHIFT',
        action = wezterm.action.PromptInputLine {
            description = 'Enter new name for tab',
            action = wezterm.action_callback(function(window, pane, line)
                if line then
                    window:active_tab():set_title(line)
                end
            end),
        },
    },
}

return config
