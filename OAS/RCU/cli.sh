bin=/u01/app/Oracle/Middleware/Oracle_Home/oracle_common/bin/rcu

edit=vi
if code -v; then
  edit=code
fi

configure() {
  file=~/.rcu/rcuResponseFile.properties
  if [ ! -f $file ]; then
    $bin -silent -generateResponseFile # -silent is must
  fi
  $edit $file
}
create() {
  echo $password | $bin -silent -createRepository -connectString $connectString -dbUser sys -dbRole sysdba -schemaPrefix ${schemaPrefix:-DEV} -useSamePasswordForAllSchemaUsers true -useDBPasswordAsSchemaPassword true -component STB -component IAU_APPEND -component OPSS -component IAU -component BIPLATFORM -component MDS -component IAU_VIEWER -component WLS $@
}
help() {
  $bin -h
}
$@
