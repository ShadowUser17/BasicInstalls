#### Add repository:
```bash
flatpak remote-add --if-not-exists <repo_name> <repo_url>
```

#### List repositories:
```bash
flatpak remotes
```

#### Delete repository:
```bash
flatpak remote-delete <repo_name>
```

#### Install app:
```bash
flatpak install <repo_name> <app_id>
```

#### List apps:
```bash
flatpak list
```

#### Run app:
```bash
flatpak run <app_id>
```

#### List processes:
```bash
flatpak ps
```

#### Kill app:
```bash
flatpak kill <app_id>
```

#### Delete app:
```bash
flatpak uninstall <app_id>
```

#### Delete old components:
```bash
flatpak uninstall --unused
```
