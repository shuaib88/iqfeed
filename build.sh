mkdir -p app
chmod +x run-iqfeed
cp iqfeed.conf app/
cp run-iqfeed app/
cp -rf wine-root app/
chcon -Rt svirt_sandbox_file_t app
docker build -t ncllc/iqfeed .

