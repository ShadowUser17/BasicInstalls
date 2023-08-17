#### Install and configure an environment:
```bash
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh" | bash
```
```bash
nvm install 18 && nvm use 18
```

#### Create new project:
- Create `package.json`:
```bash
npm init
```
- Create `tsconfig.json`:
```bash
tsc --init
```

#### Clean npm cache:
```bash
npm cache clean --force
```

#### Validate npm cache:
```bash
npm cache verify
```
