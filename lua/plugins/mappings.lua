return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { desc = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          ["<Leader>sf"] = { "<cmd>Telescope find_files<cr>", desc = "Telescope find_files" },
          ["<Leader>st"] = { "<cmd>Telescope live_grep<cr>", desc = "Telescope live_grep" },
          ["<Leader>lj"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next diagnostic" },
          ["<Leader>lk"] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev diagnostic" },
          ["L"] = { "<cmd>bn<cr>" },
          ["H"] = { "<cmd>bp<cr>" },
          ["<Leader>gs"] = { "<cmd>Gitsigns stage_hunk()<cr>", desc = "Stage hunk" },
          ["<Leader>gp"] = { "<cmd>Gitsigns preview_hunk()<cr>", desc = "Preview hunk" },
          ["<Leader>gu"] = { "<cmd>Gitsigns undo_stage_hunk()<cr>", desc = "Undo staged hunk" },
          ["<Leader>gl"] = { "<cmd>Gitsigns blame_line()<cr>", desc = "Blame" },
          ["<Leader>go"] = { "<cmd>Telescope git_status<cr>", desc = "Open changed files" },
          ["<Leader>gj"] = {
            "<cmd>Gitsigns next_hunk<cr>",
            desc = "Next hunk",
          },
          ["<Leader>gk"] = {
            "<cmd>Gitsigns prev_hunk<cr>",
            desc = "Prev hunk",
          },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
