puts 'Loading config from ~/.pryrc'
Pry.config.editor = "vim"

puts 'Some more tips > https://pragmaticstudio.com/tutorials/rails-console-shortcuts-tips-tricks'

def r!
  reload!
end

def create_fixture_from(model)
  model_name = model.class.name.pluralize.underscore
  filename = "#{Rails.root}/test/fixtures/#{model_name}_#{model.id}.yml"
  File.open(filename, 'w') do |file|
    file.write model.attributes.except(:id, :created_at, :updated_at).to_yaml
  end
  puts "#{filename} written"
end

# Load scratchpad for omx
if defined?(Omx)
  # initialize the db connection
  User.count
  Integration::CountryRiskRating.count rescue puts "Integration database not reachable"

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
