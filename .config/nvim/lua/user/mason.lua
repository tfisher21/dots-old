require("mason").setup()
require("mason-lspconfig").setup(
    {
        ensure_installed = { "sumneko_lua" }
    }
)

require("lspconfig").sumneko_lua.setup({
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
    settings = {

        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})
