local lspconfig = require('lspconfig')

-- Настройка pyright
lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
})

-- Настройка rust-analyzer (если вам также нужен Rust)
lspconfig.rust_analyzer.setup({
  settings = {
    ['rust-analyzer'] = {},
  },
})

