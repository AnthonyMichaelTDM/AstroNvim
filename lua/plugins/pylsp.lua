-- Configure pylsp

return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      -- enable servers that you already have installed without mason
      servers = {
        "pylsp"
      },
    },
  }
}