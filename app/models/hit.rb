# encoding: utf-8
class Hit
	include Mongoid::Document
	include Mongoid::Timestamps::Created
  include HashableDocument

	# Index the created_at field for sorting
	index({ created_at: 1 })
		
	# IP Address
	field :ip, type: String
	
	# Index the IP field for easy lookup
	index({ ip: 1 })
	
	# X-Forwarded-For or Via header
	field :via, type: String
	
	# Do not track header
	field :dnt, type: String
		
	# User-Agent
	field :ua, type: String
	
	# Operating System Name (Windows | Linux | Mac OS X)
	field :os, type: String
	
	# Operating System Version (2008 | 2.6.24)
	field :os_v, type: String
	
	# Operating System Flavor (Home Edition | Ubuntu)
	field :os_f, type: String
	
	# Operating System Language (en-US)
	field :os_l, type: String

	# Operating System Architecture (x86, x86_64, ppc)
	field :os_a, type: String
		
	# Browser Name (Firefox, IE, Chrome)
	field :br, type: String

	# Browser Version (11, 10, 9)
	field :br_v, type: String

	# Unique Feed ID
	field :fid, type: String
	index({ fid: 1 })

	# Referrer
	field :rf, type: String
	
	# Country Code
	field :country, type: String

	# Add-ons/Plugins version information 
	# Adobe Reader
	field :ao_reader, type: String

	# Flash Player
	field :ao_flash, type: String

	# QuickTime
	field :ao_qt, type: String

	# Java Runtime
	field :ao_java, type: String

	# Silverlight
	field :ao_silver, type: String

	# DevalVR
	field :ao_dvr, type: String

	# Real Player
	field :ao_rp, type: String

	# Shockwave
	field :ao_shock, type: String

	# Windows Media Player
	field :ao_wmp, type: String

	# VLC Player
	field :ao_vlc, type: String
end
