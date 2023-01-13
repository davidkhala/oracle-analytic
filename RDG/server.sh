view-endpoint(){
    echo "URL: http://${host}:${hostPort:-8080}/obiee/config.jsp"
}
view-config(){
    cat silentInstall.response
}
start() {
    $Oracle_Home/domain/bin/startJetty.sh
}
cd-drivers(){
    cd $Oracle_Home/domain/jettybase/thirdpartyDrivers/
}
stop() {
    $Oracle_Home/domain/bin/stopJetty.sh
}
status() {
    $Oracle_Home/domain/bin/status.sh
    curl http://localhost:8080/obiee/javads?status
}
install() {
    ./DataGateway_Linux64.bin -silent -responseFile ./silentInstall.response -invPtrLoc ./oraInst.loc
}

$@
