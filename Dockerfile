FROM ubuntu:xenial

MAINTAINER akelmaister@outlook.com

ADD https://bitbucket.org/atlassianlabs/atlassian-bitbucket-diy-backup/get/36d1aca96970.zip /tmp/files.zip
COPY bitbucket.diy-backup.vars.sh /tmp/

ENV BITBUCKET_BACKUP_HOME=/app/atlassian/bitbucket/backup
ENV BITBUCKET_BACKUP_LOG=${BITBUCKET_BACKUP_HOME}/log/bitbucket-backup.log

RUN     ( \
                export DEBIAN_FRONTEND=noninteractive; \
                export BUILD_DEPS="patch unzip"; \
                export APP_DEPS="tar mysql-client jq rsync bash curl cron sudo ca-certificates postgresql-client"; \

                apt-get update; \
                apt-get upgrade -y; \
                apt-get install --no-install-recommends -y $BUILD_DEPS $APP_DEPS ; \

                mkdir -p ${BITBUCKET_BACKUP_HOME} ; \
                cd ${BITBUCKET_BACKUP_HOME} ; \

                mkdir -p log bin archives tmp tmp/bitbucket-db tmp/bitbucket-home /var/atlassian/application-data/bitbucket ; \
                touch ${BITBUCKET_BACKUP_LOG} ; \

                unzip -j -d bin /tmp/files.zip ; \
                mv /tmp/bitbucket.diy-backup.vars.sh bin/ ; \

                apt-get remove -y $BUILD_DEPS ; \
                apt-get autoremove -y ; \
                apt-get clean; \
                rm -rf /var/lib/{apt,dpkg,cache,log}/; \
        )

WORKDIR ${BITBUCKET_BACKUP_HOME}

VOLUME ["${BITBUCKET_BACKUP_HOME}/archives", "${BITBUCKET_BACKUP_HOME}/log", "/var/atlassian/application-data/bitbucket"]

USER ${BITBUCKET_USER}

ENTRYPOINT ["bin/bitbucket.diy-backup.sh"]
