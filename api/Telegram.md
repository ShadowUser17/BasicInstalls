#### Get chat ID:
```bash
curl "https://api.telegram.org/bot${TELEGRAM_API_TOKEN}/getUpdates"
```

#### Send message:
```bash
curl -d 'chat_id=<id>&text=<message>' "https://api.telegram.org/bot${TELEGRAM_API_TOKEN}/sendMessage"
```
