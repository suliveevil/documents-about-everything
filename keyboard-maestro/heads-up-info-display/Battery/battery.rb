#!/usr/bin/env ruby
# encoding utf-8

status = Hash.new()
outputHTML = ARGV.include?("-H")
batteryFound = false

input = `pmset -g batt`
#input = "Now drawing from 'AC Power'" # this is what pmset returns on desktop Macs
lines = input.split("\n")

lines.each do |arg|
  if arg.start_with? "Now drawing"
    if arg.include? "AC Power"
      status[:source] = "AC"

    elsif arg.include? "Battery Power"
      status[:source] = "battery"

    else
      status[:source] = "unknown"

    end
  elsif arg.start_with? " -InternalBattery"
  	batteryFound = true
	# -InternalBattery-0	100%; discharging; 10:40 remaining present: true
    split = arg.match(/(\d{1,3})%;\s(.*);\s(\d+:\d{2}|\(no estimate\))/)

	if split != nil
		status[:amount] = split[1]
		status[:charged] = split[2] === "charged" ? true : false
		status[:remaining] = split[3]
    end
  end
end

#status[:source] = "battery"
#status[:amount] = "72"
#status[:charged] = false
#status[:remaining] = "5:25"

source_class = status[:source].downcase
output = ""

if batteryFound
	if outputHTML
		svg_partial_filename = "100"
	
		if status[:source] === "AC"
			if status[:charged]
				svg_partial_filename = "plugged"
			else
				svg_partial_filename = "charging"
			end
		else
			# Find suitable icon for power level.
			svg_partial_filename = case Integer(status[:amount])
			when 76..100
				"100"
			when 51..75
				"75"
			when 26..50
				"50"
			when 1..25
				"25"
			else
				"0"
			end
		end
	
		# Load file
		base_path = File.expand_path(File.dirname(__FILE__))
		file_path = "#{base_path}/battery-icons-svg/battery-#{svg_partial_filename}.svg"
		file_raw_contents = ""
		File.open(file_path, 'r') do |the_file|
			while line = the_file.gets
				file_raw_contents += line;
			end
		end
	
		status_class = "status-#{svg_partial_filename}"
		output += <<END
<div class="power #{source_class} #{status_class}">
<div class="source #{source_class}">#{status[:source]}</div>
<div class="icon #{source_class} #{status_class}">#{file_raw_contents}</div>
<div class="amount #{source_class}">#{status[:amount]}%</div>
<div class="charged #{source_class}">#{status[:charged]}</div>
<div class="remaining #{source_class}">#{status[:remaining]}</div>
END
	end

	if outputHTML
		output += "<div class=\"overview\">Running on <span class=\"source #{source_class}\">#{status[:source]}</span> with "
	else
		output += "Running on #{status[:source]} with "
	end

	if status[:charged]
	  output += "a full charge"
	else
		if outputHTML
			output += "<span class=\"amount #{source_class}\">#{status[:amount]}%</span> left and <span class=\"remaining #{source_class}\">#{status[:remaining]}</span> until "
		else
			output += "#{status[:amount]}% left and #{status[:remaining]} until "
		end
		if status[:source] === "battery"
		  output += "empty"
		elsif status[:source] === "AC" && !status[:charged]
		  output += "full"
		end
	end
else
	if outputHTML
		status_class = "status-plugged no-battery"
		output += <<END
<div class="power #{source_class} #{status_class}">
<div class="source #{source_class}">#{status[:source]}</div>
<div class="icon #{source_class} #{status_class}"></div>
<div class="amount #{source_class}"></div>
<div class="charged #{source_class}"></div>
<div class="remaining #{source_class}"></div>
END
		output += "<div class=\"overview\">Running on <span class=\"source #{source_class}\">#{status[:source]}</span>"
	else
		output += "Running on #{status[:source]}"
	end
end

if outputHTML
	output += "</div></div>"
end

puts output
