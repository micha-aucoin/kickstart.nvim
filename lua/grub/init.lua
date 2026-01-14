require 'grub.set'
require 'grub.remap'
require 'grub.lazy'

vim.keymap.set('n', '<leader>pv', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
