local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local lga_actions = require("telescope-live-grep-args.actions")

local telescope_custom_actions = {}

function telescope_custom_actions._multiopen(prompt_bufnr, open_cmd)
    local picker = action_state.get_current_picker(prompt_bufnr)
    local selected_entry = action_state.get_selected_entry()
    local num_selections = #picker:get_multi_selection()
    if not num_selections or num_selections <= 1 then
        actions.add_selection(prompt_bufnr)
    end
    actions.send_selected_to_qflist(prompt_bufnr)
    vim.cmd("cfdo " .. open_cmd)
end
function telescope_custom_actions.multi_selection_open_vsplit(prompt_bufnr)
    telescope_custom_actions._multiopen(prompt_bufnr, "vsplit")
end
function telescope_custom_actions.multi_selection_open_split(prompt_bufnr)
    telescope_custom_actions._multiopen(prompt_bufnr, "split")
end
function telescope_custom_actions.multi_selection_open_tab(prompt_bufnr)
    telescope_custom_actions._multiopen(prompt_bufnr, "tabe")
end
function telescope_custom_actions.multi_selection_open(prompt_bufnr)
    telescope_custom_actions._multiopen(prompt_bufnr, "edit")
end

require("telescope").setup({
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = " $ ",
		color_devicons = true,

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

		mappings = {
			i = {
				["<C-x>"] = false,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<esc>"] = actions.close,
				--["<C-t>"] = telescope_custom_actions.multi_selection_open_tab,
				["<C-n>"] = function()
					local current_picker = actions.get_current_picker()
					local path = current_picker:get_selection().path
					vim.cmd(string.format('badd %s', path))
					actions.move_selection_next(current_picker)
				end,
			},
		},
	},

	extensions = {
		live_grep_args = {
			auto_quoting = true,

			mappings = {
				i = {
					["<C-j>"] = lga_actions.quote_prompt(),
					["<C-k>"] = lga_actions.quote_prompt({ postfix = " -tperl " }),
					["<C-l>"] = lga_actions.quote_prompt({ postfix = " --glob '!*.xml' --glob '!*.json' --glob '!*.txt' --glob '!*gitignore*' --glob '!*.sql' --glob '!*.html' --glob '!*test*' --glob '!*doc*' --glob '!*.php' --glob '!*mc*' --glob '!*ibutik/admin/verktyg/*'" }),
				}
			}
		}
	}
    --[[
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
	},
    ]]
})

require('telescope').load_extension("live_grep_args")

local M = {}

M.find_me_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

return M
