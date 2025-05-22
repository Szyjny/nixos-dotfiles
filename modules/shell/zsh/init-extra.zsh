# Yazi function
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# Overthewire SSH shortcut
function overthewire() {
  local output="$1"
  ssh bandit$output@bandit.labs.overthewire.org -p 2220
}

# C++ Compilation
function cpp() {
  local output="$1"
  local main_file="${1}.cpp"
  shift
  g++ "$main_file" -o "$output" && ./"$output" "$@" && rm ./"$output"
}

# C Compilation
function cc() {
  local output="$1"
  local main_file="${1}.c"
  shift
  g++ "$main_file" "$@" -o "$output" && ./"$output" && rm ./"$output"
}

# CMake-based C++ Compilation
function cppcm() {
  local output="$1"
  local debug=0

  shift
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      -d) debug=1 ;;
    esac
    shift
  done

  if [[ $(basename "$PWD") != "build" ]]; then
   cd ./build
  fi

  cmake ..

  if [[ $debug -eq 1 ]]; then
    make VERBOSE=1
  else
    make
    clear
  fi

  ./"$output"
  cd ..
}

# Rust Compilation
function rc() {
  local output="$1"
  local main_file="${1}.rs"
  shift
  rustc "$main_file" "$@" -o "$output" && ./"$output"
}

# Add music
function mat() {
  pgrep mpd > /dev/null || mpd
  mkdir -p ~/.local/share/mpd/music
  cd ~/.local/share/mpd/music
  spotdl --output . --bitrate 192k "$1" --no-cache
  cd -
  mpc rescan
}

# Eza
function lt() {
  local dir="."
  local lvl=2

  if [[ -d "$1" ]]; then
    dir="$1"
    shift
  fi

  if [[ -n "$1" ]]; then
    lvl="$1"
  fi

  eza --tree --level="$lvl" --long --icons --git "$dir"
}

function ltree() {
  local dir="."
  local lvl=2

  if [[ -d "$1" ]]; then
    dir="$1"
    shift
  fi

  if [[ -n "$1" ]]; then
    lvl="$1"
  fi

  eza --tree --level="$lvl" --icons --git "$dir"
}

# Start new Tmux session
function t() {
  local session_name="${1:-$(basename "$PWD")}"

  if [[ -f "./tmux.sh" && -r "./tmux.sh" ]]; then
    chmod +x ./tmux.sh 2>/dev/null
    tmux new-session -s "$session_name" "bash ./tmux.sh"
  else
    tmux new-session -s "$session_name"
  fi
}

function tmux-new() {
  local session_name="$1"
  if [ -z "$session_name" ]; then
    echo "Użycie: tmux-new <nazwa_sesji>"
    return 1
  fi

  tmux has-session -t "$session_name" 2>/dev/null
  if [ $? -eq 0 ]; then
    echo "Sesja '$session_name' już istnieje. Przełączam..."
  else
    tmux new-session -d -s "$session_name" || return 1
  fi

  tmux switch-client -t "$session_name"
}

fortune ~/devjokes | cowsay -f sus
