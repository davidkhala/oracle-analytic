bin=/u01/app/Oracle/Middleware/Oracle_Home/oracle_common/bin/rcu -silent

configure() {
  vi ~/.rcu/rcuResponseFile.properties
}
$@

