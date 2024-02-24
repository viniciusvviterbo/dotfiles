-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local config_path = '/home/vinicius/.config/lvim/'

-- Set yank operation to copy to system clipboard
vim.opt.clipboard:append("unnamedplus")

dofile(config_path .. 'remap.lua')

dofile(config_path .. 'which_key.lua')

dofile(config_path .. 'toggle_term.lua')


-- local on_attach = function(client)
--   require'completion'.on_attach(client)
-- end
--
-- lvim.lsp.['rust_analyzer'].setup({
--   on_attach=on_attach,
--   settings = {
--     ["rust-analyzer"] = {
--       imports = {
--         granularity = {
--           group = "module",
--         },
--         prefix = "self",
--       },
--       cargo = {
--         buildScripts = {
--           enable = true,
--         },
--       },
--       procMacro = {
--         enable = true
--       },
--     }
--   }
-- })
