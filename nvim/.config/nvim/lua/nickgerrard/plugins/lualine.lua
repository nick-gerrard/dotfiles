return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        component_separators = { left = "󰅂", right = "󰅁" },
        section_separators = { left= "󰅂", right = "󰅁"},
        globalstatus = true,
      },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch"},
        lualine_c = { {"filename", path=0, symbols = { modified = "●", readonly = " "}}},
        lualine_x = {"filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"},
      },
      inactive_sections = {
        lualine_c = { {"filename", path = 0}},
        lualine_x = { "location"},
      },
      tabline = {
        lualine_a = { "buffers"},
        lualine_z = {"tabs"},
      },
    })
  end,
}
