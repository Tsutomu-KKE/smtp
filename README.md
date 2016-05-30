SMTP Server
======

clone & modify of https://hub.docker.com/r/namshi/smtp/

docker run -itd tsutomu7/smtp

```python3
import smtplib
from email.mime.text import MIMEText
from email.header import Header
from email.utils import formatdate

charset = 'ISO-2022-JP'
msg = MIMEText('ƒTƒ“ƒvƒ‹', 'plain', charset)
msg['Subject'] = Header('Œ–¼', charset)
msg['From'] = 'xxx@xxx.com'
msg['To'] = 'xxx@xxx.com'
msg['Date'] = formatdate()
with smtplib.SMTP('172.17.0.2') as smtp:
    smtp.sendmail(msg['From'], [msg['To']], msg.as_string())
```
