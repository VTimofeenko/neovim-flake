{ pkgs
, config
, lib
, ...
}:
{
  config = (
    {
      vim.startPlugins = with pkgs.neovimPlugins; [
        todo-comments
      ];

      # Init with default config
      vim.luaConfigRC = ''
        require("todo-comments").setup{}
      '';
    }
  );
}
