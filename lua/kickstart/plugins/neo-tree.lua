-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- не обязательно, но рекомендуется
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { ';', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        width = '25%',
        mappings = {
          ['\\'] = 'close_window',
          [';'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
        },
      },
      -- Добавляем кастомную сортировку
    },
    default_component_configs = {
      git_status = {
        symbols = {
          -- Иконки для состояний Git
          added = '✚', -- Добавленный файл
          deleted = '✖', -- Удаленный файл
          modified = '', -- Измененный файл
          renamed = '󰁕', -- Переименованный файл
          untracked = 'U', -- Неотслеживаемый файл
          ignored = '◌', -- Игнорируемый файл
          unstaged = '󰄱', -- Неотслеживаемые изменения
          staged = '', -- Отслеживаемые изменения
          conflict = '', -- Конфликт слияния
        },
      },
    },
  },
}
