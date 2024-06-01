require("options")
require("plugins")

-- Changes location of global node.js config depending on hostname
if vim.fn.hostname() ~= "linuxmint" then
    vim.g.node_host_prog = '~/.npm-global/bin/neovim-node-host'
else
    vim.g.node_host_prog = '/usr/local/bin/neovim-node-host'
end
