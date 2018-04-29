# GMP API

## Deploying

This application will automatically deploy when merged to master branch and CI is passing. If there are any pending migrations you will want to initiate the following commands via GCloud's CLI.

First take a look at these docs [Using Cloud SQL for PostgreSQL with Rails 5  |  Ruby       |  Google Cloud](https://cloud.google.com/ruby/rails/using-cloudsql-postgres#set_up_cloud_sql_for_postgresql) for more information about settings and migrations after deploy.

After deploying the application and following the link above to add the  App Engine gem and run:

```bash
$ bundle exec rake appengine:exec -- bundle exec rake db:create # only run if it's the inital deploy
$ bundle exec rake appengine:exec -- bundle exec rake db:migrate
```

To launch the application:

```bash
$ gcloud app browse
```

## SSH

To SSH into application:

[Obtain a the GCloud SSH command here](https://console.cloud.google.com/appengine/instances)

_This requires that you are and authorized user for this project._

From here you can view the various instances running via:

```bash
$ sudo docker ps
```

Once you have the container ID you can run:

```bash
$ sudo docker logs [CONTAINER-ID]
```

Or start a shell in the container that is running your code:

```bash
$ docker exec -it [CONTAINER-ID] /bin/bash
```
