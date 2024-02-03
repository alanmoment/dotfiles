# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/devops-workspace"

# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "k8s-manifests"

# Split window into panes.
split_v 20

run_cmd "cd /Users/alan/Documents/Workspaces/devops/k8s-manifests" 1
run_cmd "nvim" 1
run_cmd "\e" 1
run_cmd "cd /Users/alan/Documents/Workspaces/devops/k8s-manifests" 2
run_cmd "clear" 2
# Run commands.
# Paste text
# send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

new_window "terraforms"
split_v 20
run_cmd "cd /Users/alan/Documents/Workspaces/devops/terraforms" 1
run_cmd "nvim" 1
run_cmd "\e" 1
run_cmd "cd /Users/alan/Documents/Workspaces/devops/terraforms" 2
run_cmd "clear" 2

# Set active pane.
# select_pane 1
select_window 1
select_pane 1
