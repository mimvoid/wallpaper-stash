{ ... }:

{
  programs.nixvim.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>";
      action = "<nop>";
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
    }
    {
      mode = "n";
      key = "<leader>g";
      action = "+git";
    }
    {
      mode = ["n" "v"];
      key = "<leader>d";
      action = "+debug";
    }
    {
      mode = ["n" "v"];
      key = "<leader>t";
      action = "+test";
    }
    # Tabs
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>tabnew<CR>";
      options = {
        silent = true;
        desc = "New Tb";
      };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>tabclose<CR>";
      options = {
        silent = true;
        desc = "Close Tab";
      };
    }
    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>tabnext<CR>";
      options = {
        silent = true;
        desc = "Move to next tab";
      };
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>tabprevious<CR>";
      options = {
        silent = true;
        desc = "Move to the previous tab";
      };
    }

    # Windows
    {
      mode = "n";
      key = "<leader>j";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }
    {
      mode = "n";
      key = "<leader>l";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-W>h";
      options = {
        silent = true;
        desc = "Move to window left";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-W>l";
      options = {
        silent = true;
        desc = "Move to window right";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to window above";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to window below";
      };
    }

    # Nvimtree
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>NvimTreeFocus<CR>";
    }
  ];
}
