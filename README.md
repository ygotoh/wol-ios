# WOL-ios

## Install

```
Router# copy tftp://<tftpd-address>/wol.tcl flash:/wol.tcl
```

## Use

```
Router(config)# alias exec wol-somehost tclsh wol.tcl aa.bb.cc.dd.ee.ff
Router(config)# exit
Router# wol-somehost
```

## License

Public Domain.
