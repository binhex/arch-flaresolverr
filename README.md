**Application**

[Flaresolverr](https://github.com/FlareSolverr/FlareSolverr)

**Description**

FlareSolverr starts a proxy server, and it waits for user requests in an idle state using few resources. When some request arrives, it uses Selenium with the undetected-chromedriver to create a web browser (Chrome). It opens the URL with user parameters and waits until the Cloudflare challenge is solved (or timeout). The HTML code and the cookies are sent back to the user, and those cookies can be used to bypass Cloudflare using other HTTP clients.

**Build notes**

Latest stable Flaresolverr release from Arch Linux AUR.

**Usage**

```bash
docker run -d \
    -p 8191:8191 \
    --name=<container name> \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-flaresolverr
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:8191`

**Example**

```bash
docker run -d \
    -p 8191:8191 \
    --name=flaresolverr \
    -v /apps/docker/flaresolverr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-flaresolverr
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```text
id <username>
```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.lime-technology.com/topic/61433-support-binhex-flaresolverr/)