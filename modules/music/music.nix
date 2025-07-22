{ pkgs, config, ... }:

let
  mpdDir = "${config.home.homeDirectory}/.local/share/mpd";
in {
  home.packages = with pkgs; [
    mpd
    ncmpcpp
    mpc-cli
    spotdl
    ffmpeg
  ];

  # Konfiguracja MPD
  home.file.".config/mpd/mpd.conf".text = ''
    music_directory    "${mpdDir}/music"
    playlist_directory "${mpdDir}/playlists"
    db_file            "${mpdDir}/database"
    log_file           "${mpdDir}/log"
    pid_file           "${mpdDir}/pid"
    state_file         "${mpdDir}/state"

    bind_to_address    "localhost"
    port               "6600"

    audio_output {
        type            "pulse"
        name            "PulseAudio Output"
    }

    audio_output {
        type            "fifo"
        name            "Visualizer"
        path            "/tmp/mpd.fifo"
        format          "44100:16:2"
    }
  '';

  # Konfiguracja ncmpcpp
  home.file.".config/ncmpcpp/config".text = ''
    mpd_host = "localhost"
    mpd_port = "6600"

    visualizer_output_name = "Visualizer"
    visualizer_in_stereo = yes
  '';
}

