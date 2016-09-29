add_lunch_combo omni_delos3geur-userdebug
function multirom_delos3geur
{
lunch omni_delos3geur-userdebug
mka -j4 recoveryimage multirom_zip
cp device/samsung/delos3geur/META-INF.zip out/target/product/delos3geur/META-INF.zip 
cd out/target/product/delos3geur/
unzip META-INF.zip 
rm META-INF.zip 
zip multirom-$(date +%Y%m%d)-3.0.28-UNOFFICIAL-delos3geur.zip -r recovery.img -r META-INF
rm -rf META-INF
cd ../../../../
}
