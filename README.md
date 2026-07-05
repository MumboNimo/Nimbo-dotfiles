# Dotfiles

Konfigurasi personal untuk:
- **Kitty** (terminal emulator)
- **Neovim** (dengan NvChad)
- **Fish** (shell)
- **Starship** (prompt)

---

## Requirement

Pastikan aplikasi berikut sudah terinstal di sistem sebelum memasang dotfiles ini:

- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Neovim](https://neovim.io/) (versi terbaru direkomendasikan)
- [Fish shell](https://fishshell.com/)
- [Starship](https://starship.rs/)
- [Nerd Font](https://www.nerdfonts.com/) — dibutuhkan untuk ikon di prompt dan dashboard (contoh: JetBrainsMono Nerd Font)
- Git

Catatan: versi minimum masing-masing aplikasi tidak dicantumkan di sini karena belum diverifikasi. Sebaiknya gunakan versi stabil terbaru dari masing-masing aplikasi.

---

## Instalasi

### 1. Clone repo ini

```bash
git clone https://github.com/USERNAME/dotfiles.git ~/dotfiles
```

Ganti `USERNAME` dengan username GitHub Anda.

### 2. Backup config lama (jika ada)

Jika Anda sudah punya config sebelumnya di `~/.config`, backup dulu supaya tidak tertimpa:

```bash
mv ~/.config/kitty ~/.config/kitty.backup 2>/dev/null
mv ~/.config/nvim ~/.config/nvim.backup 2>/dev/null
mv ~/.config/fish ~/.config/fish.backup 2>/dev/null
mv ~/.config/starship.toml ~/.config/starship.toml.backup 2>/dev/null
```

(Bagian `2>/dev/null` hanya untuk menyembunyikan pesan error kalau memang belum ada config sebelumnya — aman diabaikan.)

### 3. Buat symlink

```bash
ln -s ~/dotfiles/kitty ~/.config/kitty
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/fish ~/.config/fish
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
```

### 4. Verifikasi symlink terpasang benar

```bash
ls -la ~/.config | grep -E "kitty|nvim|fish|starship"
```

Pastikan setiap baris menunjukkan tanda panah (`->`) mengarah ke folder di dalam `~/dotfiles`.

### 5. Restart terminal

Tutup dan buka ulang Kitty, atau jalankan:

```bash
exec fish
```

---

## Update Konfigurasi

Karena `~/.config/...` adalah symlink ke `~/dotfiles`, edit file seperti biasa di `~/.config`, lalu commit dan push dari folder dotfiles:

```bash
cd ~/dotfiles
git add .
git commit -m "pesan perubahan"
git push
```

Untuk mengambil update terbaru dari repo (misalnya di mesin lain):

```bash
cd ~/dotfiles
git pull
```

Karena semua sudah tersambung via symlink, perubahan otomatis langsung berlaku tanpa perlu copy file manual.

---

## Struktur Folder

```
dotfiles/
├── kitty/
│   └── kitty.conf
├── nvim/
│   ├── init.lua
│   └── lua/
├── fish/
│   └── config.fish
├── starship/
│   └── starship.toml
└── README.md
```

---

## Uninstall / Kembali ke Config Biasa

Jika ingin berhenti memakai dotfiles ini dan kembali ke config mandiri (bukan symlink):

```bash
rm ~/.config/kitty ~/.config/nvim ~/.config/fish ~/.config/starship.toml
mv ~/.config/kitty.backup ~/.config/kitty
mv ~/.config/nvim.backup ~/.config/nvim
mv ~/.config/fish.backup ~/.config/fish
mv ~/.config/starship.toml.backup ~/.config/starship.toml
```

(Hanya berlaku jika Anda melakukan backup di langkah instalasi nomor 2.)

---

## Catatan

- Dotfiles ini dikelola lewat symlink manual, bukan tool seperti GNU Stow — jadi setiap folder di-link satu per satu sesuai daftar di atas.
- Belum ada skrip `install.sh` otomatis di repo ini per saat ini. Jika ditambahkan nanti, bagian instalasi manual di atas bisa digantikan dengan satu perintah skrip.
