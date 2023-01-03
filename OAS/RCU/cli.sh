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
  # TODO WIP
  echo $password | $bin -silent -createRepository -connectString $connectString -dbUser sys -dbRole sysdba \
   -schemaPrefix ${schemaPrefix:-DEV} -component MDS -component STB\ 
    $@
}
help() {
  $bin -h
}
$@
