local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
-- local formatting = null_ls.builtins.formatting
-- -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics

-- null_ls.setup({
-- 	debug = false,
-- 	sources = {
-- 		-- formatting.black.with({ extra_args = { "--fast" } }),
-- 		formatting.black.with,
--     diagnostics.flake8,
-- 		formatting.stylua,
-- 	},
-- })

-- require("null-ls").setup({
--     sources = {
--         require("null-ls").builtins.formatting.black,
--         require("null-ls").builtins.diagnostics.flake8,
--         -- require("null-ls").builtins.completion.stylua,
--     },
-- })

null_ls.setup({
	cmd = { "nvim" },
	debounce = 250,
	debug = false,
	default_timeout = 5000,
	diagnostic_config = nil,
	diagnostics_format = "#{m}",
	fallback_severity = vim.diagnostic.severity.ERROR,
	log_level = "warn",
	notify_format = "[null-ls] %s",
	on_attach = nil,
	on_init = nil,
	on_exit = nil,
	root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git"),
	sources = {
		require("null-ls").builtins.formatting.black,
		require("null-ls").builtins.diagnostics.flake8,
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.diagnostics.selene,
	},
	update_in_insert = false,
})
