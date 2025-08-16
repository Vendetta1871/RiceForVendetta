#!/bin/bash

bar="▁▂▃▄▅▆▇█"

# bar="▁▂▃▃▅▆▇▉"

config_file="/tmp/waybar_cava_config"

cat > $config_file <<EOL
[general]
bars = 10

[input]
method = pulse
source = auto

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
EOL

/usr/bin/stdbuf -oL cava -p $config_file | while read -r line; do
    clean_line="${line//;/}" # удаляем все точки с запятой
    output="$clean_line"
    for ((i=0; i<${#bar}; i++)); do
        output="${output//${i}/${bar:i:1}}"
    done
    echo "$output"
done 2>/dev/null
