# linux-desktop

This repository contains CannaCardo's
configuration for his daily driver.

Forked off from [joshrosso](https://twitter.com/joshrosso).

## Commands

To update this repo's contents based on the local system, run:

```
make update
```

Install all packages (via AUR & official repos):

```
make install-packages
```

To configure the machine:

```
make configure
```

st compilation/install:

```
sudo make install-term
```

### Runtime details

This section contains notes about ensuring specific applications run well.

## Making Grub Font Readable

To set a custom font and size, create a grub-compatible font.

```
grub-mkfont -s 60 -o /boot/grubfont.pf2 /usr/share/fonts/TTF/Hack-Regular.ttf
```

Then add the following in `/etc/default/grub`.

```
GRUB_FONT="/boot/grubfont.pf2"
```

Regenerate the grub config.

```
grub-mkconfig -o /boot/grub/grub.cfg
```
