# WOL-ios

## Install

```
Router# copy tftp://<tftpd-address>/wol.tcl flash:/wol.tcl
```

## Use

use as CLI command.

```
Router# configure terminal
Router(config)# alias exec wol-somehost tclsh wol.tcl aa.bb.cc.dd.ee.ff
Router(config)# tclquit
Router# wol-somehost
```

use as tcl library.
```
Router# tclsh
Router(tcl)# source wol.tcl
Router(tcl)# send_wol aa.bb.cc.dd.ee.ff
```
can send WOL to some nodes, too.
```
Router(tcl)# send_wol aa.bb.cc.11.11.11 aa.bb.cc.22.22.22 aa.bb.cc.33.33.33
```

## License

Public Domain.
