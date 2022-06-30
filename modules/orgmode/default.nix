{ pkgs
, config
, lib
, ...
}:
{
  config = (
    {
      vim.startPlugins = with pkgs.neovimPlugins; [
        nvim-orgmode
      ];

      # Init with default config
      vim.luaConfigRC =
        let
          orgmodePath = "~/orgmode";
        in
        ''
          require("orgmode").setup_ts_grammar{}
          require("orgmode").setup({
            org_agenda_files = {'${orgmodePath}/*',},
            org_default_notes_file = '${orgmodePath}/refile.org',
            org_caputre_templates = {
              t = {
                description = 'Task',
                template = '* TODO %?\n  %u',
              },
              m = {
                description = 'Meeting',
                template = '\n* %T %?\n\n  Met with',
              },
            },

          })
        '';
    }
  );
}
