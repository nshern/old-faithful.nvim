local M = {}

M.order = {
	"OldFaithfulDarkBlue",
	"OldFaithfulDarkCyan",
	"OldFaithfulDarkGreen",
	"OldFaithfulDarkMagenta",
	"OldFaithfulDarkRed",
	"OldFaithfulDarkYellow",
	"OldFaithfulLightBlue",
	"OldFaithfulLightCyan",
	"OldFaithfulLightGreen",
	"OldFaithfulLightMagenta",
	"OldFaithfulLightRed",
	"OldFaithfulLightYellow",
	"OldFaithfulLightGrey1",
	"OldFaithfulLightGrey2",
	"OldFaithfulLightGrey3",
	"OldFaithfulLightGrey4",
	"OldFaithfulDarkGrey4",
	"OldFaithfulDarkGrey3",
	"OldFaithfulDarkGrey2",
	"OldFaithfulDarkGrey1",
}

M.old_faithful = {
	OldFaithfulDarkBlue = {
		xterm = "DeepSkyBlue4_24",
		index = 24,
		hex = "#005f87",
	},
	OldFaithfulDarkCyan = {
		xterm = "Turquoise4",
		index = 30,
		hex = "#008787",
	},
	OldFaithfulDarkGreen = {
		xterm = "DarkGreen",
		index = 22,
		hex = "#005f00",
	},
	OldFaithfulDarkMagenta = {
		xterm = "DeepPink4_53",
		index = 53,
		hex = "#5f005f",
	},
	OldFaithfulDarkRed = {
		xterm = "DarkRed_52",
		index = 52,
		hex = "#5f0000",
	},
	OldFaithfulDarkYellow = {
		xterm = "Orange4_58",
		index = 58,
		hex = "#5f5f00",
	},
	OldFaithfulLightBlue = {
		xterm = "CornflowerBlue",
		index = 69,
		hex = "#5f87ff",
	},
	OldFaithfulLightCyan = {
		xterm = "DarkTurquoise",
		index = 44,
		hex = "#00d7d7",
	},
	OldFaithfulLightGreen = {
		xterm = "SpringGreen3_41",
		index = 41,
		hex = "#00d75f",
	},
	OldFaithfulLightMagenta = {
		xterm = "MediumPurple1",
		index = 141,
		hex = "#af87ff",
	},
	OldFaithfulLightRed = {
		xterm = "IndianRed1_203",
		index = 203,
		hex = "#ff5f5f",
	},
	OldFaithfulLightYellow = {
		xterm = "Orange1",
		index = 214,
		hex = "#ffaf00",
	},
	OldFaithfulLightGrey1 = {
		xterm = "Grey93",
		index = 255,
		hex = "#eeeeee",
	},
	OldFaithfulLightGrey2 = {
		xterm = "Grey89",
		index = 254,
		hex = "#e4e4e4",
	},
	OldFaithfulLightGrey3 = {
		xterm = "Grey78",
		index = 251,
		hex = "#c6c6c6",
	},
	OldFaithfulLightGrey4 = {
		xterm = "Grey62",
		index = 247,
		hex = "#9e9e9e",
	},
	OldFaithfulDarkGrey4 = {
		xterm = "Grey30",
		index = 239,
		hex = "#4e4e4e",
	},
	OldFaithfulDarkGrey3 = {
		xterm = "Grey19",
		index = 236,
		hex = "#303030",
	},
	OldFaithfulDarkGrey2 = {
		xterm = "Grey7",
		index = 233,
		hex = "#121212",
	},
	OldFaithfulDarkGrey1 = {
		xterm = "Grey3",
		index = 232,
		hex = "#080808",
	},
}

M.colors = {}

for name, color in pairs(M.old_faithful) do
	M.colors[name] = color.hex
end

function M.apply_color_highlights()
	for _, name in ipairs(M.order) do
		local color = M.old_faithful[name]
		vim.api.nvim_set_hl(0, name, { fg = color.hex })
	end
end

return M
