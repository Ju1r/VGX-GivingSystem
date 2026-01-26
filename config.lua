Config = {}

-- [ Localization & Aesthetics | اللغة والجماليات ]
Config.Locale = 'ar' -- Supported options: 'en' (English), 'ar' (Arabic)
Config.UiColor = "#4cb39cff" -- Accent color for the UI (RGB/HEX) | لون الواجهة الرئيسي

-- [ Framework & Inventory Configuration | إعدادات الفريمورك والحقيبة ]
Config.Core = "qb-core" -- Your core resource name (e.g., qb-core) | اسم ملف الكور الخاص بك

-- English: Base path used to load item icons from the inventory resource
-- المسار الأساسي المستخدم لعرض صور الأغراض من سكربت الإنفنتوري
Config.inventory = "nui://qb-inventory/html/images/"


-- [ Identification System | نظام التعرف ]
-- 'license'   : Uses FiveM license to identify and save admin permissions. | التعرف عن طريق رخصة فايف إم
-- 'citizenid' : Uses QBCore CitizenID to identify and save admin permissions. | التعرف عن طريق كود المواطن
Config.System = "citizenid" 

-- [ Access Control | التحكم في الوصول ]
-- Define which QBCore permission levels can access the Permissions Management tab.
-- تحديد الرتب التي يمكنها الوصول للوحة الصلاحيات
-- Example: {'god', 'admin'}
Config.PermissionManagers = {'god'}

-- [ Navigation & Interaction | التنقل والتفاعل ]
Config.EnableKeybind = true -- Enable/Disable opening panel with keybind | تفعيل/تعطيل فتح اللوحة عن طريق زر
Config.Keybind = 'F6' -- Default key to toggle the Admin System | الزر الافتراضي لفتح نظام الإدارة

-- [ Giveaway Restrictions (Security) | قيود التوزيع (الأمان) ]

-- Item Blacklist: Prevent specific items from being given via the panel.
-- قائمة العناصر المحظورة: منع توزيع عناصر محددة
Config.UseItemBlacklist = false
Config.BlacklistItems = {
    'weapon_stickybomb', 
    'weapon_rpg'
}

-- Vehicle Blacklist: Prevent specific categories or models from being given.
-- قائمة المركبات المحظورة: منع توزيع فئات أو موديلات محددة
Config.UseVehicleBlacklist = false
Config.blacklistcategory = {
    'ethshop' -- Blacklist an entire vehicle category (e.g., 'vip', 'donator') | حظر فئة كاملة من المركبات
}
Config.BlacklistVehicles = {
    'skyline', 
    'sultan'
}

-- [ Audit & Logging | السجلات والتدقيق ]
-- Set to true and provide Discord Webhook URLs below to log all administrative actions.
-- قم بتفعيلها وضع روابط ويب هوك ديسكورد لتسجيل جميع الإجراءات
Config.EnableLogs = false 
Config.webhookLogs = {
  ["GIVECAR"]     = "", -- Webhook for Give Car actions | سجل توزيع المركبات
  ["GIVEITEM"]    = "", -- Webhook for Give Item actions | سجل توزيع العناصر
  ["GIVEMONEY"]   = "", -- Webhook for Give Money actions | سجل توزيع الأموال
  ["SETPERMS"]    = "", -- Webhook for Assigning/Editing Admin Permissions | سجل تعيين وتعديل صلاحيات الإدارة
  ["DELETEADMIN"] = "", -- Webhook for Removing Admin Permissions | سجل حذف صلاحيات الإدارة
}

