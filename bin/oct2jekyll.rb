require 'fileutils'
src = 'source'
dest = 'jekyll'

Dir.glob("#{src}/**/index.markdown").each do |f|
  new_file = f.sub(src,dest).sub("/index.markdown",'.md')
  d = File.dirname(new_file)
  FileUtils.mkdir_p(d) unless File.exist? d
#   puts new_file
  FileUtils.mv(f,new_file)
end