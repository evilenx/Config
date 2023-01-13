return function(use)
  use({
    "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end
  })
end

return function(use)
  use({
    "EdenEast/nightfox.nvim" -- Packer
  })
end



