# pemissions
Recursively save existing file permissions and restore them


Lets be honest, when trying to resolve outages we often change persmission in the heat of the moment trying to quickly bug fix.

This lets you store the existing persmissions quickly, then restore them once you figure out what has gone wrong.

Put this file in the directory tree of where you are working

chmod +x permissions.sh

./permissions.sh

select save to save the initial state, and restore to set them back to the initial saved state.
