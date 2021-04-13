local cmd = vim.cmd

cmd [[augroup lsp]]
cmd [[autocmd!]]
cmd [[autocmd FileType scala,sbt lua require("metals").initialize_or_attach(metals_config)]]
cmd [[augroup end]]

local metals_config = require('metals').bare_config

metals_config.settings = {
    showImplicitArguments = true;
    --javaHome = ""
}

