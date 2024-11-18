-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    md = function(path, bufnr)
      --return the filetype, and a function that sets variables
      return "markdown", function()
        --set variables
        vim.opt.wrap = true
      end
    end,
  },
  --enable linewrap for latex files
  tex = function(path, bufnr)
    return "tex", function()
      vim.opt.wrap = true
    end
  end,

  -- filename = {
  --   ["Foofile"] = "fooscript",
  -- },
  -- pattern = {
  --   ["~/%.config/foo/.*"] = "fooscript",
  -- },
}
