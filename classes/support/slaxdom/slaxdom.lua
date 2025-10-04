--[[============================================================================
slaxdom.lua
============================================================================]]--
--[[

Wrapper for SLAXML parser to provide slaxdom interface
This file provides the missing slaxdom.lua that cParseXML.lua expects

]]--

-- Load the actual SLAXML implementation
local separator = package.config:sub(1,1)  -- Gets \ for Windows, / for Unix
local vlibroot = _vlibroot or "classes/"
local slaxml_path = vlibroot.."support"..separator.."slaxdom"..separator.."slaxml.lua"
local SLAXML = dofile(slaxml_path)

-- Export SLAXML as the global variable that slaxdom.lua should provide
return SLAXML
