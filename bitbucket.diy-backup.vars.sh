INSTANCE_NAME=${INSTANCE_NAME:-"bitbucket"}
BITBUCKET_URL=${BITBUCKET_URL:-"http://localhost:7990"}
BITBUCKET_HOME=${BITBUCKET_HOME:-"/var/atlassian/application-data/bitbucket/"}
BITBUCKET_UID=${BITBUCKET_UID:-"atlbitbucket"}
BITBUCKET_GID=${BITBUCKET_GID:-"atlbitbucket"}
BACKUP_HOME_TYPE=${BACKUP_HOME_TYPE:-"rsync"}
BACKUP_DATABASE_TYPE=${BACKUP_DATABASE_TYPE:-"postgresql"}
BACKUP_ARCHIVE_TYPE=${BACKUP_ARCHIVE_TYPE:-"tar"}
BACKUP_ELASTICSEARCH_TYPE=${BACKUP_ELASTICSEARCH_TYPE:-""}
STANDBY_HOME_TYPE=${STANDBY_HOME_TYPE:-"none"}
STANDBY_DATABASE_TYPE=${STANDBY_DATABASE_TYPE:-"postgresql"}
BITBUCKET_BACKUP_USER=${BITBUCKET_BACKUP_USER:-""}
BITBUCKET_BACKUP_PASS=${BITBUCKET_BACKUP_PASS:-""}
BITBUCKET_BACKUP_EXCLUDE_REPOS=${BITBUCKET_BACKUP_EXCLUDE_REPOS:-"()"}
BITBUCKET_DB=${BITBUCKET_DB:-"bitbucket"}
POSTGRES_HOST=${POSTGRES_HOST:-""}
POSTGRES_USERNAME=${POSTGRES_USERNAME:-""}
export PGPASSWORD=${PGPASSWORD:-""}
POSTGRES_PORT=${POSTGRES_PORT:-"5432"}
STANDBY_DATABASE_DATA_DIR=${STANDBY_DATABASE_DATA_DIR:-"/var/lib/pgsql${psql_major}/data"}
STANDBY_DATABASE_SERVICE_USER=${STANDBY_DATABASE_SERVICE_USER:-"postgres"}
STANDBY_DATABASE_REPLICATION_SLOT_NAME=${STANDBY_DATABASE_REPLICATION_SLOT_NAME:-"bitbucket"}
STANDBY_DATABASE_REPLICATION_USER_USERNAME=${STANDBY_DATABASE_REPLICATION_USER_USERNAME:-""}
STANDBY_DATABASE_REPLICATION_USER_PASSWORD=${STANDBY_DATABASE_REPLICATION_USER_PASSWORD:-""}
STANDBY_DATABASE_SERVICE_NAME=${STANDBY_DATABASE_SERVICE_NAME:-"postgresql${psql_major}"}
BITBUCKET_BACKUP_ROOT=${BITBUCKET_BACKUP_ROOT:-""}
BITBUCKET_BACKUP_DB=${BITBUCKET_BACKUP_DB:-"${BITBUCKET_BACKUP_ROOT}/bitbucket-db/"}
BITBUCKET_BACKUP_HOME=${BITBUCKET_BACKUP_HOME:-"${BITBUCKET_BACKUP_ROOT}/bitbucket-home/"}
BITBUCKET_BACKUP_ARCHIVE_ROOT=${BITBUCKET_BACKUP_ARCHIVE_ROOT:-""}
BITBUCKET_BACKUP_GPG_RECIPIENT=${BITBUCKET_BACKUP_GPG_RECIPIENT:-""}
CURL_OPTIONS=${CURL_OPTIONS:-"-L -s -f"}
BITBUCKET_VERBOSE_BACKUP=${BITBUCKET_VERBOSE_BACKUP:-true}
KEEP_BACKUPS=${KEEP_BACKUPS:-"0"}
ELASTICSEARCH_INDEX_NAME=${ELASTICSEARCH_INDEX_NAME:-"bitbucket-search-v1"}
ELASTICSEARCH_HOST=${ELASTICSEARCH_HOST:-"localhost:7992"}
ELASTICSEARCH_REPOSITORY_NAME=${ELASTICSEARCH_REPOSITORY_NAME:-"bitbucket-snapshots"}
ELASTICSEARCH_REPOSITORY_LOCATION=${ELASTICSEARCH_REPOSITORY_LOCATION:-""}
ELASTICSEARCH_USERNAME=${ELASTICSEARCH_USERNAME:-""}
ELASTICSEARCH_PASSWORD=${ELASTICSEARCH_PASSWORD:-""}
STANDBY_JDBC_URL=${STANDBY_JDBC_URL:-""}
