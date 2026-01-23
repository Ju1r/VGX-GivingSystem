# VGX Admin System 🛡️

A premium, modern, and highly-optimized Admin Management & Giveaway System for QBCore frameworks. Designed with a focus on UX/UI excellence, featuring full (Arabic) support and a sleek, dynamic interface.

![Version](https://img.shields.io/badge/version-1.1.0-blue.svg)
![Framework](https://img.shields.io/badge/framework-QBCore-green.svg)
![Language](https://img.shields.io/badge/support-English%20%2F%20Arabic-orange.svg)

## ✨ Features

- 💎 **Modern Bento-Style UI**: A clean, responsive dashboard using CSS Grid and Flexbox.
- 🌍 **Full RTL Support**: Native Arabic translation and layout mirroring for an intuitive experience.
- 🎭 **Dynamic Backgrounds**: Staggered bento icons with smooth floating hover animations.
- 🔊 **Auditory Feedback**: Integrated sound effects for notifications and UI interactions.
- 🚗 **Vehicle Management**: Search and spawn vehicles directly into a player's garage.
- 📦 **Inventory Integration**: Browse registered items and give them to players with a click.
- 💰 **Financial Controls**: Transfer cash or bank money with custom dropdown selection.
- 💂 **Permission Management**: Manage administrator ranks and permissions via a dedicated in-game interface.
- 🆔 **Dual ID Support**: Switch between `license` or `citizenid` for player identification.
- 📜 **Audit Logging**: Comprehensive Discord Webhook integration for every administrative action.
- 🛡️ **Security Rules**: Built-in blacklisting for sensitive items and vehicle categories.

## 🛠️ Installation

1. **Download & Extract**: Place the `VGX-Adminsystem` folder into your server's `resources` directory.
2. **Database Setup**: Import the provided SQL code into your database to create the required tables.
3. **Configuration**: Edit `config.lua` to match your core name, inventory, and preferred language.
4. **Start Resource**: Add `ensure VGX-Adminsystem` to your `server.cfg`.

## ⚙️ Configuration

The `config.lua` file allows for extensive customization:

```lua
-- Change Locale (en / ar)
Config.Locale = 'en'

-- Identify admins by FiveM license or QBCore citizenid
Config.System = "license" 

-- Customize UI Accent Color
Config.UiColor = "#4cb39cff"

-- Restrict sensitive assets
Config.UseItemBlacklist = true
Config.BlacklistItems = {'water_bottle', 'bandage'}
```

## ⌨️ Controls

- **Default Key**: `F6` (Changeable in `config.lua`)
- **Navigation**: Click bento cards to open tabs; use `Escape` to go back to the dashboard or close the UI.

## 📁 Database Schema

Ensure you have the following table in your database:

```sql
CREATE TABLE IF NOT EXISTS `vgx_admin_permissions` (
  `playername` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) NOT NULL,
  `license` varchar(50) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `granted_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

---

*Developed with ❤️ by VGX Development Team*
