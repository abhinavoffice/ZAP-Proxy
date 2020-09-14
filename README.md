# ZAP-Proxy

Docker:
Pull image :
LTB0206984-Mac:/ b0097042$ docker pull owasp/zap2docker-stable

Run docker image:
LTB0206984-Mac:/ b0097042$ docker run -d -u zap -p 8080:8080 -p 8090:8090 -i owasp/zap2docker-stable zap-webswing.sh

Stop container:
LTB0206984-Mac:/ b0097042$ docker stop CONTAINER-ID

Browser url : http://localhost:8080/zap/

Select auto scan:
After loading UI : enter complete url in URL to Attack field and click Attack button. scanning get started.
After complete scan, in manu > Report > Html report : download

ZAP CLI is a ZAP wrapper written in Python. It provides a simple way to do scanning from the command line:
LTB0206984-Mac:/ b0097042$ docker run -i owasp/zap2docker-stable zap-cli quick-scan --self-contained --start-options '-config api.disablekey=true' http://target

Exp:
docker run -i owasp/zap2docker-stable zap-cli quick-scan --self-contained --start-options '-config api.disablekey=true' https://contentapi-preprod.wynk.in/app/v1/content?id=EROSNOW_MOVIE_6909323&isMax=true&appId=MOBILITY&mwTvPack=200292&dt=phone&os=ANDROID&ln=hi&isDth=false&dth=false&bn=30000&experimentId=1


docker run -v $(pwd):/zap/wrk/:rw -t owasp/zap2docker-weekly zap-baseline.py -t https://contentapi-preprod.wynk.in/app/v1/content?id=EROSNOW_MOVIE_6909323&isMax=true&appId=MOBILITY&mwTvPack=200292&dt=phone&os=ANDROID&ln=hi&isDth=false&dth=false&bn=30000&experimentId=1 -g gen.conf -r testreport.html


docker run -v $(pwd):/zap/wrk/:rw -u zap -p 8080:8080 -i owasp/zap2docker-weekly zap-x.sh  -host 0.0.0.0 -port 8080 -config api.addrs.addr.name=.* -config api.addrs.addr.regex=true -last_scan_report /zap/wrk/report.html -session /zap/wrk/newsession -cmd
