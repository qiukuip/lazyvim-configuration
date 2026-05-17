return {
  -- 切换虚拟环境
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      search = {
        miniconda = {
          command = "fd /bin/python$ /Users/longkun/.opt/miniconda3/envs --full-path",
        },
      },
    },
  },

  -- 自动导入提示
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                autoImportCompletions = true,
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                -- diagnosticMode = "openFilesOnly",
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
              }
            }
          }
        }
      }
    }
  }
}
