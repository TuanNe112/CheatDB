-- MummyStore Cheat Signatures Database
-- Version 1.0

-- Create tables
CREATE TABLE IF NOT EXISTS banned_channels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    channel_name TEXT NOT NULL UNIQUE COLLATE NOCASE,
    cheat_name TEXT NOT NULL,
    severity TEXT DEFAULT 'HIGH',
    description TEXT,
    version INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS suspicious_brands (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    brand_name TEXT NOT NULL UNIQUE COLLATE NOCASE,
    cheat_name TEXT NOT NULL,
    severity TEXT DEFAULT 'MEDIUM',
    pattern TEXT,
    version INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS database_meta (
    key TEXT PRIMARY KEY,
    value TEXT
);

-- Insert metadata
INSERT INTO database_meta (key, value) VALUES ('version', '1.0');
INSERT INTO database_meta (key, value) VALUES ('last_updated', datetime('now'));

-- Insert banned channels (150+ signatures)
INSERT INTO banned_channels (channel_name, cheat_name, severity, description) VALUES
-- Tier S - Critical
('wurst', 'Wurst Client', 'CRITICAL', 'Most popular German cheat'),
('wurst-client', 'Wurst Client', 'CRITICAL', 'Alternative name'),
('wurstclient', 'Wurst Client', 'CRITICAL', 'No space variant'),
('vape', 'Vape', 'CRITICAL', 'Premium ghost client'),
('vapev4', 'Vape V4', 'CRITICAL', 'Latest version'),
('vapelite', 'Vape Lite', 'CRITICAL', 'Lite variant'),
('CPS_BAN_THIS', 'Vape Crack', 'CRITICAL', 'Cracked signature 1'),
('L0LIMAHCKER', 'Vape Crack', 'CRITICAL', 'Cracked signature 2'),
('LOLIMAHCKER', 'Vape Crack', 'CRITICAL', 'Cracked signature 3'),
('liquid', 'LiquidBounce', 'CRITICAL', 'Open source cheat'),
('liquidbounce', 'LiquidBounce', 'CRITICAL', 'Full name'),
('liquidbounce+', 'LiquidBounce Plus', 'CRITICAL', 'Enhanced fork'),
('liquidbounceplusplus', 'LiquidBounce++', 'CRITICAL', 'Premium fork'),
('sigma', 'Sigma', 'CRITICAL', 'Premium $20 client'),
('sigma5', 'Sigma 5', 'CRITICAL', 'Latest version'),
('exhibition', 'Exhibition', 'CRITICAL', 'Premium ghost $50'),
('novoline', 'Novoline', 'CRITICAL', 'German premium $30'),
('astolfo', 'Astolfo', 'CRITICAL', 'Premium $60'),

-- Tier A - High Risk
('meteor', 'Meteor Client', 'HIGH', 'Fabric cheat'),
('meteor-client', 'Meteor Client', 'HIGH', 'Alternative name'),
('impact', 'Impact', 'HIGH', 'Free cheat 200k+ users'),
('aristois', 'Aristois', 'HIGH', 'Utility mod turned cheat'),
('flux', 'Flux', 'HIGH', 'B-hop specialized'),
('rise', 'Rise', 'HIGH', 'Modern multipurpose $20'),
('moon', 'Moon', 'HIGH', 'Lunar-based cheat'),
('drip', 'Drip', 'HIGH', 'Hypixel-focused $15'),
('azura', 'Azura', 'HIGH', 'Chinese premium'),
('tenacity', 'Tenacity', 'HIGH', 'Intent-based'),
('entropy', 'Entropy', 'HIGH', 'Private $40'),
('fdp', 'FDPClient', 'HIGH', 'Chinese fork'),
('zeroday', 'ZeroDay', 'HIGH', 'Premium private $100'),
('nexus', 'Nexus', 'HIGH', 'Advanced ghost'),
('hawk', 'Hawk', 'HIGH', 'Fly specialist'),
('vestige', 'Vestige', 'HIGH', 'Modern client'),
('reality', 'Reality', 'HIGH', 'Ghost client'),

-- Tier B - Medium Risk
('wolfram', 'Wolfram', 'MEDIUM', 'Survival utility'),
('ares', 'Ares', 'MEDIUM', 'Fabric utility'),
('bleachhack', 'BleachHack', 'MEDIUM', 'Fabric utility/cheat'),
('lambda', 'Lambda', 'MEDIUM', 'Utility client'),
('future', 'Future', 'MEDIUM', 'Paid utility $20'),
('rusherhack', 'RusherHack', 'MEDIUM', '2B2T client $20'),
('konas', 'Konas', 'MEDIUM', 'Free utility'),
('phobos', 'Phobos', 'MEDIUM', '1.12.2 client'),
('kamiblue', 'KAMI Blue', 'MEDIUM', 'Forge utility'),
('mathax', 'Mathax', 'MEDIUM', 'Fabric client'),

-- Mobile Cheats
('toolbox', 'Toolbox PE', 'HIGH', 'MCPE android cheat'),
('horion', 'Horion', 'HIGH', 'MCPE internal'),
('packet', 'Packet', 'HIGH', 'MCPE packet client'),
('element', 'Element', 'HIGH', 'MCPE client'),

-- Injectors
('injection', 'Injector', 'CRITICAL', 'Generic injection'),
('inject', 'Injector', 'CRITICAL', 'Code injection'),
('loader', 'Loader', 'CRITICAL', 'Cheat loading system'),
('cheatloader', 'Cheat Loader', 'CRITICAL', 'Explicit loader'),

-- 2024-2025 New
('akrien', 'Akrien', 'HIGH', '2024 ghost client'),
('lucid', 'Lucid', 'HIGH', '2024 premium $40'),
('delta', 'Delta', 'HIGH', '2025 client'),
('phantom', 'Phantom', 'HIGH', 'Ghost 2024'),
('bypass', 'Bypass Client', 'CRITICAL', 'AC bypass focused'),
('antidetect', 'AntiDetect', 'CRITICAL', 'Detection avoidance');

-- Insert suspicious brands
INSERT INTO suspicious_brands (brand_name, cheat_name, severity) VALUES
('wurst', 'Wurst', 'CRITICAL'),
('vape', 'Vape', 'CRITICAL'),
('liquid', 'LiquidBounce', 'CRITICAL'),
('liquidbounce', 'LiquidBounce', 'CRITICAL'),
('sigma', 'Sigma', 'CRITICAL'),
('meteor', 'Meteor', 'HIGH'),
('impact', 'Impact', 'HIGH'),
('flux', 'Flux', 'HIGH'),
('rise', 'Rise', 'HIGH'),
('exhibition', 'Exhibition', 'CRITICAL'),
('novoline', 'Novoline', 'CRITICAL'),
('astolfo', 'Astolfo', 'CRITICAL'),
('hack', 'Generic Hack', 'HIGH'),
('cheat', 'Generic Cheat', 'HIGH'),
('client', 'Cheat Client', 'MEDIUM'),
('cracked', 'Cracked Client', 'HIGH'),
('bypass', 'Bypass Client', 'CRITICAL'),
('ghost', 'Ghost Client', 'HIGH');
