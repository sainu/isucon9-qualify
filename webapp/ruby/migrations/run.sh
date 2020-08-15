# db container の中で実行する
export MYSQL_HOST=${MYSQL_HOST:-127.0.0.1}
export MYSQL_PORT=${MYSQL_PORT:-3306}
export MYSQL_USER=${MYSQL_USER:-isucari}
export MYSQL_DBNAME=${MYSQL_DBNAME:-isucari}
export MYSQL_PWD=${MYSQL_PASS:-isucari}
export LANG="C.UTF-8"

cat 0_create_passwords.sql | mysql --defaults-file=/dev/null -h $MYSQL_HOST -P $MYSQL_PORT -u $MYSQL_USER $MYSQL_DBNAME
