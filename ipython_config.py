
# my ipython config. Should be placed in ~/.ipython/profile_default/ipython_config.py
c = get_config()

# loading autoreload extenstion
c.InteractiveShellApp.extensions = [
    'autoreload'
]

# setting autoreload for all extensions
c.InteractiveShellApp.exec_lines = [
    '%autoreload 2'
]

# no more confirm exit
c.TerminalInteractiveShell.confirm_exit = False

# setting vi mode to default
c.TerminalInteractiveShell.editing_mode = 'vi'

# testing custom vi keybinding
from prompt_toolkit import prompt
from prompt_toolkit.filters import Condition
from prompt_toolkit.key_binding.manager import KeyBindingManager
from prompt_toolkit.keys import Keys
from prompt_toolkit.token import Token
from prompt_toolkit.enums import EditingMode

