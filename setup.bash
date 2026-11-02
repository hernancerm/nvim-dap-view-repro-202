cd "$(dirname "$0")"

mkdir ./deps/

git clone git@github.com:mfussenegger/nvim-dap.git ./deps/nvim-dap \
  && git -C ./deps/nvim-dap checkout cfa2d58f4537aca6ca83e2de1a0d9f1491121264

git clone git@github.com:igorlfs/nvim-dap-view.git ./deps/nvim-dap-view \
  && git -C ./deps/nvim-dap-view checkout b4486a6e83c45db4712849c09a76ef95b41a2133

git clone git@github.com:mfussenegger/nvim-dap-python.git ./deps/nvim-dap-python \
  && git -C ./deps/nvim-dap-python checkout 1808458eba2b18f178f990e01376941a42c7f93b
