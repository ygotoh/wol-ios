proc send_wol {mac_str} {
     set mac [binary format H* [string tolower [join [split $mac_str .-:] ""]]]
     set body [binary format c* {0xff 0xff 0xff 0xff 0xff 0xff}]
     for {set i 0} {$i < 16} {incr i} { append body $mac }

     set usock [udp_open]
     fconfigure $usock -translation binary -remote [list 255.255.255.255 9] -broadcast 1
     puts "sending WOL packet to $mac_str ..."
     puts $usock $body
     flush $usock ; close $usock
}

send_wol $argv
