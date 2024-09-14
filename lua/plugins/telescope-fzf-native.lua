-- overrides some defaults from LazyVim
-- see https://github.com/LazyVim/LazyVim/blob/3dbace941ee935c89c73fd774267043d12f57fe2/lua/lazyvim/plugins/extras/editor/telescope.lua
local have_cmake = vim.fn.executable("cmake") == 1

return {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  enabled = have_cmake,
}
