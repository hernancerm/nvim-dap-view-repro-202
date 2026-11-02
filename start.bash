CMD=$(cat << 'EOF'
set runtimepath+=./deps/nvim-dap/
source ./deps/nvim-dap/plugin/dap.lua
set runtimepath+=./deps/nvim-dap-view/
source ./deps/nvim-dap-view/plugin/dap-view.lua
set runtimepath+=./deps/nvim-dap-python/
lua require("dap-view").setup({ winbar = { default_section = "console", sections = { "console", }, }, }); require("dap-python").setup("python3")
EOF
)

nvim --clean -c "$CMD"
