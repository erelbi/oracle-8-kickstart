# oracle-8-kickstart
MedianovaOS KS

 mkisofs -joliet-long -T -V 'OL-8-7-0-BaseOS-x86_64' -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e images/efiboot.img -no-emul-boot -R -m TRANS.TBL -o /tmp/mn.iso .
