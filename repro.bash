cd "$(dirname "$0")"

OUT=evidence.txt
SESSION=dap-view-202

tmux kill-session -t "$SESSION" 2>/dev/null
tmux new-session -d -s "$SESSION" -x 78 -y 24 -c "$PWD"

send() {
    tmux send-keys -t "$SESSION" "$@"
}

capture() {
    {
        echo "===== $1 ====="
        tmux capture-pane -p -t "$SESSION"
        echo
    } >> "$OUT"
}

: > "$OUT"

# Step 4
send "bash start.bash" Enter
sleep 2
send ":edit scratch.py" Enter
sleep 1

# Step 5
send ":DapViewOpen" Enter
sleep 1

# Step 6
send ':lua require("dap").continue()' Enter
sleep 1
send "1" Enter
sleep 4
capture "After step 6 (first run)"

# Steps 7 and 8
send ":DapViewClose" Enter
sleep 1
send ":DapViewOpen" Enter
sleep 1

# Step 9
send ':lua require("dap").continue()' Enter
sleep 1
send "1" Enter
sleep 4
capture "After step 9 (second run)"

tmux kill-session -t "$SESSION"
