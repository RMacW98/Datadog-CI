echo "Create an admin, create a read-only datadog user"
mongo admin <<'EOF'
use admin
var user = {
  "user" : "admin",
  "pwd" : "admin",
  roles : [
      {
          "role" : "userAdminAnyDatabase",
          "db" : "admin"
},
      "readWriteAnyDatabase"
] }
db.createUser(user);
use admin
db.auth("admin", "admin");
db.createUser({
  "user": "datadog","pwd": "datadog",
  "roles": [
    { role: "read", db: "admin" },
    { role: "clusterMonitor", db: "admin" },
    { role: "read", db: "local" }
] })
exit
EOF
echo "Completed - Create an admin, create a read-only datadog user"
