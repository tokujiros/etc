EXCLUDE = %w[ .+~ \. \.\. \.git \.gitignore ]
DOTS    = Dir.glob(".*").select{|s| !EXCLUDE.map{|e| s =~ /^#{e}$/}.any?}


def link_path (path)
  "../#{path}"
end


task :default => DOTS.map{|s| link_path s}

DOTS.each do |path|
  linkpath = link_path(path)
  file linkpath => [path] do
    sh %( ln -s #{path} #{linkpath}  )
  end
end
