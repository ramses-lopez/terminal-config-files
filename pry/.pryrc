puts 'Loading config from ~/.pryrc'
Pry.config.editor = "vim"

puts 'Some more tips > https://pragmaticstudio.com/tutorials/rails-console-shortcuts-tips-tricks'

def r!
  reload!
end

# Load scratchpad for omx 
if defined?(Omx)
	def omx
		Company.find_by slug: 'omx'
	end

	def intldef
		Company.find_by slug: 'intldef'
	end

  def ramses
    User.find_by email: 'ramses@theomx.com'
  end
end 
