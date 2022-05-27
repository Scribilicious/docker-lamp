# docker-lamp

Original a fork of [jcavat](https://github.com/jcavat/docker-lamp).

Docker example with Apache, MariaDB 10.3, PhpMyAdmin and PHP 8.0

I use docker-compose as an orchestrator. To run these containers:

```
docker-compose up -d
```

If you wan't to rebuild all Images use:

```
docker-compose up -d --build
```

Or just use:

```
bash build.sh
```

and

```
bash start.sh
```

Open phpmyadmin at [http://localhost:8000](http://localhost:8000)

No Server is needed, just the login + password. In our case root, root.

Open web browser to look at a simple php example at [http://localhost/](http://localhost/)

Run mysql client:

```
docker-compose exec db mysql -u root -p
```

Enjoy !
