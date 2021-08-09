cd /tmp;
rm prepare_script.zip;
rm -rf scripts-master;

wget https://github.com/haiht24/scripts/archive/master.zip -O prepare_script.zip;
unzip prepare_script.zip;
cd scripts-master;
chmod +x auto-update-source-python-shopping.sh;

echo "...Done. Don't forget Stop python app first";

sh auto-update-source-python-shopping.sh;
