require("options")
require("plugins")

vim.g.node_host_prog = '~/.npm-global/bin/neovim-node-host'

vim.lsp.start({
    name = 'my-server-name',
    cmd = {'name-of-language-server-executable'},
    root_dir = vim.fs.root(0, {'pyproject.toml', 'setup.py'}),
})
