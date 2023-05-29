# NvChad

Custom lua files for NvChad. Pulled when Docker container is created for NvChad IDE.

Instructions:

1. Create an .env file with perms 770
2. Add the following information:

```
FULL_NAME=""
E_MAIL=""
USER=
USER_ID=
GROUP_ID=
```

3. Add the volumes you want to mount to docker-compose.yml
4. Run `docker compose up -d`
5. Run `docker exec -it nvchad_dev zsh` to attach to the container
