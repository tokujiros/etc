DIR     = File.dirname(__FILE__)
EXCLUDE = %w[ .+~ \. \.\. \.git \.gitignore ]
DOTS    = Dir.glob("#{DIR}/.*").select{|s| !EXCLUDE.map{|e| s =~ /^#{DIR}\/#{e}$/}.any?}


exit if Dir.pwd == DIR


DOTS.each do |path|
  cmd = "ln -sf #{path} ."
  puts cmd
  `#{cmd}`
end
